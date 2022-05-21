"""
Routes and views for the bottle application.
"""

from bottle import route, view, request, response
from datetime import datetime
import depth_first_search
@route('/')
@route('/home')
@view('index')
def home():
    """Renders the home page."""
    return dict(
        year=datetime.now().year
    )


@route('/variant2')
@view('variant2')
def variant2():
   response.set_cookie("size", "4")
   return dict(
    title='Title',
    message='Your application description page.',
    year=datetime.now().year, 
    size = 4,
    check = 'false'
    )

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

        )

    if request.GET.get('Button')=="Send":
        # берем из куки размер матрицы
        size = int(request.cookies.size)
        
        matrix = []

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
            matrix = matrix
        )


@route('/variant1')
@view('variant1')
def variant4():
    """Renders the about page."""
    size = 5
    response.set_cookie("size", str(size))
    return dict(
        title='Title',
        message='Your application description page.',
        year=datetime.now().year,
        size = size
    )

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

@route('/variant1_4')
@view('variant1')
def variant4():
    """Renders the about page."""
    #считывание матрицы в массив
    size = int(request.cookies.size)
    adj_matrix = []
    for i in range(size):
        row = []
        for j in range(size):
            row.append(int(request.GET.get(str(i)+'_'+str(j))))
        adj_matrix.append(row)
    
    
    return dict(
        title='Title',
        message='Your application description page.',
        year=datetime.now().year,
        size = size - 1
    )

@route('/kruskal')
@view('kruskal')
def kruskal():
    size_ = request.GET.get('setOfEdges', type=int)
    vert_ = request.GET.get('setOfVertice', type=int)
    if (size_ != None and vert_ != None):
        max_ = vert_*(vert_ - 1)/2
        if (size_ > max_):
            size_ = int(max_)
        return dict(
            title='Kruskal',
            year=datetime.now().year,
            sizeEdges = size_,
            sizeVertic = vert_
            )
    else:
        return dict(
            title='Kruskal',
            year=datetime.now().year,
            sizeEdges = 1,
            sizeVertic = 2
            )

@route('/variant4')
@view('variant4')
def variant4():
    return dict(
        title='The Prim`s algorithm',
        title_enter = 'Let`s go',
        title_main='nothing.',
        text_main='nothing.',
        title_size='The Prim algorithm is a minimal spanning tree algorithm that takes a graph as input and finds a subset of the edges of this graph that forms a tree that includes each vertex, and also has the minimum sum of weights among all trees that can be formed from the graph.',
        year=datetime.now().year
    )

@route('/kruskalRez')
@view('/kruskalRez')
def home():
    return dict(
            title='Kruskal',
            year=datetime.now().year
    )
    

@route('/primex')
@view('primex')
def primex():
    """Renders the about page."""
    return dict(
        title='Title',
         year=datetime.now().year
    )

@route('/about')
@view('about')
def about():
    """Renders the about page."""
    return dict(
        title='Title',
         year=datetime.now().year
    )