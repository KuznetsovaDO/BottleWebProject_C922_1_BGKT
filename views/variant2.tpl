<!DOCTYPE html>
% rebase('layout.tpl', title=title, year=year)
<div class="jumbotron">
    <head>
		    <meta charset="utf-8">
		    <title>DFS algorithm</title>
            <!-- Подключение стиля -->
		    <link href="/static/content/style.css" rel="stylesheet">
            
    </head>

    <body>
    <form action="/dfs" method = "GET">
        <!-- Заголовок (название метода) -->
        <h1 align = center>Depth-first search algorithm</h1>
        <!-- Описание метода -->
    <div style="width: inherit">
   <div style=" margin: 5% 1% 0 7%; width: 40%; float:left;">
        <p>{{description}}</p> 
   </div>
   <div style="width: 40%; float:right;">
        <img style="width: 100%" align="middle|right" src="/static/images/graph-in-depth.gif">
   </div>
   <br style="clear:both;"/>
</div>


<div>
        
        
        
        <!-- Форма для ввода размера матрицы -->
        <div style="margin: 5%" >
            <p align="center" class="hh2" style = "font-weight: bold;">Enter matrix size:</p>

            <!-- Поле для ввода -->
            <div align = "center">
                <input type="number" placeholder="size" name = "SIZE" value={{size}} min = "1" max = "10" border="5">
            </div>

            <!-- Кнопка "Создать матрицу" -->
            <div>
                <button style="margin: 10px 0px 5%" class="button button1 hh2" type="submit" value="Create" name = "Button"  href="/variant2">create</button>
            </div>
        </div
    
        <!-- Надпись "Введите матрицу" -->
        <p align="center" class="hh2" style = "font-weight: bold;">Enter the matrix:</p>

        <!-- Таблица для вводы матрицы -->

            <table align="center"><tbody>
                <!-- Цикл для создания строк матрицы -->
                %for i in range(size):
                    <tr>
                        <!-- Цикл для создания столбцов матрицы -->
                        %for j in range(size):
                            <!-- Проверка, нужно ли выводить раннее введенную матрицу-->
                            %if (check =='true'):
                                %if (j>i):
                                    <!-- Выше диагонали ячейки доступны для ввода -->
                                    <td><input type="number" min="0" max="1" inputmode="numeric"  style="max-width: 3.0em;" name="{{i}}_{{j}}" value = {{matrix[i][j]}}></td>
                                %else:
                                    <!-- Ниже диагонали ячейки для ввода недоступны -->
                                    <td><input type="number" min="0" max="1" inputmode="numeric"  style="max-width: 3.0em;" name="{{i}}_{{j}}" value = {{matrix[i][j]}} disabled></td>
                                %end
                            %else:
                                %if (j>i):
                                    <td><input type="number" min="0" max="1" inputmode="numeric"  style="max-width: 3.0em;" name="{{i}}_{{j}}"></td>
                                %else:
                                    <td><input type="number" min="0" max="1" inputmode="numeric"  style="max-width: 3.0em;" name="{{i}}_{{j}}" disabled></td>
                                %end
                            %end
                        %end
                    </tr>
                %end
            </table></tbody>

                <button style="margin: 10px 0px 5%" class="button button1 hh2" type="submit" value="Send" name = "Button" >find the spanning tree</button>
        </div>
        </div>
 
       </form> 

        % if (check == 'true'):
            <section>
                <h2 style="padding: 15px;">Result</h2>
                    <div style="padding: 15px;" >
                    <table><tbody>
                        %for i in range(size):
                        <tr>
                            %for j in range(size):
                            <td><input type="number" min="0" max="1" inputmode="numeric"  style="max-width: 3.0em;" name="{{i}}_{{j}}" value = "{{result[i][j]}}" readonly></td>
                            %end
                        </tr>
                        %end
                    </tbody></table>
                    </div>
            </section>

    
    </body
</div>
