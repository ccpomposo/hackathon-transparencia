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
                                    <li><a href="index1.html">Agregar </a></li>
                                    <li><a href="index2.html">Editar </a></li>
                                </ul>
                            <li> <a class="has-arrow  " href="#" aria-expanded="false"><g:img dir="images" file="propuestas.png" width="25" height="20"/> - <span class="hide-menu">Propuestas</span></a>
                                <ul aria-expanded="false" class="collapse">
                                    <li><a href="email-compose.html">Compose</a></li>
                                    <li><a href="email-read.html">Read</a></li>
                                    <li><a href="email-inbox.html">Inbox</a></li>
                                </ul>
                            </li>
                            <li> <a class="has-arrow  " href="#" aria-expanded="false"><g:img dir="images" file="agenda.png" width="25" height="20"/> - <span class="hide-menu">Programas</span></a>
                                <ul aria-expanded="false" class="collapse">
                                    <li><a href="chart-flot.html">Flot</a></li>
                                    <li><a href="chart-morris.html">Morris</a></li>
                                    <li><a href="chart-chartjs.html">ChartJs</a></li>
                                    <li><a href="chart-chartist.html">Chartist </a></li>
                                    <li><a href="chart-amchart.html">AmChart</a></li>
                                    <li><a href="chart-echart.html">EChart</a></li>
                                    <li><a href="chart-sparkline.html">Sparkline</a></li>
                                    <li><a href="chart-peity.html">Peity</a></li>
                                </ul>
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
                                        <p class="m-b-0">Total Revenue</p>
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
                                        <p class="m-b-0">Sales</p>
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
                                        <p class="m-b-0">Stores</p>
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
                                        <p class="m-b-0">Customer</p>
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
                                    <h4 class="card-title">Extra Area Chart</h4>
                                    <div id="extra-area-chart"></div>
                                </div>
                            </div>
                        </div>
                        <!-- column -->

                        <!-- column -->
                        <div class="col-lg-4">
                            <div class="card">
                                <div class="card-body browser">
                                    <p class="f-w-600">iMacs <span class="pull-right">85%</span></p>
                                    <div class="progress ">
                                        <div role="progressbar" style="width: 85%; height:8px;" class="progress-bar bg-danger wow animated progress-animated"> <span class="sr-only">60% Complete</span> </div>
                                    </div>

                                    <p class="m-t-30 f-w-600">iBooks<span class="pull-right">90%</span></p>
                                    <div class="progress">
                                        <div role="progressbar" style="width: 90%; height:8px;" class="progress-bar bg-info wow animated progress-animated"> <span class="sr-only">60% Complete</span> </div>
                                    </div>

                                    <p class="m-t-30 f-w-600">iPhone<span class="pull-right">65%</span></p>
                                    <div class="progress">
                                        <div role="progressbar" style="width: 65%; height:8px;" class="progress-bar bg-success wow animated progress-animated"> <span class="sr-only">60% Complete</span> </div>
                                    </div>

                                    <p class="m-t-30 f-w-600">Samsung<span class="pull-right">65%</span></p>
                                    <div class="progress">
                                        <div role="progressbar" style="width: 65%; height:8px;" class="progress-bar bg-warning wow animated progress-animated"> <span class="sr-only">60% Complete</span> </div>
                                    </div>

                                    <p class="m-t-30 f-w-600">android<span class="pull-right">65%</span></p>
                                    <div class="progress m-b-30">
                                        <div role="progressbar" style="width: 65%; height:8px;" class="progress-bar bg-success wow animated progress-animated"> <span class="sr-only">60% Complete</span> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- column -->
                    </div>
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="card bg-dark">
                                <div class="testimonial-widget-one p-17">
                                    <div class="testimonial-widget-one owl-carousel owl-theme">
                                        <div class="item">
                                            <div class="testimonial-content">
                                                <img class="testimonial-author-img" src="images/avatar/2.jpg" alt="" />
                                                <div class="testimonial-author">John</div>
                                                <div class="testimonial-author-position">Founder-Ceo. Dell Corp</div>

                                                <div class="testimonial-text">
                                                    <i class="fa fa-quote-left"></i>  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation .
                                                    <i class="fa fa-quote-right"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="testimonial-content">
                                                <img class="testimonial-author-img" src="images/avatar/3.jpg" alt="" />
                                                <div class="testimonial-author">Abraham</div>
                                                <div class="testimonial-author-position">Founder-Ceo. Dell Corp</div>

                                                <div class="testimonial-text">
                                                    <i class="fa fa-quote-left"></i>  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation .
                                                    <i class="fa fa-quote-right"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="testimonial-content">
                                                <img class="testimonial-author-img" src="images/avatar/1.jpg" alt="" />
                                                <div class="testimonial-author">Lincoln</div>
                                                <div class="testimonial-author-position">Founder-Ceo. Dell Corp</div>

                                                <div class="testimonial-text">
                                                    <i class="fa fa-quote-left"></i>  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation .
                                                    <i class="fa fa-quote-right"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="testimonial-content">
                                                <img class="testimonial-author-img" src="images/avatar/4.jpg" alt="" />
                                                <div class="testimonial-author">TYRION LANNISTER</div>
                                                <div class="testimonial-author-position">Founder-Ceo. Dell Corp</div>

                                               <div class="testimonial-text">
                                                    <i class="fa fa-quote-left"></i>  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation .
                                                    <i class="fa fa-quote-right"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="testimonial-content">
                                                <img class="testimonial-author-img" src="images/avatar/5.jpg" alt="" />
                                                <div class="testimonial-author">TYRION LANNISTER</div>
                                                <div class="testimonial-author-position">Founder-Ceo. Dell Corp</div>

                                                <div class="testimonial-text">
                                                    <i class="fa fa-quote-left"></i>  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation .
                                                    <i class="fa fa-quote-right"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="testimonial-content">
                                                <img class="testimonial-author-img" src="images/avatar/6.jpg" alt="" />
                                                <div class="testimonial-author">TYRION LANNISTER</div>
                                                <div class="testimonial-author-position">Founder-Ceo. Dell Corp</div>

                                                <div class="testimonial-text">
                                                    <i class="fa fa-quote-left"></i>  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation .
                                                    <i class="fa fa-quote-right"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-9">
                            <div class="card">
                                <div class="card-title">
                                    <h4>Recent Orders </h4>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Name</th>
                                                    <th>Product</th>
                                                    <th>quantity</th>
                                                    <th>Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                                <tr>
                                                    <td>
                                                        <div class="round-img">
                                                            <a href=""><img src="images/avatar/4.jpg" alt=""></a>
                                                        </div>
                                                    </td>
                                                    <td>John Abraham</td>
                                                    <td><span>iBook</span></td>
                                                    <td><span>456 pcs</span></td>
                                                    <td><span class="badge badge-success">Done</span></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="round-img">
                                                            <a href=""><img src="images/avatar/2.jpg" alt=""></a>
                                                        </div>
                                                    </td>
                                                    <td>John Abraham</td>
                                                    <td><span>iPhone</span></td>
                                                    <td><span>456 pcs</span></td>
                                                    <td><span class="badge badge-success">Done</span></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="round-img">
                                                            <a href=""><img src="images/avatar/3.jpg" alt=""></a>
                                                        </div>
                                                    </td>
                                                    <td>John Abraham</td>
                                                    <td><span>iMac</span></td>
                                                    <td><span>456 pcs</span></td>
                                                    <td><span class="badge badge-warning">Pending</span></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="round-img">
                                                            <a href=""><img src="images/avatar/4.jpg" alt=""></a>
                                                        </div>
                                                    </td>
                                                    <td>John Abraham</td>
                                                    <td><span>iBook</span></td>
                                                    <td><span>456 pcs</span></td>
                                                    <td><span class="badge badge-success">Done</span></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-lg-8">
                            <div class="row">
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-title">
                                        <h4>Message </h4>
                                    </div>
                                    <div class="recent-comment">
                                        <div class="media">
                                            <div class="media-left">
                                                <a href="#"><img alt="..." src="images/avatar/1.jpg" class="media-object"></a>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">john doe</h4>
                                                <p>Cras sit amet nibh libero, in gravida nulla. </p>
                                                <p class="comment-date">October 21, 2018</p>
                                            </div>
                                        </div>
                                        <div class="media">
                                            <div class="media-left">
                                                <a href="#"><img alt="..." src="images/avatar/1.jpg" class="media-object"></a>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">john doe</h4>
                                                <p>Cras sit amet nibh libero, in gravida nulla. </p>
                                                <p class="comment-date">October 21, 2018</p>
                                            </div>
                                        </div>

                                        <div class="media">
                                            <div class="media-left">
                                                <a href="#"><img alt="..." src="images/avatar/1.jpg" class="media-object"></a>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">john doe</h4>
                                                <p>Cras sit amet nibh libero, in gravida nulla. </p>
                                                <p class="comment-date">October 21, 2018</p>
                                            </div>
                                        </div>

                                        <div class="media no-border">
                                            <div class="media-left">
                                                <a href="#"><img alt="..." src="images/avatar/1.jpg" class="media-object"></a>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Mr. Michael</h4>
                                                <p>Cras sit amet nibh libero, in gravida nulla. </p>
                                                <div class="comment-date">October 21, 2018</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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

                        <div class="col-lg-4">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Todo</h4>
                                    <div class="card-content">
                                        <div class="todo-list">
                                            <div class="tdl-holder">
                                                <div class="tdl-content">
                                                    <ul>
                                                        <li>
                                                            <label>
                                                                <input type="checkbox"><i class="bg-primary"></i><span>Build an angular app</span>
                                                                <a href='#' class="ti-close"></a>
                                                            </label>
                                                        </li>
                                                        <li>
                                                            <label>
                                                                <input type="checkbox" checked><i class="bg-success"></i><span>Creating component page</span>
                                                                <a href='#' class="ti-close"></a>
                                                            </label>
                                                        </li>
                                                        <li>
                                                            <label>
                                                                <input type="checkbox" checked><i class="bg-warning"></i><span>Follow back those who follow you</span>
                                                                <a href='#' class="ti-close"></a>
                                                            </label>
                                                        </li>
                                                        <li>
                                                            <label>
                                                                <input type="checkbox" checked><i class="bg-danger"></i><span>Design One page theme</span>
                                                                <a href='#' class="ti-close"></a>
                                                            </label>
                                                        </li>

                                                        <li>
                                                            <label>
                                                                <input type="checkbox" checked><i class="bg-success"></i><span>Creating component page</span>
                                                                <a href='#' class="ti-close"></a>
                                                            </label>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <input type="text" class="tdl-new form-control" placeholder="Type here">
                                            </div>
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