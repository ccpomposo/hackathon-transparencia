<!doctype html>
<html>
<head>
    <title>Sigueme</title>
    <asset:link rel="icon" href="icon.ico" type="image/x-ico" />

    <asset:stylesheet src="style.css"/>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="animate.css"/>
    <asset:stylesheet src="owl.carousel.min.css"/>
    <asset:stylesheet src="magnific-popup.css"/>
    <asset:stylesheet src="miEstilo.css"/>


    <style>
        h1 {
            color: white;
        }

        body {
            background-color: #343a40;
            margin: 0px; padding: 0pxy
        }

        footer {
            position:fixed;
        }

        .container {
            opacity: 0.8;
        }

        html { 
            overflow-x:hidden; 
        }

        .navbar{
            height: 30px;
        }
    </style>
</head>
<body>
     <nav class="navbar navbar-expand-md navbar-dark bg-dark">
    </nav>

    <section class="site-hero site-hero-innerpage" data-stellar-background-ratio="0.5" style="background-image: url('${resource(dir: "images", file: "banner-hotel.jpg")}');">
        <div class="row align-items-center site-hero-inner justify-content-center">
            <center>
                    <div class="container">
                        <h1> Bienvenido </h1>
                        <p>
                            <center>
                                <a href="${createLink(uri: '/reserva/create')}" class="btn btn-secondary" role="button">
                                Buscar Candidato &raquo;
                                </a>  
                                <a href="${createLink(uri: '/reserva/index')}" class="btn btn-secondary" role="button">
                                Buscar Institucion &raquo;
                                </a>   
                                <a href="${request.getContextPath()}/logoff" class="btn btn-secondary" role="button">
                                Contáctenos &raquo;
                                </a>
                            </center>
                        </p>
                    </div>
            </center>
      </div>
    </section>

    <footer>
        <center>
        <p>Copyright &copy; 2018, Corporación Sigueme, S.A. de C.V.  All rights reserved. &middot; Hackathon 2018</p>
            </center>
    </footer>
</body>
</html>
