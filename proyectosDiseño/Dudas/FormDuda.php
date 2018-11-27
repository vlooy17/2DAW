<?php
$duda=0;
if(isset($_GET["Duda"])){
    $duda=$_GET["Duda"];
  }else{

  }

?>
<html lang="en">
<head>
  <title>Página de regristo</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
  body{
    background-color: white !important;
  }
  h2{
    background-color: #245658 !important;
    margin-top: 0%;
    color: white;
    height: 70px;
    padding-top:15px;
    padding-left: 2%;

  }
  ::placeholder { color: #245658 !important;
                  opacity: 0.60 !important; 
  }
  label{
    color: #245658;
    text-shadow: 1;
  }
  input{
    width: 50% !important;
  }
  button{
    background-color: #245658 !important;
    color: white !important;
  }
</style>
<script>
  var x = document.getElementById("demo");
  var long;
  var lat;

      if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(showPosition);
      } 
  
  
  function showPosition(position) {
    long=position.coords.longitude;
        document.getElementById('long').value=long;

        lat=position.coords.latitude;
        document.getElementById('lat').value=lat;
  }
  </script>

<body>
 <h2>Atención al cliente</h2>
<div class="container">
 
  <form method="POST" action="duda.php" enctype="multipart/form-data">
    <div class="form-group">
      <label for="nombre">Correo:</label>
      <input type="email" class="form-control" id="correo" placeholder="Introduzca Correo" name="correo">
    </div>
    <div class="form-group">
      <label for="apellido1">Pregunta:</label>
        <input type="text" class="form-control" id="pregunta" placeholder="Introduzca su pregunta" name="pregunta">
    </div>
    <button type="submit" class="btn btn-default">Enviar incidencia</button>
    <input type='hidden' name='long' id='long' />
    <input type='hidden' name='lat' id='lat' />
  </form>
   
</div>
<?php
if($duda==1){

    echo "Duda enviada con exito";

  }

?>

</body>
</html>