<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.3/dist/leaflet.css" integrity="sha256-kLaT2GOSpHechhsozzB+flnD+zUyjE2LlfWPgU04xyI=" crossorigin=""/>
    
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRzNQjC4OdkXBEZaiAOHg_0rfDcSOXzF4&libraries=places"></script>

    <link rel="stylesheet" href="mapa.css">
    <title>Dashboard</title>
</head>
<body>
    <div class="container">
        <header class="d-flex justify-content-between align-items-center">
            <h1>Bienvenid@ ${user_session.first_name}</h1>
            
            <a href="/logout" class="btn btn-danger">Cerrar Sesion</a>
        </header>
        <nav>
            <a href="">Agenda tu cita</a>
            <a href="">Informacion</a>
            <a href="">Contacto</a>
        </nav>
    </div>
    <button id="search-btn">Search Veterinary</button>

    <div id="map"></div>
    
    <script>
    function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 16
        });

        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function (position) {
                var pos = {
                    lat: position.coords.latitude,
                    lng: position.coords.longitude,
                    
                };

                map.setCenter(pos);
                var service = new google.maps.places.PlacesService(map);
                document.getElementById("search-btn").addEventListener("click", function () {
                    var request = {
                        location: pos,
                        radius: '6000',
                        query: 'clinicaveterinaria'
                    };
                    service.textSearch(request, callback);
                });

            }, function () {
                handleLocationError(true, map.getCenter());
            });
        } else {
            handleLocationError(false, map.getCenter());
        }

        function callback(results, status) {
            if (status === google.maps.places.PlacesServiceStatus.OK) {
                for (var i = 0; i < results.length; i++) {
                    createMarker(results[i]);
                }
            }
        }

        function createMarker(place) {
            var marker = new google.maps.Marker({
                map: map,
                position: place.geometry.location,
                icon:'/img/iconomap.png'
            });

            google.maps.event.addListener(marker, 'click', function () {
                var infowindow = new google.maps.InfoWindow();
                infowindow.setContent(place.name);
                infowindow.open(map, this);
            });
        }
        function handleLocationError(browserHasGeolocation, pos) {
            console.log(browserHasGeolocation ?
                'Error: The Geolocation service failed.' :
                'Error: Your browser doesn\'t support geolocation.');
        }
    }

    </script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRzNQjC4OdkXBEZaiAOHg_0rfDcSOXzF4&libraries=places&callback=initMap"></script>


</body>
</html>