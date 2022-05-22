import unittest
import kruskalPy

class Test_connect(unittest.TestCase):
    def test_F(self):
        vert = [5, 6]
        first = [["1","2","3","5","1"],["2","1","2","4","1","5"]]
        second = [["4","4","1","3","5"],["3","4","4","6","5","2"]]
        for i in range(len(first)):
            self.assertFalse(kruskalPy.isConnectV(first[i], second[i], vert[i]))

    def test_T(self):
        vert = [5, 6]
        first = [["1","2","3","4","1"],["2","1","2","4","1","5"]]
        second = [["4","4","1","3","2"],["3","4","4","3","5","2"]]
        for i in range(len(first)):
            self.assertTrue(kruskalPy.isConnectV(first[i], second[i], vert[i]))

if __name__ == '__main__':
    unittest.main()
