<?php
session_start();
if(isset($_SESSION["perfil"])){
	if($_SESSION["perfil"]=="admin"){
		echo "<html>";
		echo "<head>";
		echo "	<title>Administrador</title>";
		echo "</head>";
		echo "<body>";

		echo "<h1>Página Administrador</h1>";
		echo "<h3>Consulta</h3>";
		echo "	<form method='GET' action='Consulta.php'>";
		echo "		<table>";
		echo "			<tr>";
		echo "				<td>Nombre de usuario</td>";
		echo "				<td><input type='text' name='usuario' value='' /></label></td>";
		echo "			</tr>";
		echo "			<tr>";
		echo "				<td>Bloqueado</td>";
		echo "				<td><input type='checkbox' name='bloqueado' value='' /></label></td>";
		echo "			</tr>";
		echo "			<tr>";
		echo "				<td>email</td>";
		echo "				<td><input type='text' name='email' value='' /></label></td>";
		echo "			</tr>";
		echo "		</table>";
		echo "             <input type='submit' value='Enviar'/>";
		echo "	</form>";


		echo "</body>";
		echo "</html>";
		echo "<a href='LogOut.php'><button  class='btn btn-default'>Salir</button></a>";

	}else{

		header("Location: Cliente.php");
	}
}else{
	header("Location: Login1.html");
}


?>