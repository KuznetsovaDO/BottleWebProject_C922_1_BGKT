from bottle import route, view, request
from array import *

@route('/kruskal', method='post') 
def kruskal_yu():
    weight_ = request.forms.getall('ribWeight')
    start_ = request.forms.getall('startingVertex')
    final_ = request.forms.getall('finalVertex')
    size_ = len(weight_)
    R = [[]]
    t =""
    for i in range(size_):
        R.insert(i, [weight_[i], start_[i], final_[i]])
    del(R[size_])

    Rs = sorted(R, key=lambda x: x[0])
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
            gr1 = D[r[1]]
            D[r[1]] += D[r[2]]      # объединем списки двух групп вершин
            D[r[2]] += gr1

    for i in R:
        for x in i:
            t += "[" + x + "], "
        t += "||"
    t += "        "
    for i in T:
        for x in i:
            t += "[" + x + "], "
        t += "||"
    return t





