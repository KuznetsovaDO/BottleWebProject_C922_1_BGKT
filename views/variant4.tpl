<!DOCTYPE html>
% rebase('layout.tpl', title=title, year=year)

<html>
<div class="jumbotron">
<head>
<link href="static/content/style.css" rel="stylesheet" type="text/css">
  <h1 align = center>{{ title }}</h1>
</head>
<form action = "/variant4" method="post">
     <label align=center>{{title_size}}</label>
     <h1> </h1>
     <h1> </h1>
     <h1> </h1>
     <p class="hh2">Enter the number of vertices:</p>
      <style>
       select{width: 145px;}
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
    
     <button class="button button1 hh2">{{title_enter}}</button>
</form>
</div>
</html>