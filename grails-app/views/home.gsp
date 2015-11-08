<%--
  Created by IntelliJ IDEA.
  User: SAMUELLEONARDO
  Date: 1/11/2015
  Time: 8:36 PM
--%>

<!DOCTYPE html>
<!-- saved from url=(0043)http://getbootstrap.com/examples/carousel/# -->
<html lang="en">
<head>
    <title>Semáforo - Inicio</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="UTF-8">
    <link rel="icon" href="http://unal.edu.co/fileadmin/templates/favicon.ico">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="demo.css"/>
    <asset:stylesheet src="common.css"/>
    <asset:stylesheet src="style2.css"/>
    <asset:stylesheet src="fontello.css"/>
    <asset:stylesheet src="estilos.css"/>
    <asset:stylesheet src="columnas.css"/>

</head>


<body>
<header>
    <div class="container">
        <h1 class="icon-semaforo">Semáforo</h1><!-- BARRA DE MENU (CONSOLIDADA) -->
        <input type="checkbox" id="menu-bar">
        <label class="icon-menu" for="menu-bar"></label>

        <nav class="menu">
            <a href="${createLink(uri: '/home')}">Inicio</a>
            <a href="${createLink(uri: '/whoWeAre')}">¿Quienes Somos?</a>
            <a ref=#>Equipo</a>
            <g:if test="${session.cliente}" >
                <li><a href="#">${session.cliente.nombre}</a>
                    <ul>
                        <li><a href="">Mi perfil</a></li>
                        <li><a href="">Configuración</a></li>
                        <li><g:link controller="cliente" action ="logout">Salir</g:link></li>
                    </ul>
                </li>
            </g:if>

            <g:else>
                <a href="${createLink(uri: '/ingresar')}">Login</a>
            </g:else>
        </nav>

    </div>
</header>

<section id="banner"><!-- BANNER SUPERIOR -->
    <img src="http://7-themes.com/data_images/out/21/6839236-traffic-light.jpg">
    <div class="container">
        <h2>Semáforo, regístrate y afilia tu vehículo!</h2>
        <p>¿Cual es el mejor seguro para tu vehículo?</p>
        <a href="#">Leer más</a>
    </div>
</section>
<section id="mostrar">
    <h2>¿No tienes cuenta en Semáforo?...</h2>
    <p> Regístrate fácil y rápido!</p>
</section>
<div class="container">

    <section>

        <ul class="ch-grid">
            <li>
                <div class="ch-item ch-img-1">
                    <div class="ch-info">
                        <h3>Cliente</h3>
                        <p>Obtén beneficios para tí y tu vehículo!<g:link controller="cliente" action ="register">Regístrate</g:link></p>
                    </div>
                </div>
            </li>
            <li>
                <div class="ch-item ch-img-2">
                    <div class="ch-info">
                        <h3>Vendedor</h3>
                        <p>Crea tu cuenta y ofrece tus servicios!<a href="http://drbl.in/eNXW">Regístrate</a></p>
                    </div>
                </div>
            </li>
            <li>
                <div class="ch-item ch-img-3">
                    <div class="ch-info">
                        <h3>Taller</h3>
                        <p>Haz crecer tu negocio con más clientes!<a href="http://drbl.in/eNXY">Regístrate</a></p>
                    </div>
                </div>
            </li>
        </ul>
    </section>
</div>

    <div class="container">
        <div class="main row">
            <article class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                <p>
                <h3>Importancia de un Seguro de Vehículo</h3>

                Cuando se maneja un automóvil se está expuesto a todo tipo de accidentes
                y de situaciones que pueden ser lesivas para la seguridad de las personas.
                Con motivo de garantizar una reparación mínima en el caso de que exista un
                accidente, la ley establece que aquellos que tengan un vehículo a su cargo
                deban tener un seguro básico que cubra los gastos ocasionados en esas circunstancias.
                De esta manera, por ejemplo, si un auto choca a otro, la aseguradora del automóvil
                cuyo dueño es responsable deberá pagar al dueño del auto chocado la suma que cubra todos
                los gastos ocasionados. Este tipo de obligación tiene como fin que el hecho de manejar
                un auto tenga algún margen de seguridad, teniendo en cuenta que los accidentes en este
                sentido pueden ser numerosos.
            </p>
            </article>

            <aside class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                <p>
                <h3>Semáforo</h3>

                Creando una cuenta en Semáforo, adquieres beneficios como registrar los vehículos de los cuales
                eres propietario.  Puedes mirar las distintas ofertas de seguros de acuerdo a las características
                de tu vehículo, seleccionando la que se acomode más a tus necesidades.<br>
                </p>
            </aside>
        </div>
        <div class="row">
            <div class="color1 col-xs-12 col-sm-6 col-md-3">
                <h4 class="icon-tool">Servicios</h4>
                <p>Registra y afilia tus vehículos... Revisa su estado en el taller...</p>
            </div>
            <div class="color2 col-xs-12 col-sm-6 col-md-3">
                <h4 class="icon-us">Acerca de Nosotros</h4>
                <p>Revisa nuestra sección "¿Quienes somos?" en el menú principal... </p>
            </div>
            <div class="clearfix visible-sm-block"></div>
            <div class="color1 col-xs-12 col-sm-6 col-md-3">
                <h4 class="icon-reg">Registro</h4>
                <p>Estando registrado obtienes acceso a nuestros beneficios...</p>
            </div>

            <div class="color2 col-xs-12 col-sm-6 col-md-3">
                <h4 class="icon-team">Equipo</h4>
                <p>Revisa nuestra sección "Equipo" en la barra del menú principal...</p>
            </div>
        </div>
    </div>
    </section>
    <br><br>


<div class="container-fluid">
    <br>
    <div class="col-md-12">
        <div id="carousel-1" class="carousel slide" data-ride="carousel">
            <!-- indicadores -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-1" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-1" data-slide-to="1"></li>
                <li data-target="#carousel-1" data-slide-to="2"></li>
            </ol>
            <!-- Contenedor slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="https://www.soti.net/media/5765/mobicontrol_banner.jpg" class="img-responsive" alt="">
                    <div class="carousel-caption">
                        <h3>Contáctenos:</h3>
                        <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                        <p>Dirección: Cra 39# 25-87, Bogotá D.C.</p>
                        <p>Teléfonos: 304 628 50 61</p>
                    </div>
                </div>
                <div class="item">
                    <img src="http://www.sapiseguridad.com/wp-content/uploads/2013/04/Layer_slider_bg1.jpg" class="img-responsive" alt="">
                    <div class="carousel-caption">
                        <h3>Este es nuestro slide1</h3>
                        <p>bla bla bla</p>
                    </div>
                </div>
                <div class="item">
                    <img src="http://www.digital-direction.com/images/default-source/page-banner-images/winding-road-sign-bw.jpg?sfvrsn=2" alt="">
                    <div class="carousel-caption">
                        <h3>Este es nuestro slide1</h3>
                        <p>bla bla bla</p>
                    </div>
                </div>
            </div>
            <!--controles-->
        </div>
    </div>
</div>

<footer>
    <div class="container">
        <p class="copy">Semáforo &copy; 2015</p>
        <div class="sociales">
            <a class="icon-fb" href="#"></a>
            <a class="icon-twitter" href="#"></a>
            <a class="icon-gp" href="#"></a>
        </div>
    </div>
</footer>

</body>
</html>