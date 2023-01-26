<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Veterinary</title>
</head>
<body>
    <div class="container">
        <header class="d-flex justify-content-between align-items-center">
            <h1>Bienvenid@ ${user_session.first_name}</h1>
            
            <a href="/logout" class="btn btn-danger">Cerrar Sesion</a>
        </header>
        <nav>
            <a href="/index">Home</a>
            <a href="/dashboard">Agenda tu cita</a>
            <a href="">Informacion</a>
            <a href="/joinus">Unetenos</a>
        </nav>

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