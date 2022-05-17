<!DOCTYPE html>
% rebase('layout.tpl', title=title, year=year, sizeEdges=sizeEdges, sizeVertic=sizeVertic)

<body>
<form action = "/kruskal">
	<p>Enter the number of edges</p>
	<p><input type="number" name="setOfEdges" id="setOfEdgesId" size="3" value = "{{sizeEdges}}" min="1"></p>
	<p>Enter the number of vertices</p>
	<p><input type="number" name="setOfVertice" id="verticId" size="3" value = "{{sizeVertic}}" min="2"></p>
	<p><input type="submit" value="Create" href="/about" ></p>
	%for number in range(sizeEdges):
		<input type="number" name="starting_vertex" size="3" value = "0">
		<input type="number" name="final_vertex" size="3" value = "0">
		<input type="number" name="rib_weight" size="3" value = "0">
		<br name="row0">
		</form>
</body>
</html>
