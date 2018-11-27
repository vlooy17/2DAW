<?php

session_start();

if(isset($_SESSION["perfil"])){
	if($_SESSION["perfil"]=="admin"){

		$servername = "localhost";
		$username = "id5448654_usuarios";
		$password = "trebujena";
		$dbname = "id5448654_prueba1";

		// Create connection
		$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
		if (!$conn) {
			die("Connection failed: " . mysqli_connect_error());
		}
		$url="https://vlooy17.000webhostapp.com/2DAW/Login/Consulta.php?";

		if(isset($_GET['usuario']) && $_GET['usuario']!="")
		{
			$where[] = "Usuario_nick LIKE '%".$_GET['usuario']."%'";
			$url = $url."usuario=".$_GET['usuario'];
		}else{
			$url = $url."usuario=";
		}
		if(isset($_GET['email']) && $_GET['email']!="")
		{
			$where[] = "Usuario_email LIKE '%".$_GET['email']."%'";
			$url = $url."&email=".$_GET['email'];
		}else{
			$url = $url."&email=";
		}
		if(isset($_GET['bloqueado']))
		{
			$where[] = "Usuario_bloqueado = 1";
			$url = $url."&bloqueado=1";

		}else{
			$where[] = "Usuario_bloqueado = 0";


		}

		$where[] = "Usuario_perfil = 'cliente'";

		$sql = "SELECT * FROM usuarios WHERE  ".implode(" AND ",$where);
		$result = mysqli_query($conn, $sql);
		$num_total_registros = mysqli_num_rows($result);
		$TAMANO_PAGINA = 3;
		$i=0;
		if(isset($_GET["pagina"])){
			$pagina = $_GET["pagina"];
			$inicio = ($pagina - 1) * $TAMANO_PAGINA;
		}
		else  {
			$inicio = 0;
			$pagina = 1;
		}
		$total_paginas = ceil($num_total_registros / $TAMANO_PAGINA);
		$consulta = "SELECT * FROM usuarios WHERE  ".implode(" AND ",$where). "LIMIT ".$inicio."," . $TAMANO_PAGINA;
		$rs = mysqli_query($conn,$consulta);

		if (mysqli_num_rows($rs) > 0) {
    // output data of each row
			
			echo "<form method='POST' action='borrar.php'>";
			echo "<table style='border: solid black 2px;'>";
			echo "<th style='border: solid black 2px;'>Nick</th>";
			echo "<th style='border: solid black 2px;'>Email</th>";
			echo "<th style='border: solid black 2px;'>Bloqueado</th>";
			echo "<th style='border: solid black 2px;'>Borrar</th>";
			echo "<th style='border: solid black 2px;'>Modificar</th>";
			 

			while($row = mysqli_fetch_assoc($rs)) {
				echo "<tr>";
				echo "<td style='border: solid black 2px;'>" . $row["Usuario_nick"]. "</td>";
				echo "<td style='border: solid black 2px;'>" . $row["Usuario_email"]. "</td>";
				echo "<td style='border: solid black 2px;'>" . $row["Usuario_bloqueado"]. "</td>";
				echo "<td  style='border: solid black 2px;'><input type='checkbox' name=borrar".$i." value='".$row["Usuario_id"]."' /></label></td>";
				echo "<td  style='border: solid black 2px;'><a href='Modificar.php?id=".$row["Usuario_id"]."'>Modificar</a></td>";
				echo "</tr>";
				$i++;
			}
			$_SESSION["cantidadBorrado"]=$i;

			echo "</table>";
			if ($total_paginas > 1) {
				if ($pagina != 1)
					echo '<a href="'.$url.'?pagina='.($pagina-1).'"></a>';
				for ($i=1;$i<=$total_paginas;$i++) {
					if ($pagina == $i){

						echo $pagina;
					}else{

						echo '  <a href="'.$url.'&pagina='.$i.'">'.$i.'</a>  ';
					}
					if ($pagina != $total_paginas){
						echo '<a href="'.$url.'&pagina='.($pagina+1).'"></a>';
					}
				}
				echo "<input type='submit' value='Borrar'/>";
				echo "</form>"; 
			} 

		}else {
			echo "No hay resultados";
		}

		mysqli_close($conn);
	}else{

		header("Location: Cliente.php");
	}
}else{
	header("Location: Login1.html");
}





?>  