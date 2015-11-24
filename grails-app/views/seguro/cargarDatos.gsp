<%--
  Created by IntelliJ IDEA.
  User: Juan
  Date: 15/11/2015
  Time: 04:05 PM
--%>

<!DOCTYPE html>
<html>
<head>
    <title>Cargar Datos de Seguros</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="UTF-8">
    <link rel="icon" href="http://unal.edu.co/fileadmin/templates/favicon.ico">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300' rel='stylesheet' type='text/css'>
    <asset:stylesheet src="vehReqView.css"/>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="demo.css"/>
    <asset:stylesheet src="common.css"/>
    <asset:stylesheet src="style2.css"/>
    <asset:stylesheet src="fontello.css"/>
    <asset:stylesheet src="estilos.css"/>
    <asset:stylesheet src="columnas.css"/>
    <asset:stylesheet src="responsiveslides.css"/>
    <asset:javascript src="responsiveslides.js"/>
    <asset:stylesheet src="animate.css"/>
    <asset:javascript src="wow.min.js"/>
    <asset:stylesheet src="default.css"/>
    <asset:stylesheet src="font-awesome.min.css"/>
    <script>
        $(document).ready(function(){
            $("#slider-home").responsiveSlides({
                speed:300,
                nav: true,
                namespace: 'slid-btns',
                titleAnimation: 'bounceIn'
            });
        });
    </script>
</head>
<body>
<header>

    <div class="container">
        <h1 class="icon-semaforo">Semáforo</h1><!-- BARRA DE MENU (CONSOLIDADA) -->
        <input type="checkbox" id="menu-bar">
        <label class="icon-menu" for="menu-bar"></label>

        <nav class="menu">
            <a href="${createLink(uri: '/')}">Inicio</a>
            <a href="${createLink(uri: '/whoWeAre')}">¿Quienes Somos?</a>
            <a href="${createLink(uri: '/equipo')}">Equipo</a>
            <g:if test="${session.cliente}" >
                <li><a href="#">${session.cliente.nombre}</a>
                    <ul>
                        <li><a href="/Semaforo/cliente/perfilusuario">Mi perfil</a></li>
                        <li><a href="">Configuración</a></li>
                        <li><g:link controller="cliente" action ="logout">Salir</g:link></li>
                    </ul>
                </li>
            </g:if>
            <g:elseif test="${session.vendedor}">
                <li><a href="#">${session.vendedor.nombre}</a>
                    <ul>
                        <li><a href="">Mi Perfil</a></li>
                        <li><a href="">Configuración</a></li>
                        <li><g:link controller="vendedor" action="logout">Salir</g:link></li>
                    </ul>
                </li>
            </g:elseif>
            <g:else>
                <li><a href="#">Login</a>
                    <ul style="padding-left: 0px">
                        <li><a href="${createLink(uri: '/ingresar')}">Como Ciente</a></li>
                        <li><a href="${createLink(uri: '/ingresarvendedor')}">Como Vendedor</a></li>
                    </ul>
                </li>
            </g:else>
        </nav>

    </div>
</header>

<section id="mostrar">
    <br><br><br><br>
    <h2>Ofrece tus servicios a los usuarios de Semáforo</h2>
    <p>En el siguiente espacio podrás subir el archivo con la información de tu Empresita de mierda.</p>
    <br><br><br>
</section>

<div class="container">
<g:uploadForm action="cargar" class="col-md-6 col-md-offset-3 form-group">
    <label> Por favor cargue sus pólizas: </label>
    <br>
    <input type="file" class="form-control" name="csv" required="required"/>
    <br>
    <button class="btn btn-success">Subir</button>
</g:uploadForm>
</div>
</body>
</html>