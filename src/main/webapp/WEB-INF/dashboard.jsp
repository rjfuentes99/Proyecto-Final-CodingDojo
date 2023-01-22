<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.3/dist/leaflet.css"
    integrity="sha256-kLaT2GOSpHechhsozzB+flnD+zUyjE2LlfWPgU04xyI="
    crossorigin=""/>
   
    <link rel="stylesheet" href="mapa.css">
    <title>Dashboard</title>
</head>
<body>
    <nav>
        <a href="">Agenda tu cita</a>
        <a href="">Informacion</a>
        <a href="">Contacto</a>
    </nav>
    <button>Buscar Veterinarias</button>
    <div id="map"></div>
    <script>
        function iniciarMap(){
        var coord = {lat:-33.4488808 ,lng: -70.6398991};
        var map = new google.maps.Map(document.getElementById('map'),{
        zoom: 14,
        center: coord
        });
        var marker = new google.maps.Marker({
        position: coord,
        map: map
        });

    }
    </script>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBDaeWicvigtP9xPv919E-RNoxfvC-Hqik&liraries=places&callback=iniciarMap"></script>

</body>
</html>