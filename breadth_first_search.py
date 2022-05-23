def preobr(mass):
    tempDict = {}
    for i in range(len(mass)):
        tempEdges = []
        for j in range(len(mass[i])):
            if mass[i][j] == 1:
                tempEdges.append(j+1)
        tempDict[i+1] = tempEdges
    return tempDict

def shirina(mass, start):
    inc = preobr(mass)

    visited = []
    Q = []
    BFS = []
    matrix = {}

    def bfs(v):
        if v in visited:
            return
        visited.append(v)
        BFS.append(v)
        for i in inc[v]:
            if not i in visited:
                Q.append(i)
        tempConn = []
        
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
                    if mass[l-1][j] == 1 or j == v-1 or mass[v-1][j] != 1:
                        fl=0
            if fl == 1:
                tempConn.append(1)
            else:
                tempConn.append(0)
        matrix[v-1] = tempConn
        while Q:
            bfs(Q.pop(0))

    bfs(start)
    dict= [BFS,matrix]
    return dict

#m = [[0, 1, 1, 0, 0], [0, 0, 1, 0, 0], [0, 0, 0, 1, 0], [0, 0, 0, 0, 1], [0, 0, 0, 0, 0]]
#res = shirina()