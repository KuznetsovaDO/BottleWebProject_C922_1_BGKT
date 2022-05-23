import unittest
import kruskalPy
# тест на наличие несвязанных вершин
class Test_connect(unittest.TestCase):
    # тест с данными без несвязанных вершин
    def test_F(self):
        vert = [5, 6, 4, 5, 4]
        first = [["1","2","3","5","1"],["2","1","2","4","1","5"], ["2", "3", "4"], ["1", "2", "4", "5", "2"], ["4", "3", "2", "3"]]
        second = [["4","4","1","3","5"],["3","4","4","6","5","2"], ["1", "2", "3"], ["2", "3", "5", "1", "4"], ["1", "1", "3", "4"]]
        for i in range(len(first)):
            self.assertFalse(kruskalPy.isConnectV(first[i], second[i], vert[i]))
    # тест с данными с наличием несвязанных вершин
    def test_T(self):
        vert = [5, 6, 4, 6, 4]
        first = [["1","2","3","4","1"],["2","1","2","4","1","5"], ["2", "3", "4"], ["1", "2", "4", "5", "2"], ["4", "3", "2"]]
        second = [["4","4","1","3","2"],["3","4","4","3","5","2"], ["3", "4", "2"], ["5", "1", "3", "2", "3"], ["3", "2", "4"]]
        for i in range(len(first)):
            self.assertTrue(kruskalPy.isConnectV(first[i], second[i], vert[i]))

if __name__ == '__main__':
    unittest.main()
