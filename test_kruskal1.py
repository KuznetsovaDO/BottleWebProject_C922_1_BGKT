import unittest
import kruskalPy

class Test_loop(unittest.TestCase):
    # тест с данными без петель
    def test_F(self):
        first = [["1","2","3","8","1"],["2","1","2","4","1","5"], ["2", "3", "4"], ["1", "2", "4", "5", "2"], ["4", "3", "2", "3"]]
        second = [["4","4","1","3","7"],["3","4","4","6","5","2"], ["1", "1", "2"], ["5", "3", "1", "3", "5"], ["1", "1", "1", "4"]]
        for i in range(len(first)):
            self.assertFalse(kruskalPy.isLoop(first[i], second[i]))
    # тест с данными с петлей
    def test_T(self):
        first = [["1","2","3","8","1"],["2","1","2","4","1","5"], ["1", "3", "3"], ["1", "5", "2", "5", "3"], ["1", "2", "3", "4"]]
        second = [["1","4","1","3","7"],["3","4","4","4","5","2"], ["2", "4", "3"], ["2", "2", "2", "4", "3"], ["1", "2", "3", "4"]]
        for i in range(len(first)):
            self.assertTrue(kruskalPy.isLoop(first[i], second[i]))

if __name__ == '__main__':
    unittest.main()