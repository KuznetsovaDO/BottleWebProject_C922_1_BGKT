from bottle import route, view, request, response
from datetime import datetime
import depth_first_search

@route('/variant1_2')
@view('variant1')
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
@view('variant1')
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
@view('variant1')
def variant4():
    """Renders the about page."""
    #CЧИТЫВАНИЕ МАТРИЦЫ В СЛОВАРЬ
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
    
    
    return dict(
        title='Title',
        message='Your application description page.',
        year=datetime.now().year,
        size = size - 1
    )
