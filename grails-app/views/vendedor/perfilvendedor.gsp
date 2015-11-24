<%@ page import="semaforo.Vendedor" %>
<html lang="en">
<head>
    <title>Semáforo - Editar Perfil de Vendedor</title>
    <g:set var="entityName" value="${message(code: 'vendedor.label', default: 'Vendedor')}" />
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

    <!--[if IE]>
            <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
            <![endif]-->
    <title>Bootstrap user profile template</title>
    <!-- BOOTSTRAP STYLE SHEET -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT-AWESOME STYLE SHEET FOR BEAUTIFUL ICONS -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLE CSS -->
    <style type="text/css">
    .btn-social {
        color: white;
        opacity: 0.8;
    }
    .btn-social:hover {
        color: white;
        opacity: 1;
        text-decoration: none;
    }

    </style>
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
                        <li><a href="">Mi perfil</a></li>
                        <li><a href="">Configuración</a></li>
                        <li><g:link controller="cliente" action ="logout">Salir</g:link></li>
                    </ul>
                </li>
            </g:if>
            <g:elseif test="${session.vendedor}">
                <li><a href="#">${session.vendedor.nombre}</a>
                    <ul style="padding-left: 0px">
                        <li><a href="/Semaforo/vendedor/perfilvendedor">Mi Perfil</a></li>
                        <li><a href="">Configuración</a></li>
                        <li><g:link controller="vendedor" action="logout">Salir</g:link></li>
                    </ul>
                </li>
            </g:elseif>
            <g:else>
                <a href="${createLink(uri: '/ingresar')}">Login</a>
            </g:else>


        </nav>

    </div>
</header>

<br><br><br><br>
<!-- NAVBAR CODE END -->


<div class="container">
    <section style="padding-bottom: 50px; padding-top: 50px;">
        <div class="row">
            <g:form class="col-md-4" url="[resource: session.vendedor, action: 'update']" method="PUT" >
                <g:img dir="images" file="profile_pic.jpg"/>
                %{--<img src="/images/profile_pic.jpg" class="img-rounded img-responsive" />--}%
                <br />
                <br />

                    <fieldset class="form" style="border: 0px;">
                        <div class="form-group">
                            <div class="fieldcontain" ${hasErrors(bean: vendedorInstance, field: 'usuario', 'error')}>
                                <label for="usuario">Usuario Registrado</label>
                                <input type="text" name="usuario" class="form-control" value="${session.vendedor.usuario}" maxlength="50" id="usuario">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="fieldcontain" ${hasErrors(bean: vendedorInstance, field: 'nombre', 'error')}>
                                <label for="nombre">Nombre</label>
                                <input type="text" name="nombre" class="form-control" value="${session.vendedor.nombre}" maxlength="50" id="nombre">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="fieldcontain" ${hasErrors(bean: vendedorInstance, field: 'email', 'error')}>
                                <label for="correo">Email Registrado</label>
                                <input type="email" name="correo" class="form-control" value="${session.vendedor.correo}" maxlength="50" id="correo">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="fieldcontain" ${hasErrors(bean: vendedorInstance, field: 'edad', 'error')}>
                                <label for="edad">Edad</label>
                                <input type="number" name="edad" min="18" class="form-control" value="${session.vendedor.edad}" id="edad">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="fieldcontain=" ${hasErrors(bean: vendedorInstance, field: 'cedula, error')}>
                                <label for="cedula">Cedula</label>
                                <input type="number" name="cedula" class="form-control" value="${session.vendedor.cedula}" disabled id="cedula">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="fieldcontain" ${hasErrors(bean: vendedorInstance, field: 'empresa', 'error')}>
                                <label for="empresa">Empresa</label>
                                <input type="text" name="empresa" class="form-control" value="${Vendedor.get(session.vendedor.id).empresa?.nombre}" disabled id="empresa">
                            </div>
                        </div>
                    </fieldset>

                    <br>
                    <fieldset class="buttons" style="border: 0px;">
                        <g:actionSubmit style="color: #fff; background-color: #5cb85c; border-color: #4cae4c; display: inline-block;
    padding: 6px 12px;
    margin-bottom: 0;
    font-size: 14px;
    font-weight: 400;
    line-height: 1.42857143;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    -ms-touch-action: manipulation;
    touch-action: manipulation;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    background-image: none;
    border: 1px solid transparent;
    border-radius: 4px;" class="save btn-success" action="update" value="Actualizar Datos"/>
                    </fieldset>
            </g:form>

            <div class="col-md-8">
                <div class="alert alert-info">
                    <h2>Tu Descripcion : </h2>
                    <p>
                        //
                    </p>
                </div>

                <div class="form-group col-md-8">
                    <h3>Cambia tu contraseña</h3>
                    <br />
                    <label>Ingresa tu contraseña anterior</label>
                    <input type="password" class="form-control">
                    <label>Ingresa tu nueva contraseña</label>
                    <input type="password" class="form-control">
                    <label>Confirma tu contraseña nueva</label>
                    <input type="password" class="form-control" />
                    <br>
                    <a href="#" class="btn btn-warning">Cambiar contraseña</a>
                </div>
            </div>
        </div>
        <!-- ROW END -->


    </section>
    <!-- SECTION END -->
</div>
<!-- CONATINER END -->

<!-- REQUIRED SCRIPTS FILES -->
<!-- CORE JQUERY FILE -->
<script src="assets/js/jquery-1.11.1.js"></script>
<!-- REQUIRED BOOTSTRAP SCRIPTS -->
<script src="assets/js/bootstrap.js"></script>
</body>

</html>