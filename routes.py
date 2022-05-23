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
@view('depth_first_search')
def variant2():
   response.set_cookie("size", "4")
   return dict(
    title='Title',
    message='Your application description page.',
    year=datetime.now().year, 
    size = 4,
    check = 'false',
    error = "",
    start = 1
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

@route('/prim_algorithm')
@view('prim_algorithm')
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