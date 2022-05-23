<!DOCTYPE html>
% rebase('layout.tpl', title=title, year=year)

<html>
<div class="jumbotron">
<head>
<link href="static/content/style.css" rel="stylesheet" type="text/css">
  <h1 align = center>{{ title }}</h1>
</head>
<form action = "/primansw" method="post">
     <label align=center>{{title_size}}</label>
     <br>
     <p class="hhh">How does it work?</p>
     <h1></h1>
     <h1></h1>
     <h1></h1>
     <p class="hh2">1. An arbitrary vertex is selected and connected to the nearest one (by the shortest path). It turns out a fragment of two elements.</p>
     <p class="hh2">2. The vertex closest to the fragment is selected (that is, the minimum distance from any vertex included in the fragment to any one not yet included in it). This vertex is added to the fragment.</p>
     <p class="hh2">3. Repeat step 2 until there are vertices that do not belong to the fragment.
It is convenient to represent the graph as a matrix of connections.</p>
     <a href="/primex" style="text-decoration: none;">
        <p class="hh2">Example</p>
     </a>
    <br >
     <p class="hhh">Enter the number of vertices:</p>
      <style>
       select{width: 110px;}
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
    <!--<a href="post" class="fciA navItem"><span class="fciSpan">Demo</span></a>-->
     <button class="bott">{{title_enter}}</button>

    
</form>
</div>
</html>