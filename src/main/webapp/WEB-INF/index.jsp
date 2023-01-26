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
            <a href="/index">Home</a>
            <a href="">Agenda tu cita</a>
            <a href="">Informacion</a>
            <a href="/joinus">Unetenos</a>
        </nav>
        <section>
            <button><a href="/mapa">Buscar veterinarias</a></button>
            <button><a href="/">Reservar Hora</a></button>

        </section>
    </div>



</body>
</html>