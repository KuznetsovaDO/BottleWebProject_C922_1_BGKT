import random
from string import ascii_uppercase


def prima(W,city_labels = None):
   
    x=""
    z=""
    b=""
    o=""
    _ = float('inf')
    cities_count = len(W)

    # �������� �� ���������� ������� ������
    for weights in W:
        assert len(weights) == cities_count

    # ��������� ���� �������
    if not city_labels:
        city_labels = [ascii_uppercase[x] for x in range(cities_count)]

    assert cities_count <= len(city_labels)
    

    # ����� ���������� ������
    free_vertexes = list(range(0, len(city_labels)))

    starting_vertex = random.choice(free_vertexes)
    tied = [starting_vertex]
    free_vertexes.remove(starting_vertex)

    x='Starting with %s' % city_labels[starting_vertex]+"<br>"

    road_length = 0

    # ���� ���� ��������� �������
    while free_vertexes:
        min_link = None  # ����������, ���������� ����������� ����
        overall_min_path = _    # ����������� ���� ����� ���� ���������

        # ������ �� ���� ��� ��������� ������� ��������
        for current_vertex in tied:
            weights = W[current_vertex]   # ����� ������� ������� � �������

            min_path = _
            free_vertex_min = current_vertex

            # ������ �� ��������� �������
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
            print("Error. Try again")
            z+="There are no ways"+"<br>"
            break
        
        z+='Connection %s in %s [%s]' % (city_labels[min_link[0]], city_labels[min_link[1]], str(path_length))+"<br>"

        road_length += path_length
        free_vertexes.remove(min_link[1])
        tied.append(min_link[1])

    b='All the way: %s' % str (road_length)
    o=x+z+b
    return o
    
