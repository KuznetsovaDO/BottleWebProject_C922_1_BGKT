import random
from string import ascii_uppercase
from bottle import post, request
from bottle import template, route, response
import re
import numpy as np
import Prima1
from datetime import datetime

@post('/primansw', method='post')
def Start():
    
    n = int (request.forms.get('GetValue'))
    M = np.random.randint(0,2,(n,n))
    np.fill_diagonal(M, 0)
    m = np.tril(M) + np.tril(M,-1).T
    for i in range(len(m)):
        for j in range (len(m[i])):
            if (m[i][j] == 1):
                m[i][j] = np.random.randint(1,9)
    W = np.tril(m) + np.tril(m,-1).T
    f=""
    for i in range (n):
        for j in range (n):
            f += str(W[i][j]) + " "
        f += "\n"
    print (f)

    ans = ("Matrix: " + "\n"+ f + "\n" + Prima1.prima(W))

    wrFile = open("prim_rez.txt", 'a')
    try:
        wrFile.write(str(datetime.now()) + "\n" + ans + "\n")
    finally:
        wrFile.close()
    
    return template ('primansw', title='The Prim`s algorithm', year = datetime.now().year, ans = ans)
