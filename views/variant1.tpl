<!DOCTYPE html>
% rebase('layout.tpl', title=title, year=year)
<body>       
    <div>
        <h2 style="padding: 15px;">The search algorithm is "in width"</h2>
            <div>
                <form style="padding: 15px;" action="/variant1">
                    <label for="SIZE">Matrix size</label>
                    <input type="number" placeholder="size" name = "SIZE" min = "1" max = "10">
                    <input type="submit" value="Create"  href="/variant1">
                </form>
            </div>
    </div>

    <section>
        <h2 style="padding: 15px;">Enter matrix</h2>
            <div style="padding: 15px;" >
                <table><tbody>
                    %for i in range(size):
                    <tr>
                        %for j in range(size):
                        <td><input type="number" min="0" max="1" inputmode="numeric"  style="max-width: 3.0em;" name="{{i}}_{{j}}"></td>
                        %end
                    </tr>
                    %end
                </tbody></table>
                <label><input type="checkbox" _istranslated="1"> Generate</label>
                <p><input type="submit" value="Send"></p>
            </div>
        
    </section>
</body>