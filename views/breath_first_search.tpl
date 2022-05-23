<!DOCTYPE html>
% rebase('layout.tpl', title=title, year=year)
<div class="jumbotron">
    <head>
		    <meta charset="utf-8">
		    <title>BFS algorithm</title>
            <!-- Подключение стиля -->
		    <link href="/static/content/style.css" rel="stylesheet">
            
    </head>


    <body class="var1">
    <form action='/variant1_4' method = "GET">
        <!-- Заголовок (название метода) -->
        <h1 align = center>Breadth-first search algorithm</h1>
        <!-- Описание метода -->
        <div style="width: inherit">
            <div style=" margin: 5% ; width: 45%; float:left;">
                <!--Текст описания-->
                <label>Breadth-first search (BFS) is an algorithm for searching a tree data structure for a node that satisfies
                a given property. It starts at the tree root and explores all nodes at the present depth prior to moving 
                on to the nodes at the next depth level</label> 
            </div>
            <div style="width: 40%; float:right;">
                <!-- Анимация обхода -->
                <img style=" margin:5% 0; width: 100%" align="middle|right" src="/static/img/bfs.gif">
            </div>
            <br style="clear:both;"/>
        </div>

        <!-- Форма для ввода размера матрицы -->
        <div style="width: inherit">
            <div style=" margin: 5% ; width: 40%; float:left;">
            <label for="" align="center" class="step_title" >Dimension of the matrix: {{size}} X {{size}} </label> 


            <!-- Поле для ввода -->

            <div style="padding: 10px;" >
            <form action='/variant1_4' method = "GET">
                <table><tbody>
                    %for i in range(size):
                    <tr>
                        %for j in range(size):
                        <!-- Ниже диагонали ячейки для ввода недоступны для симметричности-->
                                
                        <td><input type="number" value = "0" min="0" max="1" inputmode="numeric"  style="max-width: 3.0em;" name="{{i}}_{{j}}" ></td>
                        %end
                    </tr>
                    %end
                </tbody></table>
                <button class="button button1 hh2" type="submit" value="Send" name = "Button" >find the spanning tree</button>

  
            </form>

            <form action = '/variant1_2'><p> </p>
                
                <button class="button button1 hh2" onclick = '/variant1_4' type="submit" value="Send" name = "Button" >ADD A VERTEX</button>
            </form>

            <form action = '/variant1_3'><p> </p>
                <p> </p>
                <button class="button button1 hh2" onclick = '/variant1_4' type="submit" value="Send" name = "Button" >REMOVE A VERTEX</button>
            </form>

            
            </div>

