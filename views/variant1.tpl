<!DOCTYPE html>
% rebase('layout.tpl', title=title, year=year)

<body>       
    <div>
        <h2 style="padding: 15px;">The search algorithm is "in width"</h2>
            <div>
                <form style="padding: 15px;" action="/variant1">
                    
                   
                </form>
               
            </div>
    </div>

    <section>
            <div style="padding: 15px;" >
            <form action='/variant1_4' method = "GET">
                <table><tbody>
                    %for i in range(size):
                    <tr>
                        %for j in range(size):
                        <td><input type="number" value = "0" min="0" max="1" inputmode="numeric"  style="max-width: 3.0em;" name="{{i}}_{{j}}"></td>
                        %end
                    </tr>
                    %end
                </tbody></table>
                <input type="submit" name="nubex" value=" GO!" />
            </form>

            <form action = '/variant1_2'><p> </p>
                <input onclick = '/variant1_4' type="submit"  name="nubex" value=" Increase the size of the matrix" />
            </form>

            <form action = '/variant1_3'><p> </p>
                <p> </p>
                <input type="submit" name="nubex" value=" Reduce the size of the matrix" />
                <label for="">Dimension of the matrix: {{size}} X {{size}} </label> 
            </form>

            
            </div>
        
    </section>
