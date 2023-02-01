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
    <title>Document</title>
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
                    <a href="/informacion">Informacion</a>
                    <a href="/joinus" class="btn">Unetenos</a>
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
    </div>
</body>
</html>