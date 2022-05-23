<!DOCTYPE html>
% rebase('layout.tpl', title=title, year=year)

<html>
	<head>
		<link href="static/content/style.css" rel="stylesheet" type="text/css">
	</head>

	<div class="jumbotron">
		<p class="hhh">Example: There are 5 contacts, the lengths of the wires are set.</p>
		<p class="hh2">1) We build a complete graph and calculate the distances for each element.</p>
		<img class="hh2" src="static/img/mat.jpg" hspace = "10px">
		<img class="hh2" src="static/img/mat2.jpg" hspace = "10px">
		<br></br>
		<img class="hh2" src="static/img/gr1.jpg"  hspace = "10px" float = left>
		<img class="hh2" src="static/img/gr2.jpg" hspace = "10px">
		<p class="hh2">k = nn-2; k - number of possible trees; n - number of vertices</p>
		<p class="hh2">The task is connected. with min length - building a min tree - min covering\binding</p>
		<p class="hh2">2) We take the proc. the top. Let = 4</p>
		<p class="hh2">3) We are looking in line 4 versh. with min value (versh. 1 is the value of 4). Connect 4 and 1</p>
		<p class="hh2">4) In the lines of the fragment (1 and 4), we are looking for the min number (versh. 3 is the value of 5). Soed. 1 and 3</p>
		<p class="hh2">5) Repeat item 4 for the received fragment</p>
		<br></br>
		<a class="button button1 hh2" href="/prim_algorithm">Back</a>



	
	</div>
</html>
