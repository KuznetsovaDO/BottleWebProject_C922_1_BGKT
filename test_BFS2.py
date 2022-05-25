
import unittest, re, breadth_first_search

class Test_test_BFS2(unittest.TestCase):

    def test_A(self):
        #матрица 
        matrix1 =   [[0,1,1,0,0],
                    [1,0,1,0,0],
                    [1,1,0,1,0],
                    [0,0,1,0,1],
                    [0,0,0,1,0]]	
             
        # ОБХОД С ПЕРВОЙ ВЕРШИНЫ
        # последовательность обхода вершин (правильный ответ)
        result1 = [1, 2, 3, 4, 5]
        # матрица смежности остовного графа (правильный ответ)
        result2 =  {0: [0, 1, 1, 0, 0],
                    1: [1, 0, 0, 0, 0],
                    2: [1, 0, 0, 1, 0],
                    3: [0, 0, 1, 0, 1],
                    4: [0, 0, 0, 1, 0]}

        # проверяем последовательность вершин
        self.assertEqual(breadth_first_search.shirina(matrix1, 1)[0], result1)
        # проверяем матрицу
        self.assertEqual(breadth_first_search.shirina(matrix1, 1)[1], result2)


        # ОБХОД С ВТОРОЙ ВЕРШИНЫ
        # последовательность обхода вершин (правильный ответ)
        result1 = [2, 1, 3, 4, 5]
        # матрица смежности остовного графа (правильный ответ)
        result2 =  {0: [0, 1, 0, 0, 0],
                    1: [1, 0, 1, 0, 0],
                    2: [0, 1, 0, 1, 0],
                    3: [0, 0, 1, 0, 1],
                    4: [0, 0, 0, 1, 0]}

        # проверяем последовательность вершин
        self.assertEqual(breadth_first_search.shirina(matrix1, 2)[0], result1)
        # проверяем матрицу
        self.assertEqual(breadth_first_search.shirina(matrix1, 2)[1], result2)

        # ОБХОД С ТРЕТЬЕЙ ВЕРШИНЫ
        # последовательность обхода вершин (правильный ответ)
        result1 = [3, 1, 2, 4, 5]
        # матрица смежности остовного графа (правильный ответ)
        result2 =  {0: [0, 0, 1, 0, 0],
                    1: [0, 0, 1, 0, 0],
                    2: [1, 1, 0, 1, 0],
                    3: [0, 0, 1, 0, 1],
                    4: [0, 0, 0, 1, 0]}

        # проверяем последовательность вершин
        self.assertEqual(breadth_first_search.shirina(matrix1, 3)[0], result1)
        # проверяем матрицу
        self.assertEqual(breadth_first_search.shirina(matrix1, 3)[1], result2)

        # ОБХОД С ЧЕТВЁРТОЙ ВЕРШИНЫ
        # последовательность обхода вершин (правильный ответ)
        result1 = [4, 3, 5, 1, 2]
        # матрица смежности остовного графа (правильный ответ)
        result2 =  {0: [0, 0, 1, 0, 0],
                    1: [0, 0, 1, 0, 0],
                    2: [1, 1, 0, 1, 0],
                    3: [0, 0, 1, 0, 1],
                    4: [0, 0, 0, 1, 0]}

        # проверяем последовательность вершин
        self.assertEqual(breadth_first_search.shirina(matrix1, 4)[0], result1)
        # проверяем матрицу
        self.assertEqual(breadth_first_search.shirina(matrix1, 4)[1], result2)

        # ОБХОД С ПЯТОЙ ВЕРШИНЫ
        # последовательность обхода вершин (правильный ответ)
        result1 = [5, 4, 3, 1, 2]
        # матрица смежности остовного графа (правильный ответ)
        result2 =  {0: [0, 0, 1, 0, 0],
                    1: [0, 0, 1, 0, 0],
                    2: [1, 1, 0, 1, 0],
                    3: [0, 0, 1, 0, 1],
                    4: [0, 0, 0, 1, 0]}

        # проверяем последовательность вершин
        self.assertEqual(breadth_first_search.shirina(matrix1, 5)[0], result1)
        # проверяем матрицу
        self.assertEqual(breadth_first_search.shirina(matrix1, 5)[1], result2)

if __name__ == '__main__':
    unittest.main()
      