from bottle import route, view, request, response, template
from datetime import datetime
import breadth_first_search as bfs

@route('/variant1_2')
@view('breath_first_search')
def variant4():
    """Renders the about page."""
    size = int(request.cookies.size)
    response.set_cookie("size", str(size+1))
    return dict(
        title='Title',
        message='Your application description page.',
        year=datetime.now().year,
        size = size + 1
    )

@route('/variant1_3')
@view('breath_first_search')
def variant4():
    """Renders the about page."""
    size = int(request.cookies.size)
    response.set_cookie("size", str(size-1))
    return dict(
        title='Title',
        message='Your application description page.',
        year=datetime.now().year,
        size = size - 1
    )

@route('/variant1_4', method = "GET")
@view('breath_first_search')
def variant4():
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
    result = bfs.shirina(adj_matrix,3)
    
    
    return template("result_bfs", size = size,matrix1 = adj_matrix, matrix2 = result[1], path = result[0])

@route('result_bfs')
@view('result_bfs')
def result():
    return dict (
        size = int(request.cookies.size)
        )

