<!DOCTYPE html>
<html>
    <head>
        <asset:link rel="icon" href="icon.ico" type="image/x-ico" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'pantallaSujeto.label', default: 'PantallaSujeto')}" />
        <title>Sigueme Administrador</title>

        <asset:stylesheet src="1bootstrap.min.css"/>
        <asset:stylesheet src="1semantic.ui.min.css"/>
        <asset:stylesheet src="miEstilo.css"/>
        <asset:stylesheet src="1pignose.calendar.min.css"/>
        <asset:stylesheet src="1owl.carousel.min.css"/>
        <asset:stylesheet src="1owl.theme.default.min.css"/>
        <asset:stylesheet src="1helper.css"/>
        <asset:stylesheet src="style1.css"/>

        <asset:javascript src="jquery.min.js"/>
        <asset:javascript src="popper.min.js"/>
        <asset:javascript src="bootstrap.min.js"/>
        <asset:javascript src="miLibreria.js"/>
        <asset:javascript src="jquery.slimscroll.js"/>
        <asset:javascript src="sidebarmenu.js"/>
        <asset:javascript src="sticky-kit.min.js"/>
        <asset:javascript src="raphael-min.js"/>
        <asset:javascript src="morris.js"/>
        <asset:javascript src="dashboard1-init.js"/>
        <asset:javascript src="moment.latest.min.js"/>
        <asset:javascript src="semantic.ui.min.js"/>
        <asset:javascript src="prism.min.js"/>
        <asset:javascript src="pignose.calendar.min.js"/>
        <asset:javascript src="pignose.init.js"/>
        <asset:javascript src="owl.carousel.min.js"/>
        <asset:javascript src="owl.carousel-init.js"/>
        <asset:javascript src="scripts.js"/>
        <asset:javascript src="custom.min.js"/>

            <style>
                .page-wrapper {
                    margin-left: 240px;
                    background-color: #1C2833;
                }
            </style>
    </head>

    <body class="fix-header fix-sidebar">
        <!-- Preloader - style you can find in spinners.css -->
        <div class="preloader">
            <svg class="circular" viewBox="25 25 50 50">
                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
        </div>
        <!-- Main wrapper  -->
        <div id="main-wrapper">
            <!-- header header  -->
            <!-- End header header -->
            <!-- Left Sidebar  -->
            <div class="left-sidebar">
                <!-- Sidebar scroll-->
                <div class="scroll-sidebar">
                    <!-- Sidebar navigation-->
                    <nav class="sidebar-nav">
                        <ul id="sidebarnav">
                            <li class="nav-devider"></li>
                            <li class="nav-label">Home</li>
                            <li> <a class="has-arrow " href="#" aria-expanded="false"><g:img dir="images" file="colaborador.png" width="25" height="20"/> - <span class="hide-menu">Colaboradores</span></a>
                                <ul aria-expanded="false" class="collapse">
                                    <li><a href="index.html">Ver Colaboradores </a></li>
                                    <li><a href="${createLink(uri: '/colaborador/create#!')}">Agregar </a></li>
                                    <li><a href="index2.html">Editar </a></li>
                                </ul>
                            </li>
                            <li> <a class="has-arrow  " href="#" aria-expanded="false"><g:img dir="images" file="propuestas.png" width="25" height="20"/> - <span class="hide-menu">Propuestas</span></a>
                                <ul aria-expanded="false" class="collapse">
                                    <li><a href="${createLink(uri: '/propuesta/index')}">Ver Propuestas</a></li>
                                    <li><a href="${createLink(uri: '/propuesta/create')}">Agregar</a></li>
                                    <li><a href="index5.html">Editar</a></li>
                                </ul>
                            </li>
                            <li> <a class="has-arrow  " href="#" aria-expanded="false"><g:img dir="images" file="agenda.png" width="20" height="20"/> - <span class="hide-menu">Programas</span></a>
                                <ul aria-expanded="false" class="collapse">
                                    <li><a href="${createLink(uri: '/programa/index')}">Ver Programas</a></li>
                                    <li><a href="${createLink(uri: '/programa/create')}">Agregar</a></li>
                                    <li><a href="index6.html">Editar</a></li>
                                </ul>
                            </li>
                            
                            <li> <a href="#" aria-expanded="false"></a>
                                
                            </li>
                            <li> <a href="#" aria-expanded="false"></a>
                                
                            </li>
                            <li> 
                                <a class="has-arrow  " href="#" aria-expanded="false"><g:img dir="images" file="cerrar.png" width="20" height="20"/> - <span class="hide-menu">Cerrar Sesión</span></a>
                            </li>
                        </ul>
                    </nav>
                    <!-- End Sidebar navigation -->
                </div>
                <!-- End Sidebar scroll-->
            </div>
            <!-- End Left Sidebar  -->
            <!-- Page wrapper  -->
            <div class="page-wrapper">
                <!-- Bread crumb -->
                <div class="row page-titles">
                    <div class="col-md-5 align-self-center">
                        <h3 class="text-primary">Sigueme</h3> </div>
                    <div class="col-md-7 align-self-center">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                            <li class="breadcrumb-item active">Hackaton 2018</li>
                        </ol>
                    </div>
                </div>
                <!-- End Bread crumb -->
                <!-- Container fluid  -->
                <div class="container-fluid">
                    <!-- Start Page Content -->
                    <div class="row">
                        <div class="col-md-3">
                            <div class="card p-30">
                                <div class="media">
                                    <div class="media-left meida media-middle">
                                        <span><i class="fa fa-usd f-s-40 color-primary"></i></span>
                                    </div>
                                    <div class="media-body media-text-right">
                                        <h2>568120</h2>
                                        <p class="m-b-0">Presupuesto asignado</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="card p-30">
                                <div class="media">
                                    <div class="media-left meida media-middle">
                                        <span><i class="fa fa-shopping-cart f-s-40 color-success"></i></span>
                                    </div>
                                    <div class="media-body media-text-right">
                                        <h2>1178</h2>
                                        <p class="m-b-0">Gastos</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="card p-30">
                                <div class="media">
                                    <div class="media-left meida media-middle">
                                        <span><i class="fa fa-archive f-s-40 color-warning"></i></span>
                                    </div>
                                    <div class="media-body media-text-right">
                                        <h2>25</h2>
                                        <p class="m-b-0">Recursos restantes</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="card p-30">
                                <div class="media">
                                    <div class="media-left meida media-middle">
                                        <span><i class="fa fa-user f-s-40 color-danger"></i></span>
                                    </div>
                                    <div class="media-body media-text-right">
                                        <h2>847</h2>
                                        <p class="m-b-0">Eventos realizados</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row bg-white m-l-0 m-r-0 box-shadow ">

                        <!-- column -->
                        <div class="col-lg-8">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Gasto de recursos</h4>
                                    <div id="extra-area-chart"></div>
                                </div>
                            </div>
                        </div>
                        <!-- column -->

                        <!-- column -->
                        <div class="col-lg-4">
                            <div class="card">
                                <div class="card-body browser">
                                    <p class="f-w-600">Transporte<span class="pull-right"></span></p>
                                    <div class="progress ">
                                        <div role="progressbar" style="width: 85%; height:8px;" class="progress-bar bg-danger wow animated progress-animated"> <span class="sr-only">60% Complete</span> </div>
                                    </div>

                                    <p class="m-t-30 f-w-600">Insumos<span class="pull-right"></span></p>
                                    <div class="progress">
                                        <div role="progressbar" style="width: 90%; height:8px;" class="progress-bar bg-info wow animated progress-animated"> <span class="sr-only">60% Complete</span> </div>
                                    </div>

                                    <p class="m-t-30 f-w-600">Publicidad<span class="pull-right"></span></p>
                                    <div class="progress">
                                        <div role="progressbar" style="width: 65%; height:8px;" class="progress-bar bg-success wow animated progress-animated"> <span class="sr-only">60% Complete</span> </div>
                                    </div>

                                    <p class="m-t-30 f-w-600">Gastos personales<span class="pull-right"></span></p>
                                    <div class="progress">
                                        <div role="progressbar" style="width: 65%; height:8px;" class="progress-bar bg-warning wow animated progress-animated"> <span class="sr-only">60% Complete</span> </div>
                                    </div>

                                    <p class="m-t-30 f-w-600">Viáticos<span class="pull-right"></span></p>
                                    <div class="progress m-b-30">
                                        <div role="progressbar" style="width: 65%; height:8px;" class="progress-bar bg-success wow animated progress-animated"> <span class="sr-only">60% Complete</span> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- column -->
                    </div>
                    


                    <div class="row">
                        <div class="col-lg-8">
                            <div class="row">
                            <div class="col-lg-6">
                                
                                <!-- /# card -->
                            </div>
                            <!-- /# column -->
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="year-calendar"></div>
                                    </div>
                                </div>
                            </div>


                            </div>
                        </div>

                    </div>
                    

                <!-- End PAge Content -->
            </div>
            <!-- End Container fluid  -->
            <!-- footer -->
            <footer>
                <center>
                <p>Copyright &copy; 2018, Corporación Sigueme, S.A. de C.V.  All rights reserved. &middot; Hackathon 2018</p>
                    </center>
            </footer>
                    <!-- End footer -->
        </div>
        <!-- End Page wrapper  -->
    </div>

    </body>
</html>