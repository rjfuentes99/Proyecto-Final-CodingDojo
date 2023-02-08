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
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/info.css">
    <link rel="stylesheet" href="css/login.css">
    <link rel="shortcut icon" href="/img/pngwing.com.png">

    <title>About us</title>
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
                <div class="separate">
                    <div class="enc1">
                        <h1>Nuestro Proposito</h1>
                    </div>
                    <img class="img2" src="img/veteri.jpg" alt="Edificio">
                    <div class=box4>
                        <p>
                            Somos una plataforma orientada al cuidado de animales, 
                            donde nuestro principal proposito es brindar un servicio de agendamiento 
                            a atenciones medicas donde podras encontrar distintas especialidades en el area
                            de la salud para tu mascota, ya sea para animales grandes o chiquitos del hogar. </p>
                        <p> Por eso, en este espacio encontraras todas las veterinarias en el lugar que te encuentres, 
                            ademas en la plataforma encontraras recursos para poder informarte sobre los cuidados de tus mascotas.
                        </p>
                    </div>
                </div>
                
                <div class="box1">
                    <div class="iconh3">
                        <h3>Ganado</h3>
                    </div>
                    <p> Los veterinarios especializados en el area de ganaderia y produccion supervisan 
                        el bienestar de los animales, aconsejan sobre el mantenimiento de la salud del rebano
                        y garantizan la seguridad de los alimentos producidos a partir de los animales.</p>
                </div>
                <div class="box2">
                    <div class="iconh3">
                        <h3>Domestico</h3>
                    </div>
                    <p>Los veterinarios especializados en animales domesticos son profesionales 
                        responsables del diagnostico, curacion y cuidado de las mascotas,
                        sus pacientes mas comunes son perros, gatos y otras especies dentro de lo comun. </p>
                </div>
                <div class="box2">

                    <div class="iconh3">
                        <h3>Exoticos</h3>
                    </div>
                    <p>Los veterinarios especializados en animales exoticos son medicos enfocados
                        en animales que requieren atenciones especificas, 
                        esto debido a que este tipo de animales son poco comunes en el ambiente domestico, ya sea 
                        por sus características fisiologicas o bien por su ecosistema.</p>
            </div>
        </main>
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