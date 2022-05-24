    <!DOCTYPE html>
% rebase('layout.tpl', title=title, year=year)
<body>
    <head>
		    <meta charset="utf-8">
		    <title>DFS algorithm</title>
            <!-- ����������� ����� -->
		    <link href="/static/content/style.css" rel="stylesheet">
            
    </head>
    <div class="jumbotron">
    
    
    <form action="/dfs" method = "GET">
        <!-- ��������� (�������� ������) -->
        <h1 align = center>Depth-first search algorithm</h1>
        <!-- �������� ������ -->
        <div style="width: inherit">
            <div style=" margin: 2% 4.5% ; width: 50%; float:left;">
                <!--����� ��������-->
                <label class="description">Depth-first search (DFS) is a recursive algorithm for traversing a tree or graph, starting at the root vertex (an arbitrary vertex can be selected) 
                and recursively traversing the entire graph, visiting each vertex exactly once.</label>
                <label class="description desc-bold">How to use the calculator?</label>

                <label class="description">1. Enter the size of the adjacency matrix (the number of vertices in the graph).</label>
                <label class="description">2. Enter half of the matrix, the second half will be filled in symmetrically automatically. The graph of the adjacency matrix must be connected.</label>
                <label class="description">3. Enter the starting vertex of the graph to traverse.</label>
            </div>
            <div style="width: 40%; float:right;">
                <!-- �������� ������ -->
                <img style=" margin:5% 0; width: 100%" align="middle|right" src="/static/images/graph-in-depth.gif">
            </div>
            <br style="clear:both;"/>
        </div>

        <!-- ����� ��� ����� ������� ������� -->
      
            <p align="center" class="step_title">1. Enter a matrix size:</p>

            <!-- ���� ��� ����� -->
            <div align = "center">
                <input class="matrix_size matrix_size2" type="number" placeholder="size" name = "SIZE" value="{{size}}" min = "2" border="5">
            

            <!-- ������ "������� �������" -->
            
                <button align = "center" class="step_button" type="submit" value="Create" name = "Button"  href="/variant2">create</button>
            </div>
            
        

        <!-- ��� ������ ��������� �� ������ -->
        <p class="error">{{error}}</p>

        <!-- ������� ��� ����� ������� -->
        <table align="center">
            <p align="center" class="step_title">2. Enter the matrix:</p>
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
        
        <div style = "margin: 2%" align = "center">
            <p  class="step_title">3. Enter starting vertex</p>
            <input class="matrix_size matrix_size2" type="number" placeholder="vertex" name = "START" value="{{start}}" min = "1" max = "{{size}}">
        
        <!-- ������ -->
        <button class="step_button" type="submit" value="Send" name = "Button" >find the spanning tree</button>
        </div>
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
        <p align="center" class="step_title">vertex traversal sequence: {{sequence}}</p>
  </body>
 </div>
</html>

