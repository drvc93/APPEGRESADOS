<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="AppEgresados.Registrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

   
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Registra tus datos.</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Latest compiled and minified CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet" />

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link href="SweetAlert/sweetalert.css" rel="stylesheet" />
    <script src="SweetAlert/sweetalert.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
    <script>
        function myFunction() {
            var e = document.getElementById("trabajando");
            var strUser = e.options[e.selectedIndex].value;

            var x = document.getElementById('paneltrabajo');
            if (strUser === '1.- Me encuentro trabajando actualmente.') {
                x.style.display = 'block';
            } else {
                x.style.display = 'none';
            }
        }

        function MsjAlert(msj, tipe) {
            swal("Aviso", msj, tipe)
        }

    </script>
    <script>
        window.fbAsyncInit = function () {
            FB.init({
                appId: '1744370802470844',
                cookie: true,
                xfbml: true,
                version: 'v2.8'
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

        (function (d, s, id) {
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
    <style>
        #contenedor{
           background-color: #ffffff;
background-image: url("https://www.transparenttextures.com/patterns/connected.png");
/* This is mostly intended for prototyping; please download the pattern and re-host for production environments. Thank you! */ }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <asp:UpdatePanel runat="server">
            <ContentTemplate>

                <div id="contenedor" class="container" style="width: 100%;">
                    <div class="row">
                        <div class="col-md-5">
                            <div class="form-group">
                                <br />
                                <br />
                                <br />
                                <img src="imgs/Fondo.png" style="width: 100%; height: 80%; background-size: cover;" />
                                <br />
                                <br />
                                <h5 style="font-family: 'Eras ITC'; width: 100%; text-align: center;">ESCUELA PROFESIONAL DE INGENIERIA DE COMPUTACION Y SISTEMAS</h5>
                                <br />
                                <h4 style="font-family: 'Eras ITC'; width: 100%; text-align: center; color: #04094D">Registrate y actualiza tus datos.</h4>
                            </div>
                        </div>
                        <div class="col-md-5" style="background: rgba(226, 226, 226, 0.6);border-radius:10px; margin-top:10px;margin-bottom:10px;">
                            <div class="form-group" style="margin-top: 20px;">
                                <label for="nombre">NOMBRES </label>
                                <input runat="server" type="text" class="form-control" id="nombre" placeholder="" />

                            </div>
                            <div class="form-group">
                                <label for="apellido">APELLIDOS </label>
                                <input runat="server" type="text" class="form-control" id="apellido" placeholder="" />
                            </div>

                            <div class="form-group">
                                <label for="mail">CORREO ELECTRONICO</label>
                                <input runat="server" class="form-control" type="email" value="" placeholder="example@hotmail.com" id="mail" />

                            </div>

                            <div class="row">
                                <div class="col-sm-6">

                                    <label for="idupao">NIP/ID UPAO</label>
                                    <input runat="server" class="form-control" type="number" value="" id="idupao" />

                                </div>
                                <div class="col-sm-6">
                                    <label for="celular">NUMERO CELULAR ACTUAL</label>
                                    <input runat="server" class="form-control" type="number" value="" id="celular" />

                                </div>

                            </div>
                            <div class="form-group">

                                <label for="trabajando">Situacion Laboral : </label>
                                <select onchange="myFunction()" runat="server" class="form-control" id="trabajando">
                                    <option>1.- Me encuentro trabajando actualmente.</option>
                                    <option>2.- No me encuntro trabajando actualmente.</option>
                                    <option>3.- Estoy en busqueda de trabajo.</option>

                                </select>
                            </div>
                            <div id="paneltrabajo" class="panel panel-primary">
                                <div class="panel-heading" >
                                    <strong>DATOS LABORALES </strong>
                                </div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label for="ciudadtrabajo">DEPARTAMENTO </label>
                                        <select runat="server" class="form-control" id="ciudadtrabajo">
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
                                        <input runat="server" type="text" class="form-control" id="empresa" placeholder="" />

                                        <div class="row">
                                            <div class="col-sm-5">
                                                <label for="fechainicio">FECHA DE INICI APROX.</label>
                                                <input runat="server" class="form-control" type="date" value="2011-08-19" id="fechainicio" />
                                            </div>
                                            <div class="col-sm-7">
                                                <label for="puesto">PUESTO O CARGO </label>
                                                <input runat="server" type="text" class="form-control" id="puesto" placeholder="" />
                                            </div>
                                        </div>

                                    </div>

                                </div>
                            </div>
                            <div class="form-group">
                                <label style="color: darkblue; font-weight: bold;" for="evento">EVENTO A PARTICIPAR</label>
                                <asp:DropDownList runat="server" ID="evento" CssClass="form-control">
                                    <asp:ListItem Text="Evento 1">

                                    </asp:ListItem>
                                </asp:DropDownList>
                            </div>

                            <div class="row" style="">
                                <div class="col-md-3">
                                </div>
                                <div class="col-md-6">

                                    <asp:Button style="background-color:black;color:white;" runat="server" ID="btnregistrar" OnClick="btnregistrar_Click" class="form-control" Text="Enviar"  />
                                    <br />
                                </div>
                                <div class="col-md-3">
                                </div>
                            </div>

                        </div>
                        <div class="col-md-2"></div>
                    </div>

                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
