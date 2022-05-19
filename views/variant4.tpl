<!DOCTYPE html>
% rebase('layout.tpl', title=title, year=year)
% rebase('layout.tpl', title=title, year=year)

<html>
<div class="jumbotron">
<head>
<link href="static/content/style.css" rel="stylesheet" type="text/css">
  <h2 align = center>{{ title }}</h2>
</head>
<form action = "/variant4" method="post">
     <p align=center>{{title_size}}</p>
     <p align=center>               </p>
     <p align=center>Enter the number of vertices</p>
      <style>
       select{width: 150px;}
      </style>
     <p align=center>
         <select name = "GetValue">
         <option value = 3> 3 </option>
          <option value = 4> 4 </option>
          <option value = 5> 5 </option>
          <option value = 6> 6 </option>
          <option value = 7> 7 </option>
          <option value = 8> 8 </option>
          <option value = 9> 9 </option>
         </select>
     </p>
    
     <button class="button button1">{{title_enter}}</button>
</form>
</div>
</html>