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
        #создаем пустой массив
        adj_matrix = []
        #проходимся по строкам в массиве
        for i in range(size):
            #значения строки записываются сюда
            row = []
            #проходимся по элементам в строке
            for j in range(size):
                #считываем значения из ячейки в матрице и добавляем его в массив строки
                row.append(int(request.GET.get(str(i)+'_'+str(j))))
            #добавляем строку в двумерный массив
            adj_matrix.append(row)
        result = BFS.shirina(adj_matrix, 1)  
        return template("result_bfs", size = size, matrix1 = adj_matrix, matrix2 = result[1], path = result[0])