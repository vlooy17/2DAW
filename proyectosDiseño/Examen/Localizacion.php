<html>
  <head>
    <meta charset="utf-8">
    <title>Marker Animations</title>
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 50%;
        width: 50%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
  </head>
  <body>
    <div id="map" ></div>
    <script>

      // The following example creates a marker in Stockholm, Sweden using a DROP
      // animation. Clicking on the marker will toggle the animation between a BOUNCE
      // animation and no animation.

      var marker;

      function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 5,
          center: {lat: 40.411031, lng: -3.710489}
        });
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
        $id="";
        if(isset($_GET["id"])){
            $id=$_GET["id"];
          }
        $sql = "SELECT * FROM FotosIncidencia WHERE idProveedor like $id";
        $result = mysqli_query($conn, $sql);
        while($row = mysqli_fetch_assoc($result)) {
          
         
        
        ?>
        var img= <?php echo ("'".$row["Foto"]."'");?>; 
        var image = {
          url: 'https://vlooy17.000webhostapp.com/2DAW/Examen/imagenes/'+img,
          // This marker is 20 pixels wide by 32 pixels high.
          // The origin for this image is (0, 0).
          origin: new google.maps.Point(0, 0),
          // The anchor for this image is the base of the flagpole at (0, 32).
          anchor: new google.maps.Point(0, 32) ,
          scaledSize: new google.maps.Size(50, 50)
        };
        var la= <?php echo $row["Latitud"]; ?>;
        var lo= <?php echo $row["Longitud"]; ?>;
        marker = new google.maps.Marker({
          map: map,
          animation: google.maps.Animation.DROP,
          position: {lat: la, lng: lo},
          title:"LATITUD:"+la+" LONGITUD:"+lo,
          icon: image

        });
        marker.addListener('click', function() {

          document.getElementById("url").innerHTML=this.getTitle();
        });
        <?php
        
        }
        ?>
      }

      function toggleBounce() {
        if (marker.getAnimation() !== null) {
          marker.setAnimation(null);
        } else {
          marker.setAnimation(google.maps.Animation.BOUNCE);
        }
      }
      
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDOqoVjFL8zuvtO7rx3Q2Dd_owvhOOkxh4&callback=initMap">
    </script>
    <div id="url">

    </div>
  </body>
</html>