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
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/slider.css">
    <link rel="stylesheet" href="css/index.css">
    <title>FindMyVet</title>
</head>

<body>
    <div>

    </div>
    <div class="container">
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
                    <a href="">Informacion</a>
                    <a href="/joinus" class="btn">Unetenos</a>
                </div>
            </div>
        </header>
        <main>
             <div class="contenido-central">
            <div class="slideshowContainer">

                <img class="imageSlides" src="img/imgcarru1.jpg" >
                <img class="imageSlides" src="img/imgcarru2.jpg" >
                <img class="imageSlides" src="img/imgcarru3.jpg" >


                <span id="leftArrow" class="slideshowArrow"></span>
                <span id="rightArrow" class="slideshowArrow"></span>

                <div class="slideshowCircles">
                    <span class="circle dot"></span>
                    <span class="circle"></span>
                    <span class="circle"></span>
                </div>
            </div>
            <script src="js/index.js"></script>
            <div>

            </div>
        </div>
        </main>
        <section class="botones">
            <button class="boton-vet" id="btn1" ><a href="/mapa"><span class="material-symbols-outlined">pets</span><h3>Buscar veterinarias</h3></a></button>
            <button class="boton-hora" id="btn1" ><a href="/dashboard"><span class="material-symbols-outlined">calendar_month</span><h3>Reservar Hora</h3></a></button>
            <button class="boton-servicio"> <a href=""><span class="material-symbols-outlined">manage_accounts</span><h3>Servicio al cliente</h3></a></button>
            <button class="boton-aranceles"> <a href=""><span class="material-symbols-outlined">payments</span><h3>Aranceles</h3></a></button>
        </section>
        <footer>
            <img src="img/Logosololetras3.png" alt="">
        </footer>

       
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