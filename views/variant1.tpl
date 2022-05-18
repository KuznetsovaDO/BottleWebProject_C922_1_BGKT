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
                <table><tbody>
                    %for i in range(size):
                    <tr>
                        %for j in range(size):
                        <td><input type="number" value = "0" inputmode="numeric"  style="max-width: 3.0em;" name="{{i}}_{{j}}"></td>
                        %end
                    </tr>
                    %end
                </tbody></table>

                
            </div>
        
    </section>
