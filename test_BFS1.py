import unittest, re, breadth_first_search

class Test_dfs(unittest.TestCase):

    def test_A(self):
        list_table_cor = [[[0,1,0,0,0,0,0,1,0],
                           [1,0,1,0,0,0,0,1,0],
                           [0,1,0,1,0,0,0,1,0],
                           [0,0,1,0,0,0,1,0,1],
                           [0,0,0,0,0,1,1,0,0],
                           [0,0,0,0,1,0,0,0,0],
                           [0,0,0,1,1,0,0,1,0],
                           [1,1,1,0,0,0,1,0,0],
                           [0,0,0,1,0,0,0,0,0]],

                           [[0,1,1,0,0],
                           [1,0,1,0,0],
                           [1,1,0,1,0],
                           [0,0,1,0,1],
                           [0,0,0,1,0]]]
        flagCor=True
        start = 1
        for table in list_table_cor:
            if len(breadth_first_search.shirina(table, start)) == 0:
                flagCor = True
        self.assertTrue(flagCor)
        self.fail("Not implemented")

if __name__ == '__main__':
    unittest.main()

        