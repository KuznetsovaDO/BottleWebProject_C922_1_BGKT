<!DOCTYPE html>
% rebase('layout.tpl', title=title, year=year)

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
                        <form action='/bfs' method = "GET">
                           <!-- Вывод размера матрицы -->
                            <div style="width: inherit">
                                <div style=" margin: 5% ; width: 50%; float:center;">
                                    <label align="center" class="step_title">Dimension of the matrix: {{size}}X{{size}}</label> 
                                    <label align="center" class="step_title">Start vertex</label>
                                    <input type ="number" name = "start" style=" margin: 5% ; width: 30%" value = "1" min="1" max="{{size}}">
                                    <!-- Таблица для ввода матрицы -->
                                    <table><tbody>
                                        %for i in range(size):
                                        <tr>
                                            %for j in range(size):
                                                <!-- Ниже диагонали ячейки для ввода недоступны для симметричности-->  
                                                %if i>=j:
                                                    <td><input type="number" value = "0" min="0" max="1" inputmode="numeric"  style="max-width: 2.5em;" name="{{i}}_{{j}}" disabled ></td>
                                                %else:
                                                    <td><input type="number" value = "0" min="0" max="1" inputmode="numeric"  style="max-width: 2.5em;" name="{{i}}_{{j}}"></td>
                                                %end
                                            %end
                                        </tr>
                                        %end
                                    </tbody></table>
                                    <div >
                                        <div style=" margin: 2% ; width: 50%; float:left;" >
                                            <!--Кнопка для добавления вершины-->
                                            <button align = "center" class="step_button" onclick = '/variant1_4' type="submit" value="Add" name = "Button" >add a vertex</button>
                                        </div>
                                        <div style="margin: 2% ; width: 40%; float:right;">
                                            <!-- Кнопка для удаления вершины -->
                                            <button align="center" class="step_button" onclick = '/variant1_4' type="submit" value="Remove" name = "Button" >remove a vertex</button>
                                        </div>
                                        <br style="clear:both;"/>
                                    </div>
                                    <!-- Кнопка для решения -->
                                    <button class="button button1 hh2" type="submit" value="Find" name = "Button" >find the spanning tree</button>                                                                                                 
                                </div>
                            </div>
                        </form>
                    </td>
                </tr>
            </table>
           
        </div>
</body>