<!DOCTYPE html>
% rebase('layout.tpl', title=title, year=year, T=T, R=R, U=U, Rs=Rs, D=D, errors=errors, process=process)
<link href="/static/content/style.css" rel="stylesheet">
	<div class="jumbotron">
<body>
<!-- форма с выводом результата по методу Крускала -->
<form align = center>
<!-- проверка на наличие ошибок в введенных данных -->
% if len(errors) != 0:
<p class="hhh">Error</p>
<!-- вывод информации об ошибкая -->
<p>When entering data, you made the following mistakes:</p>
<!-- ошибка не связанного графа -->
% if "ne svyazan" in errors:
<p>The graph is not connected. Make sure that the data is correct. There is no minimum backbone in an unrelated graph.</p>
% end
<!-- ошибка наличия петель -->
% if "petlya" in errors:
<p>There is a loop in the graph. Make sure that all the data is entered correctly. Loops cannot be part of a minimal spanning tree, so enter the data ignoring all loops in the graph.</p>
% end
<!-- ошибка наличия повторов при вводе ребер -->
% if "povtor" in errors:
<p>In the introduced graph there is a repetition of the same edge. Check the correctness of the entered data and try again.</p>
% end
% end
<!-- вывод результата при правильном вводе данных -->
% if len(errors) == 0:
<p class="hhh">Solution by Kruslak 's algorithm</p>
<p> <label>Source data (make sure all data has been entered correctly): </label></p>
<!-- вывод данных, которые ввел пользователь -->
<p><table align = center cellspacing="3" border="1" cellpadding="5">
    <tr>
            <td>weight</td>
            <td>sart</td>
            <td>final</td>
        </tr>
        % for row in R:
        <tr>
            % for value in row:
            <td>{{ value }}</td>
            % end
        </tr>
        % end
    </table></p>
    <!-- описание первого этапа алгоритма -->
    <p> <label>The first step to find the minimum spanning tree is to sort the entered data in ascending order of the edge weight.</label></p>
    <!-- вывод результата сортировки графа -->
    <p><table align = center cellspacing="3" border="1" cellpadding="5">
    <tr>
            <td>weight</td>
            <td>sart</td>
            <td>final</td>
        </tr>
        % for row in Rs:
        <tr>
            % for value in row:
            <td>{{ value }}</td>
            % end
        </tr>
        % end
    </table></p>
    <!-- вывод поэтапного пояснения действия алгоритма -->
    % i = 0
    % for pr in process:
    <p><label>{{pr}}</label></p>
    % if "part of the spanning tree" in pr:
    % i += 1
    <table align = center cellspacing="3" border="1" cellpadding="5">
    <tr>
            <td>weight</td>
            <td>sart</td>
            <td>final</td>
        </tr>
        % for j in range(i):
        <tr>
            % for value in T[j]:
            <td>{{ value }}</td>
            % end
        </tr>
        % end
    </table></p>

    %end
    % end
    <!-- вывод итогового ответа -->
    <p class="hhh">The result of the search for the minimum spanning tree by the Kruskal method: </p>
<p><table align = center cellspacing="3" border="1" cellpadding="5">
    <tr>
            <td>weight</td>
            <td>sart</td>
            <td>final</td>
        </tr>
        % for row in T:
        <tr>
            % for value in row:
            <td>{{ value }}</td>
            % end
        </tr>
        % end
    </table></p>
    % end
    </form>
    <br \><br \>
    <form action="/kruskal">
   <p class="hhh"><input type="submit" value="Back"></p>
</body>
</div>
</html>