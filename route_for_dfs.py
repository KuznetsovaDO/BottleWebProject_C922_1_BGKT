from bottle import route, view, request, response
from datetime import datetime
import depth_first_search

error = ""

@route('/dfs')
@view('depth_first_search')
def dfs():
    # проверяем, какая кнопка была нажата
    if request.GET.get('Button')=="Create":
        # получаем значение с поля ввода и записываем его в cookie
        size_ = request.GET.get('SIZE')
        response.set_cookie("size", size_)

        return dict(
        title='Title',
        message='Your application description page.',
        year=datetime.now().year,
        size = int(size_),
        check = 'false',
        error = error,
        start=1
        )

    if request.GET.get('Button')=="Send":
        # берем из куки размер матрицы
        size = int(request.cookies.size)
        start = request.GET.get('START')
        
        matrix = [] #матрица
        count = 0 #количество ребер

        # заполняем матрицу нулями
        for i in range(size):
            row = []
            for j in range(size):
                row.append(0)
            matrix.append(row)

        # считываем введенную матрицу
        for i in range(size):
            for j in range(size):
                if (str(request.GET.get(str(i)+'_'+str(j)))=='1'):
                    matrix[i][j]=1
                    matrix[j][i]=1
                    count+=1
        
        # проверка на связность графа
        if count < size-1:
            f = open("data_dfs.txt", 'a')
            f.write(str(datetime.now()))
            f.write("\n Входная матрица: ")
            for i in matrix:
                f.write("\n"+str(i))
            f.write(" Результат - Error. A disconnected graph is introduced.")

            return dict(
            title='Title',
            message='Your application description page.',
            year=datetime.now().year,
            size = int(size),
            check = 'false',
            error = "Please enter a connected graph",
            start=1
            )

        # преобразуем в словарь смежных вершин
        graph = {}
        for i in range(size):
            row=[]
            for j in range(size):
                if (matrix[i][j] == 1):
                    row.append(j)
            graph[i]=row
        
        # находим остовное дерево
        result = depth_first_search.DFS(graph, int(start)-1)

        f = open("data_dfs.txt", 'a')
        try:
            # работа с файлом
            f.write(str(datetime.now()))
            f.write("\n Входная матрица: ")
            for i in matrix:
                f.write("\n"+str(i))
            f.write("\n Стартовая вершина: "+start)
            f.write("\n Результат: ")
            for i in  result["matrix"]:
                f.write("\n"+str(i))
            f.write("\n Последовательность обхода: " + str(result["sequence"])+"\n")
        finally:
            f.close()

        return dict(
            title='Title',
            message='Your application description page.',
            year=datetime.now().year, 
            size = size,
            check = 'true',
            result = result["matrix"], 
            matrix = matrix,
            error = error, 
            start = start, 
            sequence = result["sequence"]
        )
