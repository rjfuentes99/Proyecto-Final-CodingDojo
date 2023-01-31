<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lobster&family=Shadows+Into+Light&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" href="css/login.css">
    <title>New Veterinary</title>
</head>
<body>
    <div class="container">
        <header class="header">
            <div class="logo">
                <img src="/img/pngwing.com.png" alt="">
                <h3>FindMyVet</h3>
            </div>

            <nav class="nav-links">
                <a href="/index">Home</a>
                <a href="/dashboard">Agenda tu cita</a>
                <a href="">Informacion</a>
            </nav>
            <a href="/joinus" class="btn">Unetenos</a>

            <a onclick="openNav()" class="menu" href="#">Menu</a>

            <div class="overlay" id="mobile-menu">
                <a href="" onclick="closeNav()" class="close">&times;</a>
                <div class="overlay-content">
                    <a href="/index">Home</a>
                    <a href="/dashboard">Agenda tu cita</a>
                    <a href="">Informacion</a>
                    <a href="/joinus" class="btn">Unetenos</a>
                </div>
            </div>
        </header>

        <form:form action="/create" method="post" modelAttribute="veterinary">
            <h1>Nueva veterinaria</h1>
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

            <input type="submit" value="Guardar" class="btn btn-success" />
        </form:form>
    </div>
</body>
</html>