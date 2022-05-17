<!DOCTYPE html>
% rebase('layout.tpl', title=title, year=year, sizeMat=sizeMat)

<body>
<form action = "/kruskal">
	<p>Enter the number of edges</p>
	<p><input type="number" name="sizeMatrix" id="sizeMatId" size="3" value = "{{sizeMat}}" min="1"></p>
	<p>Enter the number of vertices</p>
	<p><input type="number" name="vertice" id="verticId" size="3" value = "3" min="2"></p>
	<p><input type="submit" value="Create" href="/about" ></p>
	%for number in range(sizeMat):
		<input type="number" name="starting_vertex" size="3" value = "0">
		<input type="number" name="final_vertex" size="3" value = "0">
		<input type="number" name="rib_weight" size="3" value = "0">
		<br name="row0">
		</form>
</body>
</html>
