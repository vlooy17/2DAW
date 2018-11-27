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

$token=$_GET["token_aleatorio"];

$sql = "UPDATE usuarios SET Usuario_bloqueado=0 WHERE Usuario_token_aleatorio like '$token'";

if (mysqli_query($conn, $sql)) {
    echo "<!DOCTYPE html>
    <html>
    <head>
    	<title>Confirmación</title>
    </head>
    <body>
    <h1>Registro confirmado,disfute de nuestra página.Gracias<h1>
    </body>
    </html>";
} else {
    echo "Error updating record: " . mysqli_error($conn);
}

mysqli_close($conn);
?>