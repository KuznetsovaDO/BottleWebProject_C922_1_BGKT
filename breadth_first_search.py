#преобразование массива в словарь
def preobr(mass):
    #словарь смежности вершин
    tempDict = {}
    for i in range(len(mass)):
        #массив вершин
        tempEdges = []
        for j in range(len(mass[i])):
            if mass[i][j] == 1:
                tempEdges.append(j+1)
        tempDict[i+1] = tempEdges
    return tempDict  #вывод {1: [2, 3], 2: [1, 3], 3: [1, 2, 4], 4: [3, 5], 5: [4]}


def shirina(mass, start):
    #берём данные в виде словаря
    inc = preobr(mass)

    visited = [] #массив посещённых вершин
    Q = []  #очередь
    BFS = [] #путь обхода
    matrix = {} #результирующая матрица

    def bfs(v):
        if v in visited: #если вершина уже посещена, выходим
            return
        visited.append(v) #посетили вершину v
        BFS.append(v) #запомнили порядок обхода
        for i in inc[v]: #все смежные с v вершины
            if not i in visited:
                Q.append(i) #записываем в очередь
        tempConn = [] #массив соединений
        
        for j in range(len(mass[v-1])):
            fl = 1
            parent = 0
            for k in matrix.keys():
                if matrix[k][v-1] == 1:
                    parent = k
            for l in visited:
                if l == v:
                    if mass[v-1][j] != 1:
                        fl=0
                elif l-1 == parent:
                    if (mass[l-1][j] == 1 or j == v-1 or mass[v-1][j] != 1):
                        fl=0
            if fl == 1:
                tempConn.append(1)
            else:
                tempConn.append(0)
        matrix[v-1] = tempConn
        while Q:
            bfs(Q.pop(0)) #проходим по всей очереди


    bfs(start) #начальная вершина обхода - start
    dict= [BFS,matrix] #путь обхода и матрица
    return dict
 