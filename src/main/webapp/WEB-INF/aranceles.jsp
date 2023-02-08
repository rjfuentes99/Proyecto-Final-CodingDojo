<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
        <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.3/dist/leaflet.css"
        integrity="sha256-kLaT2GOSpHechhsozzB+flnD+zUyjE2LlfWPgU04xyI=" crossorigin="" />
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;500&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster&family=Shadows+Into+Light&display=swap">
        <link rel="stylesheet" href="">
        <link rel="stylesheet" href="/css/login.css">
        <link rel="stylesheet" href="/css/index.css">
        <link rel="stylesheet" href="/css/footer.css">
        <link rel="shortcut icon" href="/img/pngwing.com.png">
        <link rel="stylesheet" href="/css/aranceles.css">

        <title>Aranceles</title>

    </head>
<body>
	<header class="header">
        <div class="logo">
            <img src="/img/pngwing.com.png" alt="">
            <h3>FindMyVet</h3>
        </div>

        <nav class="nav-links">
            <a href="/">Home</a>
            <a href="/dashboard">Agenda tu cita</a>
            <a href="/informacion">Informacion</a>
        </nav>
        <a href="/logout" class="btn">Cerrar Sesion</a>


        <a onclick="openNav()" class="menu" href="#">Menu</a>

        <div class="overlay" id="mobile-menu">
            <a href="" onclick="closeNav()" class="close">&times;</a>
            <div class="overlay-content">
                <a href="/">Home</a>
                <a href="/dashboard">Agenda tu cita</a>
                <a href="/informacion">Informacion</a>
                <a href="/logout" class="btn">Cerrar Sesion</a>

            </div>
        </div>
    </header>
    <div class="con-items ">
        <div class="item item1">
            <div class="con-img">
                <img src="1-3.png" alt="">
            </div>
            <header>
                <h3>Tu Primer Mes</h3>
                <p>
                    <b>
                        $5000 CLP
                    </b>
                </p>
            </header>
            <ul>
                <li>
                    <i class='bx bx-check'></i>
                    Comienza a ofrecer tus <b>Servicios</b>
                </li>
                <li>
                    <i class='bx bx-check'></i>
                    Plan de prueba de<b>1 mes</b>
                </li>
                <li>
                    <i class='bx bx-check'></i>
                    <b>
                        Unete
                    </b>
                    a la mayor red de vets
                </li>
            </ul>
            <button>
                Seleccionar Plan
            </button>
        </div>
        <div class="item color item2">
            <div class="con-img">
                <img src="2-1.png" alt="">
            </div>
            <span class="badge">
                Conveniente
            </span>
            <header>
                <h3>Anual</h3>
                <p>
                    <b>
                        $50000 CLP
                    </b>
                </p>
            </header>
            <ul>
                <li>
                    <i class='bx bx-check'></i>
                    Se una clinica <b>Destacada</b>
                </li>
                <li>
                    <i class='bx bx-check'></i>
                    Aparece <b>Primero</b>En La Lista
                </li>
                <li>
                    <i class='bx bx-check'></i>
                    Ahorra <b>17%</b> En comparacion
                </li>
            </ul>
            <button class="border">
                Seleccionar plan
            </button>
        </div>
        <div class="item item3">
            <div class="con-img">
                <img src="3-1.png" alt="">
            </div>
            <header>
                <h3>Anuncios</h3>
                <p>
                    <b>
                        % Por Cita Hecha
                    </b>
                </p>
            </header>
            <ul>
                <li>
                    <i class='bx bx-check'></i>
                    <b>Anunciate</b> Con nosotros!
                </li>
                <li>
                    <i class='bx bx-check'></i>
                    Orientado al <b>Crecimiento</b>
                </li>
                <li>
                    <i class='bx bx-check'></i>
                    <b>No</b> es necesario el plan anual
                </li>
            </ul>
            <button>
                Anunciarme
            </button>
        </div>
    </div>
    <footer>
        <div class="divcontact">
            <div class="logoimagen">
                <img src="/img/pngwing.com.png" alt="" width="40px" height="40px"><span>FindmyVet</span>
            </div>
            <p>
                <span class="material-symbols-outlined">mail</span>
                findmyvet@gmail.com
            </p>
            <p>
                <span class="material-symbols-outlined">call</span>
                800 775 222
            </p>
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