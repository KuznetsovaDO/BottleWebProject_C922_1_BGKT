<!DOCTYPE html>
	% rebase('layout.tpl', title=title, year=year, sizeEdges=sizeEdges, sizeVertic=sizeVertic)
	
	<body>

		<form>
			<p>Enter the number of edges</p>
			<p><input type="number" name="setOfEdges" id="setOfEdgesId" size="3" value = "{{sizeEdges}}"	min="1"></p>
			<p>Enter the number of vertices</p>
			<p><input type="number" name="setOfVertice" id="verticId" size="3" value = "{{sizeVertic}}"		min="2"></p>
			<p><input type="submit" value="Create"></p>
		</form>
		<form method="post" action="/kruskal" enctype="text">
			%for i in range(sizeEdges):
				<input type="number" name="startingVertex" size="3" value = "0" min = "1" max = "{{sizeVertic}}" required>
				<input type="number" name="finalVertex" size="3" value = "0" min = "1" max = "{{sizeVertic}}" required>
				<input type="number" name="ribWeight" size="3" value = "0" min = "1" required>
				<br name="row0">
				%end
			<p><input type="submit" value="Send" class="btn btn-default"></p>
		</form>
		
	</body>
</html>
