<!DOCTYPE html>
% rebase('layout.tpl', title=title, year=year, T=T, R=R, U=U, Rs=Rs, D=D, errors=errors)

<body>
% if len(errors) != 0:
<p> {{errors}} </p>
% end
% if len(errors) == 0:
<p> Entered values </p>
<p><table cellspacing="3" border="1" cellpadding="5">
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
    The first step to find the minimum spanning tree is to sort the entered data in ascending order of the edge weight

    <p><table cellspacing="3" border="1" cellpadding="5">
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

<p><table cellspacing="3" border="1" cellpadding="5">
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
</body>
</html>