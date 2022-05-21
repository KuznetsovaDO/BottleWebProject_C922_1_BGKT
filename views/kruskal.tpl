<!DOCTYPE html>
	% rebase('layout.tpl', title=title, year=year, sizeEdges=sizeEdges, sizeVertic=sizeVertic)
	<link href="/static/content/style.css" rel="stylesheet">
	<style>
	.border {
		border: 3px solid #181D31;
	}
  </style>
	<div class="jumbotron">
	<body>
	<!-- заголовок и описание алгоритма -->
	<h1 align = center>Kruskal's algorithm</h1>
	<label align = center>Kruskal's algorithm finds a minimum spanning forest of an undirected edge-weighted graph. If the graph is connected, it finds a minimum spanning tree. (A minimum spanning tree of a connected graph is a subset of the edges that forms a tree that includes every vertex, where the sum of the weights of all the edges in the tree is minimized. For a disconnected graph, a minimum spanning forest is composed of a minimum spanning tree for each connected component.) It is a greedy algorithm in graph theory as in each step it adds the next lowest-weight edge that will not form a cycle to the minimum spanning forest.</label>
	<br \><br \>
	<!-- форма дл€ ввода вершин и ребер -->
		<form align = center>
			<p><label>Enter the number of edges</label></p>
			<!-- ввод количества ребер -->
			<p><input type="number" name="setOfEdges" id="setOfEdgesId" size="3" value = "{{sizeEdges}}"	min="1"></p>
			<p><label>Enter the number of vertices</label></p>
			<!-- ввод количества вершин -->
			<p><input type="number" name="setOfVertice" id="verticId" size="3" value = "{{sizeVertic}}"		min="2"></p>
			<!-- кнопка дл€ отправки формы -->
			<p><input type="submit" value="Create"></p>
		</form>
		<!-- форма дл€ ввода значений (начальной вершины, конечной вершины и веса ребра между ними) -->
		<form method="post" action="/kruskalRez" enctype="text" align = center>
		<!-- цикл дл€ создани€ необходимого количества полей ввода -->
		<table align = center cellspacing="3" border="1" cellpadding="5">
			<tr>
			        <td>First vertex</td>
					<td>Second vertex</td>
			        <td>Weight</td>
			    </tr>
				%for i in range(sizeEdges):
				<tr>
				<td><input type="number" name="startingVertex" value = "0" min = "1" max = "{{sizeVertic}}" required></td>
				<td><input type="number" name="finalVertex"  value = "0" min = "1" max = "{{sizeVertic}}" required></td>
				<td><input type="number" name="ribWeight" value = "0" min = "1" required>
				<br name="row0"></td>
			    </tr>
				%end
			</table>
			
				<!-- скрытый элемент дл€ передачи в kruskalPy количества вершин -->
				<input hidden type="number" name="el1" size="3" value = "{{sizeVertic}}" min = "1" required>
		<!-- кнопка дл€ отправки формы -->
		<p></p>
			<p><input type="submit" value="Send"></p>
		</form>
		<br \><br \>
		<!-- форма с инструкцией к калькул€тору -->
		<form align = center>
			<p class="hhh">How does it work?</p>
			<p>1. Specify the number of edges and vertices of your graph and click on the "create" button. Note that a graph with a certain number of vertices has a maximum number of edges. If you drive too many edges, the calculator will automatically replace it with the maximum possible.</p>
			<p>2. Fill in the table, avoiding repetition of vertices, loops, and make sure that the connections between all vertices are specified. Otherwise, the calculator will indicate an error without giving a solution.</p>
			<p>3. Check the entered data, making sure that they are filled in correctly, and click on the "send" button.</p>
			<p>4. Study the received answer. To return to the form to fill out, click the button at the very bottom of the form with answers or select the calculator you are interested in in the header of the site.</p>
		</form>
		<br \><br \>
		<!-- форма с информацией о методе -->
		<form align = center>
			<p class="hhh">If you want to learn more about the Kruskal algorithm, we recommend watching this video:</p>
			<!-- видео с объ€снением алгоритма  раскала -->
			<iframe src="https://www.youtube.com/embed/71UQH7Pr9kU?rel=0&amp;fs=1&amp;wmode=transparent" width="600" height="400" allow="autoplay; fullscreen; encrypted-media" allowfullscreen="true" frameborder="0" scrolling="no" title="JoomlaWorks AllVideos Player"></iframe>
		</form>

	</body>
 </div>
</html>
