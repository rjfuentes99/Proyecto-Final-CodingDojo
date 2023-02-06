<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lobster&family=Shadows+Into+Light&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/login.css">
    <title>FindMyVet</title>
</head>
<body>
    <div>
        <div class="bg"></div>
        <div class="bg bg2"></div>
        <div class="bg bg3"></div>
    </div>
    <div class="full-page">
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


        <!--Formulario central de log in y registro-->
        <div id='login-form' class='login-page'>

            <div class="form-box">
                <div class='button-box'>
                    <div id='btn'></div>
                    <button type='button' onclick='login()' class='toggle-btn'>Log In</button>
                    <button type='button' onclick='register()' class='toggle-btn'>Register</button>
                </div>
                <p class="text-danger">
                    ${error_login}
                </p>
                    <form action="/login" method="post" id="login" class='input-group-login'>
                        <h1>Login Form</h1>
                        <div class='input-field'>
                            <input type="email" class='input-field' name="email" placeholder='Enter Email' required>
                        </div>
                        <div class='input-field'>
                            <input type="password" class='input-field' name="password" placeholder='Enter Password' required>
                        </div>
                        <button type="submit" value="Registrarme" class='submit-btn'>Iniciar Sesion</button>

                    </form>
                <form:form action="/register" method="post" modelAttribute="nuevoUsuario" id="register" class='input-group-register'>
                    <h1>Register Form</h1>
                    <div class='input-field'>
                        <form:label path="name"></form:label>
                        <form:input path="name" class='input-field' placeholder='Nombre'></form:input>
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

                    <button type="submit" value="Registrarme" class='submit-btn'>Registrarme</button>
                </form:form>
            </div>

        </div>
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
        function openNav(){
            document.getElementById("mobile-menu").style.width = "100%";
        }
        function closeNav(){
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