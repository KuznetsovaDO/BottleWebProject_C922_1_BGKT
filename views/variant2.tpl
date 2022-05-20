<!DOCTYPE html>
% rebase('layout.tpl', title=title, year=year)
<div class="jumbotron">
<head>
		<meta charset="utf-8">
		<title>DFS algorithm</title>
		<link href="/static/content/style.css" rel="stylesheet">
         <h1 align = center>Depth-first search algorithm</h1>
</head>
<form action="/dfs" method = "GET">
<body>       
    <label align=center>{{description}}</label>
    <p> </p>
            <div>
                
                    <p align=center class="hh2">Enter matrix size:
                    
                    <input type="number" placeholder="size" name = "SIZE" value={{size}} min = "1" max = "10" border="5">
                    <button class="button button1 hh2" type="submit" value="Create" name = "Button"  href="/variant2">
                    </p>
                
            </div

    <section>
        <h2 style="padding: 15px;">Enter matrix</h2>
            <div style="padding: 15px;" >
                <table><tbody>
                    %for i in range(size):
                    <tr>
                        %for j in range(size):
                            %if (check =='true'):
                                %if (j>=i):
                                    <td><input type="number" min="0" max="1" inputmode="numeric"  style="max-width: 3.0em;" name="{{i}}_{{j}}" value = {{matrix[i][j]}}></td>
                                %else:
                                    <td><input type="number" min="0" max="1" inputmode="numeric"  style="max-width: 3.0em;" name="{{i}}_{{j}}" value = {{matrix[i][j]}} disabled></td>
                                %end
                            %else:
                                %if (j>=i):
                                    <td><input type="number" min="0" max="1" inputmode="numeric"  style="max-width: 3.0em;" name="{{i}}_{{j}}"></td>
                                %else:
                                    <td><input type="number" min="0" max="1" inputmode="numeric"  style="max-width: 3.0em;" name="{{i}}_{{j}}" disabled></td>
                                %end
                            %end
                        %end
                    </tr>
                    %end
                </tbody></table>
                <label><input type="checkbox" _istranslated="1"> Generate</label>
                <p><input type="submit" value="Send" name = "Button"></p>
            </div>
 
    </section>   </form> 

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
