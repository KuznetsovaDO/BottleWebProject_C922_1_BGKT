def DFS(inc, start):

    visited = []  # Посещена ли вершина?

    a = len(inc) 
    result_matrix = []

    # заполнение матрицы нулями
    for i in range(a): 
        row = []
        for j in range(a):
            row.append(0)
        result_matrix.append(row)

    # Поиск в глубину - ПВГ (Depth First Search - DFS)
    def dfs(v):
        if v in visited:  # Если вершина уже посещена, выходим
            return
        visited.append(v)  # Посетили вершину v
        for i in inc[v]:  # Все смежные с v вершины
            if not i in visited:
                result_matrix[v][i]=1
                result_matrix[i][v]=1
                dfs(i)

    dfs(start)  # start - начальная вершина обхода

    for i in range(len(visited)):
        visited[i]+=1

    result = {"matrix": result_matrix, "sequence": visited}

    return result
