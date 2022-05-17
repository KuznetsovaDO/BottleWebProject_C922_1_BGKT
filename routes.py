"""
Routes and views for the bottle application.
"""

from bottle import route, view
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
   return dict(
        title='Title',
        message='Your application description page.',
        year=datetime.now().year
    )

@route('/variant2')
@view('variant2')
def varian4():
    """Renders the about page."""
    return dict(
        title='Title',
        message='Your application description page.',
        year=datetime.now().year
    )

@route('/variant3')
@view('variant3')
def contact():
    """Renders the contact page."""
    return dict(
        title='Title',
        message='Your application description page.',
        year=datetime.now().year
    )

@route('/variant4')
@view('variant4')
def variant4():
    return dict(
        title='Title',
        message='Your application description page.',
        year=datetime.now().year
    )

