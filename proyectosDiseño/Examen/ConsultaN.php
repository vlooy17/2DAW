<?php

session_start();


	

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
		$url="https://vlooy17.000webhostapp.com/2DAW/Examen/ConsultaN.php?";

		if(isset($_GET['proveedor']) && $_GET['proveedor']!="")
		{
			$where[] = "Proveedor_Nombre LIKE '%".$_GET['proveedor']."%'";
			$url = $url."proveedor=".$_GET['proveedor'];
		}else{
			$url = $url."proveedor=";
		}
		if(isset($_GET['contacto']) && $_GET['contacto']!="")
		{
			$where[] = "Proveedor_Persona_Contacto LIKE '%".$_GET['contacto']."%'";
			$url = $url."&contacto=".$_GET['contacto'];
		}else{
			$url = $url."&contacto=";
		}
		if(isset($_GET['desp']))
		{
			$where[] = "Proveedor_CIF LIKE '%".$_GET['desp']."%'";
			$url = $url."&desp=".$_GET['desp'];
		}else{
			$url = $url."&deps=";
		}
		


		$sql = "SELECT * FROM proveedores WHERE  ".implode(" AND ",$where);
		$result = mysqli_query($conn, $sql);
		$num_total_registros = mysqli_num_rows($result);
		$TAMANO_PAGINA = 5;
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
		$consulta = "SELECT * FROM proveedores WHERE  ".implode(" AND ",$where). "LIMIT ".$inicio."," . $TAMANO_PAGINA;
		$rs = mysqli_query($conn,$consulta);

		if (mysqli_num_rows($rs) > 0) {
    // output data of each row
			
			echo "<form method='POST' action='borrarN.php'>";
			echo "<h1 style='  background-color: #245658 !important;margin-top: -1%;color: white;height: 70px;padding-top:10px;padding-left: 40px;margin-left:-2.5%;font-family:Arial;margin-right:-5%;'>CONSULTA DE PROVEEDORES</h1>";
			echo "<table style='border: solid white 2px; color:#245658;'>";
			echo "<th style='border: solid white 2px;'>ID</th>";
			echo "<th style='border: solid white 2px;'>Nombre</th>";
			echo "<th style='border: solid white 2px;'>Direccion</th>";
			echo "<th style='border: solid white 2px;'>CIF</th>";
			echo "<th style='border: solid white 2px;'>Contacto</th>";
			echo "<th style='border: solid white 2px;'>Telefono</th>";
			echo "<th style='border: solid white 2px;'>URL</th>";
			echo "<th style='border: solid white 2px;'>Longitud</th>";
			echo "<th style='border: solid white 2px;'>Latitud</th>";
			echo "<th style='border: solid white 2px;'>Clave</th>";
			echo "<th style='border: solid white 2px;'>Email</th>";
			echo "<th style='border: solid white 2px;'>Foto</th>";
			echo "<th style='border: solid white 2px;'>Melodia</th>";
			echo "<th style='border: solid white 2px;'>Borrar</th>";
			echo "<th style='border: solid white 2px;'>Modificar</th>";
			echo "<th style='border: solid white 2px;'>Incidencias</th>";



			 

			while($row = mysqli_fetch_assoc($rs)) {
				echo "<tr>";
				echo "<td style='border: solid white 2px;'>" . $row["Proveedor_ID"]. "</td>";
				echo "<td style='border: solid white 2px;'>" .  $row["Proveedor_Nombre"]. "</td>";
				echo "<td style='border: solid white 2px;'>" . $row["Proveedor_Direccion"]. "</td>";
				echo "<td style='border: solid white 2px;'>" . $row["Proveedor_CIF"]. "</td>";
				echo "<td style='border: solid white 2px;'>" . $row["Proveedor_Persona_Contacto"]. "</td>";
				echo "<td style='border: solid white 2px;'>" . $row["Proveedor_Telefono"]. "</td>";
				echo "<td style='border: solid white 2px;'>" . $row["Proveedor_URL"]. "</td>";
				echo "<td style='border: solid white 2px;'>" . $row["Proveedor_Longitud"]. "</td>";
				echo "<td style='border: solid white 2px;'>" . $row["Proveedor_Latitud"]. "</td>";
				echo "<td style='border: solid white 2px;'>" . $row["Proveedor_clave"]. "</td>";
				echo "<td style='border: solid white 2px;'>" . $row["Proveedor_Email"]. "</td>";
				echo "<td style='border: solid white 2px;'>" . $row["Proveedor_Foto"]. "</td>";
				echo "<td style='border: solid white 2px;'>" . $row["Proveedor_Melodia"]. "</td>";
				echo "<td  style='border: solid white 2px;'><input type='checkbox' name=borrar".$i." value='". $row["Proveedor_ID"]."' /></label></td>";
				echo "<td  style='border: solid white 2px;'><a href='ModificarN.php?id=".$row["Proveedor_ID"]."'>Modificar</a></td>";
				echo "<td  style='border: solid white 2px;'><a href='Localizacion.php?id=".$row["Proveedor_ID"]."'> Ver Incidencias</a></td>";
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
				echo "</br>";
				
			}
			echo "<input type='submit' value='Borrar'/>";
				echo "</form>";  

		}else {
			echo "No hay resultados";
		}

		mysqli_close($conn);



?>  