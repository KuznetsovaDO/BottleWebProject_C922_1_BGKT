from bottle import route, view, request, response, template
from datetime import datetime
import breadth_first_search as BFS

@route('/bfs')
@view('breath_first_search')
def bfs():
    # обрабатываем нажатие кнопки добавления вершины
    if request.GET.get("Button")=="Add":
        size = int(request.cookies.size)
        response.set_cookie("size", str(size+1))
        return dict(
            title='Title',
            message='Your application description page.',
            year=datetime.now().year,
            size = size + 1
        )

    # обрабатываем нажатие кнопки удаления вершины
    if request.GET.get("Button")=="Remove":
        size = int(request.cookies.size)
        response.set_cookie("size", str(size-1))
        return dict(
            title='Title',
            message='Your application description page.',
            year=datetime.now().year,
            size = size - 1
        )

    # обрабатываем нажатите на кнопку решения
    if request.GET.get("Button")=="Find":
        #CЧИТЫВАНИЕ МАТРИЦЫ В МАССИВ
        #получаем размер матрицы
        size = int(request.cookies.size)
        #получаем стартовую вершину
        start = int(request.GET.get("start"))
        #создаем пустой массив
        adj_matrix = []
        #заполняем массив нулями
        for i in range(size):
            row = []
            for j in range(size):
                row.append(0)
            adj_matrix.append(row)
                
        #проходимся по строкам в вводимом массиве
        for i in range(size):
            #проходимся по элементам в строке
            for j in range(size):
                if str(request.GET.get(str(i)+'_'+str(j)))=="1":
                    #считываем значения из ячейки в матрице и добавляем его в массив строки
                    adj_matrix[i][j] = 1
                    adj_matrix[j][i] = 1
            
        result = BFS.shirina(adj_matrix, start)  
        return template("result_bfs", size = size, matrix1 = adj_matrix, matrix2 = result[1], path = result[0])