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

$clave = $_POST["clave"];
$nick = $_POST["nick"];
$_SESSION["usu"]=$nick;




$sql = "SELECT *  FROM usuarios
WHERE Usuario_clave LIKE '$clave' and Usuario_nick like '$nick' and Usuario_bloqueado = 0";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    while($row = $result->fetch_assoc()) {
        $perfil=$row["Usuario_perfil"];
        $_SESSION["foto"] = $row["Usuario_fotografia"];
        $update = "UPDATE usuarios set Usuario_numero_intentos=0 where Usuario_nick like '$nick'";

        if (mysqli_query($conn,$update)) {

        }
        if($perfil == "cliente"){
        	$_SESSION["perfil"]=$perfil;

        	header("Location: Cliente.php");
        }else{
        	$_SESSION["perfil"]=$perfil;
        	header("Location: ./admin.php");
        }
    }
} else {
    $sql2 = "SELECT *  FROM usuarios WHERE Usuario_nick like '$nick' ";
    $result1 = mysqli_query($conn, $sql2);
    echo "".$nick;
    if ($row=$result1->fetch_assoc()) {

        while ($row=$result1->fetch_assoc()) {
            echo "string";
            $intentos=$row["Usuario_numero_intentos"];

            $intentos=$intentos+1;

            $update = "UPDATE usuarios set Usuario_numero_intentos=$intentos where Usuario_nick like '$nick'";

            mysqli_query($conn,$update);



        }

    }else{
        header("Location: https://vlooy17.000webhostapp.com/2DAW/Login/Login1.php");
    }
}


if ($intentos==3) {

    $update = "UPDATE usuarios set Usuario_bloqueado=1 where Usuario_nick like '$nick'";

    if (mysqli_query($conn,$update)) {
        header("Location: https://vlooy17.000webhostapp.com/2DAW/Login/Login1.php?&error=2");

    }
}else{
    header("Location: https://vlooy17.000webhostapp.com/2DAW/Login/Login1.php?&error=1");
}



mysqli_close($conn);




?> 
