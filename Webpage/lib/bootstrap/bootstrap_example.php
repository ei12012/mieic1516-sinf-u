<?php
	include_once("pages/header.php");

	
?>
	<ol class="breadcrumb">
		<li><a href="#">Home</a></li>
		<li>...</li>
		<li><a href="#">Plano de Estudo</a></li>
		<li><a href="#">LBAW</a></li>
		<li class="active">Alunos</li>
	</ol>

	<h1>Laboratório de Base de Dados e Aplicações Web</h1>
	<h4 class="text-primary">Alunos incritos</h4>

	<table class="table table-hover table-condensed">
		<thead>
			<tr>
				<th>Nome</th>
				<th>Email</th>
				<th>Nota</th>
				<th><a href="#">Adicionar</a></th>
				<th><a href="#">Eliminar tudo</a></th>
			</tr>
		</thead>

		<tbody>
			<tr>
				<td><a href="#">John Doe</a></td>
				<td>john@example.com</td>
				<td>20</td>
				<td><a href="#">Editar</a></td>
				<td><a href="#">Eliminar</a></td>
			</tr>
			<tr>
				<td><a href="#">Mary Moe</a></td>
				<td>mary@example.com</td>
				<td>20</td>
				<td><a href="#">Editar</a></td>
				<td><a href="#">Eliminar</a></td>
			</tr>
			<tr>
				<td><a href="#">July Dooley</a></td>
				<td>july@example.com</td>
				<td>19.5</td>
				<td><a href="#">Editar</a></td>
				<td><a href="#">Eliminar</a></td>
			</tr>
		</tbody>
	</table>
</div>

<?php
	include_once("pages/footer.php");
?>
