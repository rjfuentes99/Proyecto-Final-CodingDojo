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
<link href="https://fonts.googleapis.com/css2?family=Lobster&family=Shadows+Into+Light&display=swap"
    rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" href="/css/index.css">
    <link rel="stylesheet" href="/css/atencion.css">
    <link rel="stylesheet" href="/css/show.css">
    <link rel="stylesheet" href="/css/login.css">
    <link rel="stylesheet" href="/css/footer.css">
    <link rel="shortcut icon" href="/img/pngwing.com.png">

    <title>${vetid.vetname}</title>
</head>
<body>
    <div class="container">

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
        <main>
            <div>
                <h2>${vetid.vetname}</h2>
                <h3>${vetid.vetdescription}</h3>
                <h3>${vetid.servicios}</h3>
                <h3>Ubicacion: ${vetid.ubicacion}</h3>
                <button id="btn-abrir-popup" class="btn-abrir-popup">Agendar Cita</button>
            </div>
        </main>
        
        <div class="overlay" id="overlay">
            <div class="popup" id="popup">
                <a href="#" id="btn-cerrar-popup" class="btn-cerrar-popup"><i class="fas fa-times"></i></a>
                <h3>SOMOS ${vetid.vetname} </h3>
                <h4>Agenda tu hora</h4>
                <form action="https://formsubmit.co/${vetid.vetemail}" method="POST">
                    <div class="contenedor-inputs">
                        <input type="text" placeholder="Nombre" name="nameuser">
                        <input type="email" placeholder="Correo" name="emailuser+">
                        <select required name="Tipo"  >
                            <option selected disabled  value="selecto">Tipo de cita</option>
                            <option value="consulta">CONSULTA MEDICA</option>
                            <option value="Examenes">EXAMENES Y PROCEDIMIENTOS</option>
                            <option value="Peluqueria">PELUQUERIA</option>

                        </select>
                        <input type="date"  name="date"min="2023-02-08" max="2023-12-31">
                        <textarea name="comments" placeholder="Comentarios" cols="15" rows="5"></textarea>
                    </div>
                    <input type="submit" class="btn-submit" value="Agendar">
                </form>
            </div>
        </div>
        <script src="popup.js"></script>
        <aside>
                <!--Mensajes-->
        </aside>

    
        </div>

    </div>
    <div class="seguro">
        <img src="/img/mascota.jpg" alt=" Servicio">
        
        <div class="seguro-text">
                    <h2>Protegelos</h2><br>
                    <p>Enterate como asegurar a tus mascotas</p>
                </div>
                <a href="#" class="btn4">Mas informacion </a>
            </div>
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
        var btnAbrirPopup = document.getElementById('btn-abrir-popup'),
        overlay = document.getElementById('overlay'),
        popup = document.getElementById('popup'),
        btnCerrarPopup = document.getElementById('btn-cerrar-popup');

        btnAbrirPopup.addEventListener('click', function(){
            overlay.classList.add('active');
            
            popup.classList.add('active');
        });

        btnCerrarPopup.addEventListener('click', function(e){
            e.preventDefault();
            overlay.classList.remove('active');
            popup.classList.remove('active');
        });
    </script>
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