<!DOCTYPE html>
	% rebase('layout.tpl', title=title, year=year, sizeEdges=sizeEdges, sizeVertic=sizeVertic)
	
	<body>
	<!-- форма дл€ ввода вершин и ребер -->
		<form>
			<p>Enter the number of edges</p>
			<!-- ввод количества ребер -->
			<p><input type="number" name="setOfEdges" id="setOfEdgesId" size="3" value = "{{sizeEdges}}"	min="1"></p>
			<p>Enter the number of vertices</p>
			<!-- ввод количества вершин -->
			<p><input type="number" name="setOfVertice" id="verticId" size="3" value = "{{sizeVertic}}"		min="2"></p>
			<!-- кнопка дл€ отправки формы -->
			<p><input type="submit" value="Create"></p>
		</form>
		<!-- форма дл€ ввода значений (начальной вершины, конечной вершины и веса ребра между ними) -->
		<form method="post" action="/kruskal" enctype="text">
		<!-- цикл дл€ создани€ необходимого количества полей ввода -->
			%for i in range(sizeEdges):
				<input type="number" name="startingVertex" size="3" value = "0" min = "1" max = "{{sizeVertic}}" required>
				<input type="number" name="finalVertex" size="3" value = "0" min = "1" max = "{{sizeVertic}}" required>
				<input type="number" name="ribWeight" size="3" value = "0" min = "1" required>
				<br name="row0">
				%end
		<!-- кнопка дл€ отправки формы -->
			<p><input type="submit" value="Send" class="btn btn-default"></p>
		</form>
		<!-- форма с информацией о методе -->
		<form>
			<p>Kruskal's algorithm (or Kruskal's algorithm) is an efficient algorithm for constructing a minimal spanning tree of a weighted connected undirected graph. The algorithm is also used to find some approximations for the Steiner problem. The algorithm was first described by Joseph Kruskal in 1956.</p>
			<!-- gif-изображение с визуализацией нахождени€ остовного дерева -->
			<img class="thumbimage" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/MST_Kruskal.gif/450px-MST_Kruskal.gif" alt="" width="450" height="450" data-file-width="800" data-file-height="800">
			<p>Initially, the current set of edges is set empty. Then, as long as possible, the following operation is performed: from all the edges, the addition of which to the already existing set will not cause a cycle to appear in it, an edge of minimum weight is selected and added to the already existing set. When there are no more such edges, the algorithm is completed. A subgraph of a given graph containing all its vertices and the found set of edges is its minimum weight spanning tree.</p>
			<!-- видео с объ€снением алгоритма  раскала -->
			<iframe src="https://www.youtube.com/embed/mPObw3cJoTs?rel=0&amp;fs=1&amp;wmode=transparent" width="600" height="400" allow="autoplay; fullscreen; encrypted-media" allowfullscreen="true" frameborder="0" scrolling="no" title="JoomlaWorks AllVideos Player"></iframe>

		</form>

	</body>
</html>
