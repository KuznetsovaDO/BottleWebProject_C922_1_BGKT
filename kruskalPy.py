from bottle import route, view, request, template
from array import *
from datetime import datetime

@route('/kruskalRez', method='post')
def kruskal_yu():
    # получение данных с формы
    weight_ = request.forms.getall('ribWeight')
    start_ = request.forms.getall('startingVertex')
    final_ = request.forms.getall('finalVertex')
    size_ = len(weight_)
    vert_ = request.forms.get('el1', type=int)
    errors = ""
    # проверка на связанность графа
    if not(str(vert_) in start_):
        if not(str(vert_) in final_):
            errors = "graf ne svyazan"
    # проверка на наличие петель в графе
    for i in range(size_):
        if (int(start_[i]) == int(final_[i])):
            errors = "vvedite znachenya bez petel'"
    # проверка на наличие повторяющихся ребер
    for i in range(size_):
        for j in range(size_):
            duo11 = start_[i] + final_[i]
            duo12 =  final_[i] + start_[i]
            duo21 = start_[j] + final_[j]
            duo22 =  final_[j] + start_[j]
            if i != j:
                if duo11 == duo21 or duo11 == duo22 or duo12 == duo21 or duo12 == duo22:
                    errors = "povtor"
    R = [[]]
    # заполнение массива
    for i in range(size_):
        R.insert(i, [int(weight_[i]), int(start_[i]), int(final_[i])])
    del(R[size_])
    Rs = sorted(R, key=lambda x: x[0], reverse=False) # сортировка массива по возрастанию веса
    
    U = set()   # список соединенных вершин
    D = {}      # словарь списка изолированных групп вершин
    T = []      # список ребер остова
    
    for r in Rs:
        if r[1] not in U or r[2] not in U:  # проверка для исключения циклов в остове
            if r[1] not in U and r[2] not in U: # если обе вершины не соединены, то
                D[r[1]] = [r[1], r[2]]          # формируем в словаре ключ с номерами вершин
                D[r[2]] = D[r[1]]               # и связываем их с одним и тем же списком вершин
            else:                           # иначе
                if not D.get(r[1]):             # если в словаре нет первой вершины, то
                    D[r[2]].append(r[1])        # добавляем в список первую вершину
                    D[r[1]] = D[r[2]]           # и добавляем ключ с номером первой вершины
                else:
                    D[r[1]].append(r[2])        # иначе, все то же самое делаем со второй вершиной
                    D[r[2]] = D[r[1]]
    
            T.append(r)             # добавляем ребро в остов
            U.add(r[1])             # добавляем вершины в множество U
            U.add(r[2])
    
    for r in Rs:    # проходим по ребрам второй раз и объединяем разрозненные группы вершин
        if r[2] not in D[r[1]]:     # если вершины принадлежат разным группам, то объединяем
            T.append(r)             # добавляем ребро в остов
            gr1 = D[r[1]]           # сохраняем значение до объединения
            D[r[1]] += D[r[2]]      # объединем списки двух групп вершин
            D[r[2]] += gr1
    return template('kruskalRez',
            title='Kruskal',
            year=datetime.now().year,
            T=T,
            R=R,
            U=U,
            Rs=Rs,
            D=D,
            errors = errors)





