import unittest
import depth_first_search

class Test_dfs(unittest.TestCase):
    def test_A(self):
        inc = {
                0: [1, 7],
                1: [0, 2, 7],
                2: [1, 3, 7],
                3: [2, 6, 8],
                4: [5, 6],
                5: [4],
                6: [3, 4, 7],
                7: [0, 1, 2, 6],
                8: [3],
            }
        result = [0, 1,2, 3, 6, 4, 5, 7, 8]
        self.assertEqual(depth_first_search.DFS(inc, 0)["sequence"], result)

if __name__ == '__main__':
    unittest.main()
