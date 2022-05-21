<!DOCTYPE html>
% rebase('layout.tpl', title=title, year=year)
<div class="jumbotron">
    <head>
		    <meta charset="utf-8">
		    <title>DFS algorithm</title>
            <!-- ����������� ����� -->
		    <link href="/static/content/style.css" rel="stylesheet">
            
    </head>

    <body>
    <form action="/dfs" method = "GET">
        <!-- ��������� (�������� ������) -->
        <h1 align = center>Depth-first search algorithm</h1>
        <!-- �������� ������ -->
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
        
        
        
        <!-- ����� ��� ����� ������� ������� -->
        <div style="margin: 5%" >
            <p align="center" class="hh2" style = "font-weight: bold;">Enter matrix size:</p>

            <!-- ���� ��� ����� -->
            <div align = "center">
                <input type="number" placeholder="size" name = "SIZE" value={{size}} min = "1" max = "10" border="5">
            </div>

            <!-- ������ "������� �������" -->
            <div>
                <button style="margin: 10px 0px 5%" class="button button1 hh2" type="submit" value="Create" name = "Button"  href="/variant2">create</button>
            </div>
        </div
    
        <!-- ������� "������� �������" -->
        <p align="center" class="hh2" style = "font-weight: bold;">Enter the matrix:</p>

        <!-- ������� ��� ����� ������� -->

            <table align="center"><tbody>
                <!-- ���� ��� �������� ����� ������� -->
                %for i in range(size):
                    <tr>
                        <!-- ���� ��� �������� �������� ������� -->
                        %for j in range(size):
                            <!-- ��������, ����� �� �������� ������ ��������� �������-->
                            %if (check =='true'):
                                %if (j>i):
                                    <!-- ���� ��������� ������ �������� ��� ����� -->
                                    <td><input type="number" min="0" max="1" inputmode="numeric"  style="max-width: 3.0em;" name="{{i}}_{{j}}" value = {{matrix[i][j]}}></td>
                                %else:
                                    <!-- ���� ��������� ������ ��� ����� ���������� -->
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
