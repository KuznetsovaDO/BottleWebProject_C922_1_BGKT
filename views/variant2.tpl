<!DOCTYPE html>
% rebase('layout.tpl', title=title, year=year)
<div class="jumbotron">
    <head>
		    <meta charset="utf-8">
		    <title>DFS algorithm</title>
            <!-- ����������� ����� -->
		    <link href="/static/content/style.css" rel="stylesheet">
            
    </head>

    <body class="var2">
    <form action="/dfs" method = "GET">
        <!-- ��������� (�������� ������) -->
        <h1 align = center>Depth-first search algorithm</h1>
        <!-- �������� ������ -->
        <div style="width: inherit">
            <div style=" margin: 5% ; width: 45%; float:left;">
                <!--����� ��������-->
                <label>"Depth-first search (DFS) is a recursive algorithm for traversing a tree or graph, starting at the root vertex (in the case of a graph, an arbitrary vertex can be selected) 
                and recursively traversing the entire graph, visiting each vertex exactly once."</label> 
            </div>
            <div style="width: 40%; float:right;">
                <!-- �������� ������ -->
                <img style=" margin:5% 0; width: 100%" align="middle|right" src="/static/images/graph-in-depth.gif">
            </div>
            <br style="clear:both;"/>
        </div>

        <!-- ����� ��� ����� ������� ������� -->
        <div style="margin: 5%" >
            <p align="center" class="step_title">Enter matrix size:</p>

            <!-- ���� ��� ����� -->
            <div align = "center">
                <input class="matrix_size" type="number" placeholder="size" name = "SIZE" value="{{size}}" min = "1" border="5">
            </div>

            <!-- ������ "������� �������" -->
            <div>
                <button style="margin: 10px 0px 5%" class="button button1 hh2" type="submit" value="Create" name = "Button"  href="/variant2">create</button>
            </div>
        </div>

        <p>{{error}}</p>
     
        <!-- ������� ��� ����� ������� -->
        <table align="center">
            <p align="center" class="step_title">Enter the matrix:</p>
            <tbody>
                <!-- ���� ��� �������� ����� ������� -->
                %for i in range(size):
                    <tr>
                        <!-- ���� ��� �������� �������� ������� -->
                        %for j in range(size):
                            <!-- ��������, ������ �� ������������ �������-->
                            %if (check =='true'):
                                <!-- ���� ��������� ������ ��� ����� ���������� ��� ��������������-->
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
        <!-- ������ -->
        <button style="margin: 10px" class="button button1 hh2" type="submit" value="Send" name = "Button" >find the spanning tree</button>
    </form> 

    <!-- ����� ������� ��������� ������ -->
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
