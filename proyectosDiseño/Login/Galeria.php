<?php
session_start();
$id="";
if(isset($_GET["id"])){
    $id=$_GET["id"];
  }
  $subida=0;
if(isset($_GET["subida"])){
    $id=$_GET["subida"];
    
  }
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
		
		$consulta = "SELECT Fotos FROM FotosUsuario WHERE idUsuario=$id";
		$rs = mysqli_query($conn,$consulta);
		
echo '<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <!-- Compiled and minified Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<!-- Minified JS library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Compiled and minified Bootstrap JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
    <script type="text/javaScript">

    if('.$subida.'==1){
        alert("Imagen Agregada");
    }
    </script>
</head>
<body>
    <h1>Mi galeria de '.$_SESSION["usu"].' </h1>';
    echo '<div id="myCarousel" style="height:350px;" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->


    <!-- Wrapper for slides -->
    <div class="carousel-inner">';
    $x=0;
    
    if (mysqli_num_rows($rs) > 0) {			
        while($row = mysqli_fetch_assoc($rs)) {
            if($x==0){
                echo'<div class="item active" style="height:350px;padding-left:40%;"><img style="height:350px;width:400px;" height="200px" width="400px" src=" ./imagenes/'.$row["Fotos"].'">
                     </div>';
            }else{
                echo'<div class="item" style="height:350px;padding-left:40%;">
                <img style="height:350px;width:400px;" height="200px" width="400px" src=" ./imagenes/'.$row["Fotos"].'">
                     </div>';
            }
            $x++;
        }
        echo'</div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>';
        
}
    echo'<form action="http://vlooy17.000webhostapp.com/2DAW/Login/subirGaleria.php?id='.$id.'" method="POST" enctype="multipart/form-data">
    <div>
    
      <label for="foto" >Introduzca su fotografía</label><br>
      <input type="file" id="fileToUpload" name="fileToUpload"  ><br>
    </div>
    <button type="submit" class="btn btn-default">Subir Foto</button>
  </form>
</body>
</html>';
?>
