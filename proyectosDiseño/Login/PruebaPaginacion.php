<?php 

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

$url="https://vlooy17.000webhostapp.com/2DAW/Login/PruebaPaginacion.php?";
$sql= "SELECT * FROM usuarios";
$quey = mysqli_query($conn,$sql);
$num_total_registros = mysqli_num_rows($quey);

//Limito la busqueda
$TAMANO_PAGINA = 3;

//examino la página a mostrar y el inicio del registro a mostrar
if(isset($_GET["pagina"])){
	$pagina = $_GET["pagina"];
$inicio = ($pagina - 1) * $TAMANO_PAGINA;
}
else  {
	$inicio = 0;
	$pagina = 1;
}
//calculo el total de páginas
$total_paginas = ceil($num_total_registros / $TAMANO_PAGINA);

$consulta = "SELECT * FROM usuarios LIMIT ".$inicio."," . $TAMANO_PAGINA;
$rs = mysqli_query($conn,$consulta);
echo "<table style='border: solid black 2px;'>";
			echo "<th style='border: solid black 2px;'>Nick</th>";
			echo "<th style='border: solid black 2px;'>Email</th>";
			echo "<th style='border: solid black 2px;'>Bloqueado</th>";
			echo "<th style='border: solid black 2px;'>Borrar</th>";
while ($row = mysqli_fetch_assoc($rs)) {
	echo "<tr>";
	echo "<td style='border: solid black 2px;'>" . $row["Usuario_nick"]. "</td>";
	echo "<td style='border: solid black 2px;'>" . $row["Usuario_email"]. "</td>";
	echo "<td style='border: solid black 2px;'>" . $row["Usuario_bloqueado"]. "</td>";
	echo "</tr>";
}
echo "</table>";

if ($total_paginas > 1) {
	if ($pagina != 1)
		echo '<a href="'.$url.'?pagina='.($pagina-1).'"><img src="images/izq.gif" border="0"></a>';
	for ($i=1;$i<=$total_paginas;$i++) {
		if ($pagina == $i)
            //si muestro el índice de la página actual, no coloco enlace
			echo $pagina;
		else
            //si el índice no corresponde con la página mostrada actualmente,
            //coloco el enlace para ir a esa página
			echo '  <a href="'.$url.'pagina='.$i.'">'.$i.'</a>  ';
	}
	if ($pagina != $total_paginas)
		echo '<a href="'.$url.'pagina='.($pagina+1).'"><img src="images/der.gif" border="0"></a>';
}

?>