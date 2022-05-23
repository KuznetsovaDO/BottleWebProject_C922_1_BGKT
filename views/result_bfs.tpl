<!DOCTYPE html>


<table><tbody>
%for i in range(size):
                    <tr>
                        %for j in range(size):
                        <!-- Ниже диагонали ячейки для ввода недоступны для симметричности-->
                                
                        <td><input type="number" value = "{{matrix1[i][j]}}" min="0" max="1" inputmode="numeric"  style="max-width: 3.0em;" name="{{i}}_{{j}}" ></td>
                        %end
                    </tr>
                    %end
</tbody></table>
<p> </p>
<table><tbody>
                   
    %for i in range(size):
                    <tr>
                        %for j in range(size):
                        <!-- Ниже диагонали ячейки для ввода недоступны для симметричности-->
                                
                        <td><input type="number" value = "{{matrix2[i][j]}}" min="0" max="1" inputmode="numeric"  style="max-width: 3.0em;" name="{{i}}_{{j}}" ></td>
                        %end
                    </tr>
                    %end
                </tbody></table>
</tbody></table>

<label>
    <input style="width: 40% " type="text" value = "{{path}}"  style="max-width: 3.0em;" name="path" >

</label>
</html>