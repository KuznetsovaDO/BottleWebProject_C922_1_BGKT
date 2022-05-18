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
def variant1():
   size_ = request.GET.get('SIZE')
   if (size_ != None):
       response.set_cookie("size", size_)
       return dict(
        title='Title',
        message='Your application description page.',
        year=datetime.now().year,
        size = int(size_),
        check = 'false'
    )
   else:
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
def new():
    size = int(request.cookies.size)

    matrix = []
    for i in range(size):
        row = []
        for j in range(size):
            el = request.GET.get(str(i)+'_'+str(j))
            if (el == '1'):
                row.append(el)
            else:
                row.append(0)
        matrix.append(row)

    inc = {}
    for i in range(size+1):
        tops= []
        for j in range(size+1):
            if (str(request.GET.get(str(i)+'_'+str(j)))=='1'):
                tops.append(j)
            inc[i]=tops  
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
    return dict(
        title='Title',
        message='Your application description page.',
        year=datetime.now().year
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
        title='Title',
        message='Your application description page.',
        year=datetime.now().year
    )

