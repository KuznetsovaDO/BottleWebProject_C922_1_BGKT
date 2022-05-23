from bottle import route, view, request, template
from array import *
from datetime import datetime
import json

def isLoop(start_, final_):
    size_ = len(final_)
    for i in range(size_):
        if (int(start_[i]) == int(final_[i])):
            return True
    return False

def isConnectV(start_, final_, vert_):
    for i in range(vert_):
        i += 1
        if not(str(i) in start_) and not(str(i) in final_):
            return True
    return False

@route('/kruskalRez', method='post')
def kruskal_yu():
    # получение данных с формы
    weight_ = request.forms.getall('ribWeight')
    start_ = request.forms.getall('startingVertex')
    final_ = request.forms.getall('finalVertex')
    size_ = len(weight_)
    vert_ = request.forms.get('el1', type=int)
    errors = []
    er = 0
    
    

    # проверка на наличие несвязанных вершин в графе
    if isConnectV(start_, final_, vert_):
        errors.insert(er, "ne svyazan")
        er += 1
    # проверка на наличие петель в графе
    if isLoop(start_, final_):
        errors.insert(er, "petlya")
        er += 1
    # проверка на наличие повторяющихся ребер
    for i in range(size_):
        for j in range(size_):
            duo11 = start_[i] + final_[i]
            duo12 =  final_[i] + start_[i]
            duo21 = start_[j] + final_[j]
            duo22 =  final_[j] + start_[j]
            if i != j:
                if duo11 == duo21 or duo11 == duo22 or duo12 == duo21 or duo12 == duo22:
                    errors.insert(er, "povtor")
                    er += 1
    R = [[]]
    # заполнение массива
    for i in range(size_):
        R.insert(i, [int(weight_[i]), int(start_[i]), int(final_[i])])
    del(R[size_])
    Rs = sorted(R, key=lambda x: x[0], reverse=False) # сортировка массива по возрастанию веса

    

    U = set()   # список соединенных вершин
    D = {}      # словарь списка изолированных групп вершин
    T = []      # список ребер остова
    proc = "Next, we will create a list of isolated vertex groups to avoid the appearance of cycles. "
    process = []
    p = 0
    for r in Rs:
        if r[1] not in U or r[2] not in U:  # проверка для исключения циклов в остове
            if r[1] not in U and r[2] not in U: # если обе вершины не соединены, то
                D[r[1]] = [r[1], r[2]]          # формируем в словаре ключ с номерами вершин
                D[r[2]] = D[r[1]]               # и связываем их с одним и тем же списком вершин
                proc = "Vertices " + str(r[1]) + " and " + str(r[2]) + " meet for the first time, forming a group of isolated vertices without creating a cycle. Therefore, they are definitely part of the spanning tree. "
                process.insert(p, proc)
                p += 1
            else:                           # иначе
                if not D.get(r[1]):             # если в словаре нет первой вершины, то
                    D[r[2]].append(r[1])        # добавляем в список первую вершину
                    D[r[1]] = D[r[2]]           # и добавляем ключ с номером первой вершины
                    proc = "The vertex " + str(r[2]) + " has already been encountered before, but the vertex " + str(r[1]) + " occurs for the first time and does not form a cycle. Therefore, the edge between these two vertices is part of the spanning tree. "
                    process.insert(p, proc)
                    p += 1
                else:
                    D[r[1]].append(r[2])        # иначе, все то же самое делаем со второй вершиной
                    D[r[2]] = D[r[1]]
                    proc = "The vertex " + str(r[1]) + " has already been encountered before, but the vertex " + str(r[2]) + " occurs for the first time and does not form a cycle. Therefore, the edge between these two vertices is part of the spanning tree. "
                    process.insert(p, proc)
                    p += 1
    
            T.append(r)             # добавляем ребро в остов
            U.add(r[1])             # добавляем вершины в множество U
            U.add(r[2])
        else:
            proc = "The vertices " + str(r[1]) + " and " + str(r[2]) + " have already met before, so the edge connecting these vertices is not of interest to us at the moment. "
            process.insert(p, proc)
            p += 1
    proc = "Now that we have groups of isolated vertices, we need to connect them together. To do this, once again consider the sorted table with the edges of the graph and find the edge with the lowest weight connecting the isolated groups. "
    process.insert(p, proc)
    p += 1
    for r in Rs:    # проходим по ребрам второй раз и объединяем разрозненные группы вершин
        if r[2] not in D[r[1]]:     # если вершины принадлежат разным группам, то объединяем
            T.append(r)             # добавляем ребро в остов
            gr1 = D[r[1]]           # сохраняем значение до объединения
            D[r[1]] += D[r[2]]      # объединем списки двух групп вершин
            D[r[2]] += gr1
            proc = "Consider vertices " + str(r[1]) + " and " + str(r[2]) + " connected by an edge. These vertices belong to different isolated groups, therefore this edge will be part of the spanning tree. "
            process.insert(p, proc)
            p += 1
    # проверка на связанность изолированных групп графа
    for r in T:
        for i in range(vert_):
            i += 1
            if i not in D[r[1]]:
                errors.insert(er, "ne svyazan")
                er += 1
    # запись данных в файл
    if er == 0:
        jsonIn = "Time " + str(datetime.now()) + "; Input " + str(R) + "; Output " + str(T)
        with open('inData.json', 'a') as file:
            json.dump(jsonIn, file)
            file.write('\n')
    else:
        jsonIn = "Time " + str(datetime.now()) + "; Input " + str(R) + "; Output errors"
        with open('inData.json', 'a') as file:
            json.dump(jsonIn, file)
            file.write('\n')
    return template('kruskalRez',
            title='Kruskal',
            year=datetime.now().year,
            T=T,
            R=R,
            U=U,
            Rs=Rs,
            D=D,
            errors = errors,
            process=process)





