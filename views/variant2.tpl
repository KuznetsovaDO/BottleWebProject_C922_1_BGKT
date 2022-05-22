<!DOCTYPE html>
% rebase('layout.tpl', title=title, year=year)
<div class="jumbotron">
    <head>
		    <meta charset="utf-8">
		    <title>DFS algorithm</title>
            <!-- Подключение стиля -->
		    <link href="/static/content/style.css" rel="stylesheet">
            
    </head>

    <body class="var2">
    <form action="/dfs" method = "GET">
        <!-- Заголовок (название метода) -->
        <h1 align = center>Depth-first search algorithm</h1>
        <!-- Описание метода -->
        <div style="width: inherit">
            <div style=" margin: 5% ; width: 45%; float:left;">
                <!--Текст описания-->
                <label>"Depth-first search (DFS) is a recursive algorithm for traversing a tree or graph, starting at the root vertex (in the case of a graph, an arbitrary vertex can be selected) 
                and recursively traversing the entire graph, visiting each vertex exactly once."</label> 
            </div>
            <div style="width: 40%; float:right;">
                <!-- Анимация обхода -->
                <img style=" margin:5% 0; width: 100%" align="middle|right" src="/static/images/graph-in-depth.gif">
            </div>
            <br style="clear:both;"/>
        </div>

        <!-- Форма для ввода размера матрицы -->
        <div style="width: inherit">
            <div style=" margin: 5% ; width: 40%; float:left;">
            <p align="center" class="step_title">Matrix size:</p>

            <!-- Поле для ввода -->
            <div align = "center">
                <input class="matrix_size" type="number" placeholder="size" name = "SIZE" value="{{size}}" min = "1" border="5">
            </div>

            <!-- Кнопка "Создать матрицу" -->
            <div>
                <button style="margin: 10px 0px 5%" class="button button1 hh2" type="submit" value="Create" name = "Button"  href="/variant2">create</button>
            </div>
            </div>

            <div style="margin: 5% ; width: 40%; float:right;">
                <p align="center" class="step_title">Starting vertex</p>
                <div align = "center">
                    <input class="matrix_size" type="number" placeholder="vertex" name = "START" value="{{start}}" min = "1">
                </div>
            </div>
            <br style="clear:both;"/>

        </div>

        <!-- Для вывода сообщения об ошибке -->
        <p class="error">{{error}}</p>

        <!-- Таблица для вводы матрицы -->
        <table align="center">
            <p align="center" class="step_title">Enter the matrix:</p>
            <tbody>
                <!-- Цикл для создания строк матрицы -->
                %for i in range(size):
                    <tr>
                        <!-- Цикл для создания столбцов матрицы -->
                        %for j in range(size):
                            <!-- Проверка, вводил ли пользователь матрицу-->
                            %if (check =='true'):
                                <!-- Ниже диагонали ячейки для ввода недоступны для симметричности-->
                                %if (i>=j):
                                    %disabled="disabled"
                                %else:
                                    %disabled=""
                                %end
                                <td><input class = "cell" type="number" min="0" max="1" inputmode="numeric"   name="{{i}}_{{j}}" value = {{matrix[i][j]}} {{disabled}}></td>
                            %else:
                                %if (i>=j):
                                    %disabled="disabled"
                                %else:
                                    %disabled=""
                                %end
                                <td><input class = "cell" type="number" min="0" max="1" inputmode="numeric"   name="{{i}}_{{j}}" {{disabled}}></td>
                            %end
                        %end
                    </tr>
                %end
        </table></tbody>
        <!-- Кнопка -->
        <button style="margin: 10px" class="button button1 hh2" type="submit" value="Send" name = "Button" >find the spanning tree</button>
    </form> 

    <!-- Вывод матрицы остовного дерева -->
    % if (check == 'true'):
        <p align="center" class="step_title">Result:</p>
        <table align="center"><tbody>
            %for i in range(size):
                <tr>
                %for j in range(size):
                    <td><input class="cell" type="number" min="0" max="1" name="{{i}}_{{j}}" value = "{{result[i][j]}}" readonly></td>
                %end
                </tr>
            %end
        </tbody></table>
    </body
</div>
