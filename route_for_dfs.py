from bottle import route, view, request, response
from datetime import datetime
import depth_first_search

error = ""

@route('/dfs')
@view('variant2')
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
        error = error
        )

    if request.GET.get('Button')=="Send":
        # берем из куки размер матрицы
        size = int(request.cookies.size)
        
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
            return dict(
            title='Title',
            message='Your application description page.',
            year=datetime.now().year,
            size = int(size),
            check = 'false',
            error = "Please enter a connected graph"
            )

        # преобразуем в словарь смежных вершин
        inc = {}
        for i in range(size):
            row=[]
            for j in range(size):
                if (matrix[i][j] == 1):
                    row.append(j)
            inc[i]=row
        
        # находим остовное дерево
        result = depth_first_search.DFS(inc)

        return dict(
            title='Title',
            message='Your application description page.',
            year=datetime.now().year, 
            size = size,
            check = 'true',
            result = result, 
            matrix = matrix,
            error = error
        )
