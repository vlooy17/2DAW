<?php
session_start();
if(isset($_SESSION["perfil"])){
	if($_SESSION["perfil"]=="cliente"){
		$servername = "localhost";
		$username = "id5448654_usuarios";
		$password = "trebujena";
		$dbname = "id5448654_prueba1";
		$id="";

		// Create connection
		$conn = mysqli_connect($servername, $username, $password, $dbname);
		// Check connection
		if (!$conn) {
    		die("Connection failed: " . mysqli_connect_error());
		}
		
		$consulta = "SELECT Usuario_id FROM usuarios WHERE Usuario_nick LIKE "."'".$_SESSION["usu"]."'";
		$rs = mysqli_query($conn,$consulta);
		if (mysqli_num_rows($rs) > 0) {
			
					while($row = mysqli_fetch_assoc($rs)) {
						$id = $row["Usuario_id"];
					}
					
		}
		
	echo "<h1>Pagina Clientes</h1>";
	echo "<h4>Nick del usuario: ".$_SESSION["usu"]." ID ".$id;
	echo "<img src=' ./imagenes/".$_SESSION["foto"]."'  height='10%' width='10%' >";
	echo "<a href='LogOut.php'><button type='submit' class='btn btn-default'>Salir</button></a>";
	echo "<a href='http://vlooy17.000webhostapp.com/2DAW/Login/Galeria.php?id=".$id."'><button type='submit' class='btn btn-default'>Ver Galeria</button></a>";
}else{
	header("Location: admin.php");
}
}else{
	header("Location: Login1.html");
}


?>