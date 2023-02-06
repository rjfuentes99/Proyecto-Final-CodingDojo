<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.3/dist/leaflet.css"
    integrity="sha256-kLaT2GOSpHechhsozzB+flnD+zUyjE2LlfWPgU04xyI=" crossorigin="" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lobster&family=Shadows+Into+Light&display=swap">
    <link rel="stylesheet" href="">
    <link rel="stylesheet" href="/css/login.css">
    <link rel="stylesheet" href="/css/slider.css">
    <link rel="stylesheet" href="/css/index.css">
    <link rel="stylesheet" href="/css/footer.css">
    <title>Edit Veterinary</title>
</head>
<body>
	<header class="header">
        <div class="logo">
            <img src="/img/pngwing.com.png" alt="">
            <h3>FindMyVet</h3>
        </div>

        <nav class="nav-links">
            <a href="/index">Home</a>
            <a href="/dashboard">Agenda tu cita</a>
            <a href="/informacion">Informacion</a>
        </nav>
        <a href="/joinus" class="btn">Unetenos</a>

        <a onclick="openNav()" class="menu" href="#">Menu</a>

        <div class="overlay" id="mobile-menu">
            <a href="" onclick="closeNav()" class="close">&times;</a>
            <div class="overlay-content">
                <a href="/index">Home</a>
                <a href="/dashboard">Agenda tu cita</a>
                <a href="/informacion">Informacion</a>
                <a href="/joinus" class="btn">Unetenos</a>
            </div>
        </div>
    </header>

    <div class="container">
        <form:form action="/update" method="post" modelAttribute="veterinary">
            <h1>Editar Veterinaria</h1>
            <div class="form-group">
                <form:label path="vetname">Nombre de la veterinaria</form:label>
                <form:input path="vetname" class="form-control"></form:input>
                <form:errors path="vetname" class="text-danger"></form:errors>
            </div>
            <div class="form-group">
                <form:label path="ubicacion">Ubicacion</form:label>
                <form:input path="ubicacion" class="form-control"></form:input>
                <form:errors path="ubicacion" class="text-danger"></form:errors>
            </div>
            <div class="form-group">
                <form:label path="servicios">Servicios</form:label>
                <form:input path="servicios" class="form-control"></form:input>
                <form:errors path="servicios" class="text-danger"></form:errors>
            </div>
            <div class="form-group">
                <form:label path="vetdescription">Descripcion</form:label>
                <form:textarea path="vetdescription" class="form-control"></form:textarea>
                <form:errors path="vetdescription" class="text-danger"></form:errors>
            </div>
            <div class="form-group">
                <form:label path="vetemail">E-mail</form:label>
                <form:input path="vetemail" class="form-control"></form:input>
                <form:errors path="vetemail" class="text-danger"></form:errors>
            </div>
            
            <form:hidden path="id" value="${veterinary.id}"></form:hidden>

            <input type="hidden" name="_method" value="put"/>
            
            <a href="/dashboard" class="btn btn-info">Cancel</a>
            <input type="submit" value="Guardar" class="btn btn-success" />
        </form:form>

    </div>
    <footer>
        <div class="divfooter">
            <h2>FindMyVet</h2>
            <p>El amor hacia los animales eleva el nivel cultural de la sociedad<br><br>
                - F.Salvochea
            </p>

            <ul class="socials">
                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
            </ul>
        </div>
        <div class="divcontact">
            <h3>Contactanos</h3>
            <p>800 775 222 / findmyvet@gmail.com </p>
        </div>
    </footer>
    <div class="llama">
        <p>@ FindMyVet - Todos los derechos reservados</p>
    </div>
    <script>
        function openNav() {
            document.getElementById("mobile-menu").style.width = "100%";
        }
        function closeNav() {
            document.getElementById("mobile-menu").style.width = "0%";
        }

        var x = document.getElementById('login');
        var y = document.getElementById('register');
        var z = document.getElementById('btn');
        function register() {
            x.style.left = '-400px';
            y.style.left = '45px';
            z.style.left = '110px';
        }
        function login() {
            x.style.left = '50px';
            y.style.left = '450px';
            z.style.left = '0px';
        }
    </script>
</body>
</html>