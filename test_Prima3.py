import unittest
import numpy as np
from string import ascii_uppercase

class Test_test_3(unittest.TestCase):
    def test_A(self):
        n= 9
        o=[]
        W = [[0, 0, 0, 0, 0, 0, 6, 0, 2],
             [0, 0, 7, 0, 6, 0, 0, 6, 0],
             [0, 7, 0, 0, 1, 2, 0, 0, 1],
             [0, 0, 0, 0, 5, 0, 0, 0, 0],
             [0, 6, 1, 5, 0, 5, 7, 0, 0],
             [0, 0, 2, 0, 5, 0, 0, 2, 1],
             [6, 0, 0, 0, 7, 0, 0, 1, 3],
             [0, 6, 0, 0, 0, 2, 1, 0, 7],
             [2, 0, 1, 0, 0, 1, 3, 7, 0]]
        cities_count = len(W)
        city_labels = None
        road_length = 0
        starting_vertex = 8
        b = 19
        v=[1,1,1,2,2,1,5,6]
        _ = float('inf')

        for weights in W:
            assert len(weights) == cities_count

        if not city_labels:
            city_labels = [ascii_uppercase[x] for x in range(cities_count)]

        assert cities_count <= len(city_labels)
    
        free_vertexes = list(range(0, len(city_labels)))

    
        tied = [starting_vertex]
        free_vertexes.remove(starting_vertex)

        while free_vertexes:
            min_link = None 
            overall_min_path = _  

            for current_vertex in tied:
                weights = W[current_vertex]

                min_path = _
                free_vertex_min = current_vertex

                for vertex in range(cities_count):
                    vertex_path = weights[vertex]
                    if vertex_path == 0:
                        continue

                    if vertex in free_vertexes and vertex_path < min_path:
                        free_vertex_min = vertex
                        min_path = vertex_path

                if free_vertex_min != current_vertex:
                    if overall_min_path > min_path:
                        min_link = (current_vertex, free_vertex_min)
                        overall_min_path = min_path
            try:
                path_length = W[min_link[0]][min_link[1]]
            except TypeError:

                break

            o.append(path_length)

            road_length += path_length
            free_vertexes.remove(min_link[1])
            tied.append(min_link[1])

        i=0
        print (o)
        for t in range(len(v)):
            if v[i]==o[i]:
                if i!=len(v):
                    i=i+1
                elif i==len(v):
                    break
            elif v[i]!=o[i]:
                break
   

        
        if i == len(v) and road_length==b:
            B = True;
        else:
            B = False;
        
        

        self.assertTrue(B)

if __name__ == '__main__':
    unittest.main()

