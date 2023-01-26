<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cursos</title>
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
		<div class="row">
			<h2>Cursos</h2>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>Veterinaria</th>
						<th>Ubicacion</th>
                        <th>Servicios</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${all_veterinaries}" var="p">
						<tr>
							<td><a href="/${p.id}">${p.vetname}</a></td>
                            <td>${p.ubicacion}</td>
                            <td>${p.servicios}</td>

						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<a href="/new" class="btn btn-success">Nueva veterinaria</a>
	</div>

</body>
</html>