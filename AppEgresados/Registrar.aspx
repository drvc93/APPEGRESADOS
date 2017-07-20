<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="AppEgresados.Registrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Registrar Datos</title>
    </head>
    <body>
        <form id="form1" runat="server">
            <asp:ScriptManager runat="server"></asp:ScriptManager>
            <div style="width:100%">
                <div id="container" class="container" style="text-align:center;">
                    <h1>REGISTRO DE EGRESADOS</h1>
                    <h3>ESCUELA DE INGENIERIA DE COMPUTACION Y SISTEMAS DE LA UNIVERSIDAD PRIVADA ANTENOR ORREGO </h3>

                    <div style="text-align:left;">
                        <label for="nombre">NOMBRE</label>
                        <input runat="server" type="text" style="max-width:600px;" class="form-control" id="nombre"/>
                    </div>
                    <div style="text-align:left;">
                        <label for="apellidos">AOELLIDOS</label>
                        <input runat="server" type="text" style="max-width:600px;" class="form-control" id="apellidos"/>
                    </div>
                    <div style="text-align:left;">
                        <label for="correo">CORREO ELECTRONICO</label>
                        <input runat="server" type="text" style="max-width:600px;" name="email" placeholder="ejemplo@hotmail.com" class="form-control" id="correo"/>
                    </div>
                    <div style="text-align:left;">
                        <label for="nip">NIP/ID UPAO:</label>
                        <input runat="server" type="text" style="max-width:600px;" class="form-control" id="nip"/>
                    </div>
                    <div style="text-align:left;">
                        <label for="celular">NUMERO CELULAR ACTUAL:</label>
                        <input runat="server"  onkeypress='return event.charCode >= 48 && event.charCode <= 57'  type="text" style="max-width:600px;" class="form-control" id="celular"/>
                    </div>
                    <div style="text-align:left;">
                        <br />

                        <table style="width:auto;">
                            <tr>
                                <td>
                                    <asp:Button class="btn btn-success" Text="Confirmar Numero" runat="server" ID="btnConfirmarMSJ"></asp:Button>
                                </td>
                                <td>

                                    <input  placeholder="Codigo  de confirmacion" runat="server" type="text" style="max-width:300px;" class="form-control" id="codigoconfirm"/>
                                </td>
                            </tr>
                        </table>

                    </div>

                </div>
            </div>
        </form>
    </body>
</html>
