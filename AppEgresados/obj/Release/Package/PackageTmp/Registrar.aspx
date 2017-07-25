<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="AppEgresados.Registrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Registrar Datos</title>
        <script>
            function myFunction() {
                var e = document.getElementById("trabajando");
                var strUser = e.options[e.selectedIndex].value;
               
                var x = document.getElementById('paneltrabajo');
                if (strUser === '1.- Me encuntro trabajando actualmente.') {
                    x.style.display = 'block';
                } else {
                    x.style.display = 'none';
                }
            }
        </script>
        <script>
            window.fbAsyncInit = function() {
                FB.init({
                            appId      : '1744370802470844',
                            cookie     : true,
                            xfbml      : true,
                            version    : 'v2.8'
                        });
                FB.api('/me', 'GET', { fields: 'first_name,last_name,name,id' }, function (response) {
                    //document.getElementById('status').innerHTML = response.id;
                    document.getElementById('nombre').value = response.first_name;
                    document.getElementById('apellido').value = response.last_name;
                });

                FB.getLoginStatus(function (response) {
                    if (response.status === 'connected') {
                        //document.getElementById('status').innerHTML = 'We are connected.';
                        // document.getElementById('login').style.visibility = 'hidden';
                        //document.getElementById('btnForm').style.visibility = 'visible';
                        FB.api('/me', 'GET', { fields: 'first_name,last_name,name,id,email' }, function (response) {
                            //	document.getElementById('status').innerHTML = response.id;
                            document.getElementById('nombre').value = response.first_name;
                            document.getElementById('apellido').value = response.last_name;
                            document.getElementById('mail').value = response.email;
  
                            
                           
                        });
                    } else if (response.status === 'not_authorized') {
                        //document.getElementById('status').innerHTML = 'We are not logged in.'
                        //document.getElementById("nombre").style.visibility = 'hidden';
                    } else {
                        //	document.getElementById('status').innerHTML = 'You are not logged into Facebook.';
                       // document.getElementById("nombre").style.visibility = 'hidden';
                    }
                });
            };
            
            (function(d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) {
                    return;
                }
                js = d.createElement(s);
                js.id = id;
                js.src = "//connect.facebook.net/en_US/sdk.js";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));
        </script>

    </head>
    <body>
        <form id="form1" runat="server">
            <asp:ScriptManager runat="server"></asp:ScriptManager>
            <div style="width:100%">
                <div id="container" class="container" style="text-align:center;">
                    <h1>REGISTRO DE EGRESADOS</h1>
                    <h3>ESCUELA DE INGENIERIA DE COMPUTACION Y SISTEMAS DE LA UNIVERSIDAD PRIVADA ANTENOR ORREGO </h3>
                </div>
                <div class="container" style="max-width:700px;">
                    <div class="form-group">

                        <label for="nombre">NOMBRES </label>
                        <input type="text" class="form-control" id="nombre" placeholder=""/>

                        <label for="apellido">APELLIDOS </label>
                        <input type="text" class="form-control" id="apellido" placeholder=""/>

                        <label for="mail" >CORREO ELECTRONICO</label>
                        <input class="form-control" type="email" value="" placeholder="example@hotmail.com" id="mail"/>

                        <label for="idupao" >NIP/ID UPAO</label>
                        <input class="form-control" type="number" value=""  id="idupao"/>

                        <label for="celular" >NUMERO CELULAR ACTUAL</label>
                        <input class="form-control" type="number" value="" id="celular"/>

                        <label for="trabajando">Situacion Laboral : </label>
                        <select onchange="myFunction()" class="form-control" id="trabajando">
                            <option>1.- Me encuntro trabajando actualmente.</option>
                            <option>2.- No me encuntro trabajando actualmente.</option>
                            <option>3.- Estoy en busqueda de trabajo.</option>

                        </select>

                    </div>
                    <div id="paneltrabajo" class="panel panel-primary">
                        <div class="panel-heading" style="background-color:darkblue;color:white; padding:10px; border-radius:10PX;text-align:center;">
                            <strong > DATOS LABORALES </strong>
                        </div>
                        <div class="panel-body">
                            <div  class="form-group">
                                <label for="ciudadtrabajo">DEPARTAMENTO </label>
                                <select  class="form-control" id="ciudadtrabajo">
                                    <option>Amazonas</option>
                                    <option>Ancash</option>
                                    <option>Apurimac</option>
                                    <option>Arequipa</option>
                                    <option>Ayacucho</option>
                                    <option>Cajamarca</option>
                                    <option>Callao</option>
                                    <option>Cusco</option>
                                    <option>Huancavelica</option>
                                    <option>Huanuco</option>
                                    <option>Ica</option>
                                    <option>Junin</option>
                                    <option>La Libertad</option>
                                    <option>Lambayeque</option>
                                    <option>Lima</option>
                                    <option>Loreto</option>
                                    <option>Madre De Dios</option>
                                    <option>Moquegua</option>
                                    <option>Pasco</option>
                                    <option>Piura</option>
                                    <option>Puno</option>
                                    <option>San Martin</option>
                                    <option>Tacna</option>
                                    <option>Tumbes</option>
                                    <option>Ucayali</option>

                                </select>

                                <label for="empresa">NOMBRE DE LA EMPRESA U ORGANIZACION </label>
                                <input type="text" class="form-control" id="empresa" placeholder=""/>

                                <label for="fechainicio" >FECHA DE INICI APROX.</label>
                                <input class="form-control" type="date" value="2011-08-19" id="fechainicio"/>
                                <label for="puesto">PUESTO O CARGO </label>
                                <input type="text" class="form-control" id="puesto" placeholder=""/>

                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </form>
    </body>
</html>
