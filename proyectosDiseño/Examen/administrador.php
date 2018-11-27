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
$consulta = "SELECT Proveedor_CIF FROM proveedores";
$rs = mysqli_query($conn,$consulta);

echo "<html>";
echo "<head>";
echo "	<title>Administrador</title>";
echo "</head>";
echo "<body>";
echo '<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>';
echo "<h1>Página Administrador</h1>";
echo "<h3>Consulta</h3>";
echo "	<form method='GET' action='ConsultaN.php'>";
echo "		<table>";
echo "			<tr>";
echo "				<td>Nombre Proveedor</td>";
echo "				<td><input type='text' name='proveedor' value='' /></label></td>";
echo "			</tr>";
echo "			<tr>";
echo "				<td>Contacto</td>";
echo "				<td><input type='text' name='contacto' value='' /></label></td>";
echo "			</tr>";	
echo"CIF<select  name ='desp'>";
echo"<option value=''></option>";
if (mysqli_num_rows($rs) > 0) {

	while($row = mysqli_fetch_assoc($rs)) {

		echo"<option value='".$row["Proveedor_CIF"]."'>".$row["Proveedor_CIF"]."</option>";
	}
}

echo"</ select>";
echo "		</table>";
echo "             <input type='submit' value='Enviar'/>";
echo "	</form>";


echo "</body>";
echo "</html>";
echo "<a href='LogOutN.php'><button  class='btn btn-default'>Salir</button></a>";

?>