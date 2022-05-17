"""
Routes and views for the bottle application.
"""

from bottle import route, view, request
from datetime import datetime

@route('/')
@route('/home')
@view('index')
def home():
    """Renders the home page."""
    return dict(
        year=datetime.now().year
    )



@route('/variant1')
@view('variant1')
def variant1():
   size_ = request.GET.get('SIZE')
   if (size_ != None):
       return dict(
        title='Title',
        message='Your application description page.',
        year=datetime.now().year,
        size = int(size_)
    )
   else:
       return dict(
        title='Title',
        message='Your application description page.',
        year=datetime.now().year, 
        size = 4
    )

@route('/variant2')
@view('variant2')
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
    size_ = request.GET.get('sizeMatrix')
    if (size_ != None):
        return dict(
            title='Kruskal',
            year=datetime.now().year,
            sizeMat = int(size_)
            )
    else:
        return dict(
            title='Kruskal',
            year=datetime.now().year,
            sizeMat = 3
            )

@route('/variant4')
@view('variant4')
def variant4():
    return dict(
        title='Title',
        message='Your application description page.',
        year=datetime.now().year
    )

