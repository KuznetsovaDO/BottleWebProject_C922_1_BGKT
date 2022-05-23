<!DOCTYPE html>
% rebase('layout.tpl', title=title, year=year)
<body>
<div class="jumbotron">
    
    <head>
	    <meta charset="utf-8">
	    <title>BFS algorithm</title>
           <!-- ����������� ����� -->
	    <link href="/static/content/style.css" rel="stylesheet">        
    </head>


   
    
        <!-- ��������� (�������� ������) -->
        <h1 align = center>Breadth-first search algorithm</h1>
        <!-- �������� ������ -->
        <div style="width: inherit">
            <div style=" margin: 5% ; width: 45%; float:left;">
                <!--����� ��������-->
                <label>Breadth-first search (BFS) is an algorithm for searching a tree data structure for a node that satisfies
                a given property. It starts at the tree root and explores all nodes at the present depth prior to moving 
                on to the nodes at the next depth level</label> 
            </div>
            <div style="width: 40%; float:right;">
                <!-- �������� ������ -->
                <img style=" margin:5% 0; width: 100%" align="middle|right" src="/static/img/bfs.gif">
            </div>
            <br style="clear:both;"/>
        </div>
    <form action='/bfs' method = "GET">
        <!-- ����� ������� ������� -->
        <div style="width: inherit">
            <div style=" margin: 5% ; width: 40%; float:left;">
                <label align="center" class="step_title" >Dimension of the matrix: {{size}} X {{size}} </label> 
                <label>Start vertex</label>
                <input type ="number" name = "start" value = "1">
                <!-- ������� ��� ����� ������� -->
                <table><tbody>
                    %for i in range(size):
                    <tr>
                        %for j in range(size):
                            <!-- ���� ��������� ������ ��� ����� ���������� ��� ��������������-->  
                            %if i>=j:
                                <td><input type="number" value = "0" min="0" max="1" inputmode="numeric"  style="max-width: 3.0em;" name="{{i}}_{{j}}" disabled ></td>
                            %else:
                                <td><input type="number" value = "0" min="0" max="1" inputmode="numeric"  style="max-width: 3.0em;" name="{{i}}_{{j}}"></td>
                            %end
                        %end
                    </tr>
                    %end
                </tbody></table>
                <!-- ������ ��� ������� -->
                <button class="button button1 hh2" type="submit" value="Find" name = "Button" >find the spanning tree</button>
            
                <!-- ������ ��� ���������� ������� -->
                <button align = "center" class="button button1 hh2" onclick = '/variant1_4' type="submit" value="Add" name = "Button" >ADD A VERTEX</button>
                <!-- ������ ��� �������� ������� -->
                <button align="center" class="button button1 hh2" onclick = '/variant1_4' type="submit" value="Remove" name = "Button" >REMOVE A VERTEX</button>
            </div>
        </div>
    </form>
</div>
</body>