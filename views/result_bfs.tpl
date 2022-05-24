<!DOCTYPE html>

<body>
    <div class="jumbotron">   
        <head>
	        <meta charset="utf-8">
	        <title>BFS algorithm</title>
               <!-- Подключение стиля -->
	        <link href="/static/content/style.css" rel="stylesheet">        
        </head>
            <table cellspacing="0" id="maket" >
                <tr> 
                    <td id="leftcol">
                        <!-- Описание метода -->
                        <div style="width: inherit">
                            <div style=" margin: 5% ; width: 95%">
                                <!--Текст описания-->
                                <label>Breadth-first search (BFS) is an algorithm for searching a tree data structure for a node that satisfies
                                a given property. It starts at the tree root and explores all nodes at the present depth prior to moving 
                                on to the nodes at the next depth level</label> 
                            </div>

                            <div style="width: 100% ">
                                <!-- Анимация обхода -->
                                <img style=" margin:5% 0; width: 100%" align="middle|right" src="/static/img/bfs.gif">
                            </div>

                            <div style=" margin: 5% ; width: 95%">
                                <!--Текст описания алгоритма-->
                                <label> 
                                    <p>The standard DFS implementation places each vertex of the graph in one of two categories:</p>
                                        <ul>
                                        <li>Visited</li>
                                        <li>Unvisited</li>
                                        </ul>
                                        <p>The purpose of the algorithm is to mark each vertex as visited, avoiding cycles.</p>
                                        <p>The algorithm works as follows:</p>
                                        <ol>
                                        <li>Start by placing any vertex of the graph at the end of the queue.</li>
                                        <li>Take the front element of the queue and add it to the visited list.</li>
                                        <li>Create a list of adjacent nodes of this vertex. Add those that are not in the visited list to the end of the queue.</li>
                                        <li>Continue repeating steps 2 and 3 until the queue is empty.</li>
                                        </ol>
                                        <p>A graph can have two different unrelated parts, so to make sure we cover every vertex, we run the BFS algorithm on each node.</p>
                                </label> 
                            </div>
                            
                        </div>
                    </td>

                    <td id="rightcol">
                       <!-- Заголовок (название метода) -->
                        <h1 align = center>Breadth-first search algorithm</h1>
                        <!--Матрица, введённая пользователем -->  
                        <div style="width: inherit">
                            <div style=" margin: 5% ; width: 95%">
                                <!--Текст описания-->
                                <label>The introduced matrix:</label> 
                                <table><tbody>
                                %for i in range(size):
                                                    <tr>
                                                        %for j in range(size):                             
                                                        <td><input type="number" readonly value = "{{matrix1[i][j]}}"  inputmode="numeric"  class = "cell_bfs" name="{{i}}_{{j}}" ></td>
                                                        %end
                                                    </tr>
                                                    %end
                                </tbody></table>
                                <p> </p>
                                <!--Матрица с выводом результата --> 
                                <label>Result:</label> 
                                <table><tbody>                   
                                    %for i in range(size):
                                                    <tr>
                                                        %for j in range(size):                              
                                                        <td><input type="number" readonly value = "{{matrix2[i][j]}}" inputmode="numeric" class = "cell_bfs" name="{{i}}_{{j}}" ></td>
                                                        %end
                                                    </tr>
                                                    %end
                                                </tbody></table>
                                </tbody></table>

                                <label>Spanning tree:</label> 
                                <!--Вывод остовного дерева --> 
                                <label>
                                    <input style="width: 40% " readonly type="text" value = "{{path}}" class="step_title" style="max-width: 3.0em;" name="path" >
                                </label>

                            </div> 
                                

                        </div>

                       
                            
                    </td>
                </tr>
            </table>
           
        </div>
</body>