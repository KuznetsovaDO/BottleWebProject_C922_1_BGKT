import unittest
import kruskalPy

class Test_loop(unittest.TestCase):
    def test_F(self):
        first = [["1","2","3","8","1"],["2","1","2","4","1","5"]]
        second = [["4","4","1","3","7"],["3","4","4","6","5","2"]]
        for i in range(len(first)):
            self.assertFalse(kruskalPy.isLoop(first[i], second[i]))

    def test_T(self):
        first = [["1","2","3","8","1"],["2","1","2","4","1","5"]]
        second = [["1","4","1","3","7"],["3","4","4","4","5","2"]]
        for i in range(len(first)):
            self.assertTrue(kruskalPy.isLoop(first[i], second[i]))

if __name__ == '__main__':
    unittest.main()