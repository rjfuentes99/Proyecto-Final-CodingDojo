<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" href="login.css">
    <title>Registro e Inicio de Sesion</title>
</head>
<body>
    <div>
        <div class="bg"></div>
        <div class="bg bg2"></div>
        <div class="bg bg3"></div>
    </div>
    <div class="full-page">
        <nav class="nav">
            <input type="checkbox" id="nav-check">
            <div class="nav-header">
                <div class="nav-title">
                    
                    FindMyVet
                </div>
            </div>
            <div class="nav-btn">
                <label for="nav-check">
                    <span></span>
                    <span></span>
                    <span></span>
                </label>
            </div>
            
            <div class="nav-links">
                <a href="/index">Home</a>
                <a href="">Agenda tu cita</a>
                <a href="">Informacion</a>
                <a href="/joinus">Unetenos</a>
            </div>

        </nav>
                <!--Formulario central de log in y registro-->
        <div id='login-form' class='login-page'>

            <div class="form-box">
                <div class='button-box'>
                    <div id='btn'></div>
                    <button type='button' onclick='login()' class='toggle-btn'>Log In</button>
                    <button type='button' onclick='register()' class='toggle-btn'>Registrate</button>
                </div>
                <p class="text-danger">
                    ${error_login}
                </p>
                    <form action="/login" method="post" id="login" class='input-group-login'>
                        <h1>Inicia Sesion</h1>
                        <div class='input-field'>
                            <input type="email" class='input-field' name="email" placeholder='Enter Email' required>
                        </div>
                        <div class='input-field'>
                            <input type="password" class='input-field' name="password" placeholder='Enter Password' required>
                        </div>
                        <input type='checkbox' class='check-box'><span>Remember me</span>
                        <button type="submit" value="Registrarme" class='submit-btn'>Iniciar Sesion</button>

                    </form>
                <form:form action="/register" method="post" modelAttribute="nuevoUsuario" id="register" class='input-group-register'>
                    <h1>Registrate</h1>
                    <div class='input-field'>
                        <form:label path="name"></form:label>
                        <form:input path="name" class='input-field' placeholder='Primer Nombre'></form:input>
                        <form:errors path="name" class="text-danger"></form:errors>
                    </div>
                    <div class='input-field'>
                        <form:label path="email"></form:label>
                        <form:input path="email" class='input-field' placeholder='E-mail'></form:input>
                        <form:errors path="email" class="text-danger"></form:errors>
                    </div>
                    <div class='input-field'>
                        <form:label path="password"></form:label>
                        <form:password path="password" class='input-field' placeholder='Password'></form:password>
                        <form:errors path="password" class="text-danger"></form:errors>
                    </div>
                    <div class='input-field'>
                        <form:label path="confirm"></form:label>
                        <form:password path="confirm" class='input-field' placeholder='Confirm Password'></form:password>
                        <form:errors path="confirm" class="text-danger"></form:errors>
                    </div>
                    <input type='checkbox' class='check-box'><span>Estoy de acuerdo con las condiciones de uso.</span>
                    <button type="submit" value="Registrarme" class='submit-btn'>Registrarme</button>
                </form:form>
            </div>

        </div>
    </div>
    <script>
        var x = document.getElementById('login');
        var y = document.getElementById('register');
        var z = document.getElementById('btn');
        function register() {
            x.style.left = '-400px';
            y.style.left = '50px';
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