import random
from string import ascii_uppercase
from bottle import post, request
import re
import numpy as np
import Prima1

@post('/variant4', method='post')
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
        f += "<br>"
    print (f)
    return ("Matri: "+"<br>"+f+"<br>"+Prima1.prima(W))

