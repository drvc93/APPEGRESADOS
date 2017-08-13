using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Twilio;
using Twilio.Rest.Api.V2010.Account;
using Twilio.Types;

namespace AppEgresados
{
    public partial class Registrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnConfirmarMSJ_Click(object sender, EventArgs e)
        {
            ///* var accountSid = "ACddc5a018f746323b2f03ad6db8689675";
            //// Your Auth Token from twilio.com/console
            //var authToken = "4a5c47537e27e8147d502b61ff839239";
            //TwilioClient.Init(accountSid, authToken);
            //var message = MessageResource.Create(
            //to: new PhoneNumber("+51969054679"),
            //from: new PhoneNumber("+12267985376"),
            //body: "Hello from C#");
            //ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert("+message.Sid+");", true);*/
            ////are required fields filled in:
            ////we creating the necessary URL string:
            //string ozSURL = "http://127.0.0.1"; //where the SMS Gateway is running
            //string ozSPort = "9501"; //port number where the SMS Gateway is listening
            //string ozUser = HttpUtility.UrlEncode("admin"); //username for successful login
            //string ozPassw = HttpUtility.UrlEncode("abc123"); //user's password
            //string ozMessageType = "SMS:TEXT"; //type of message
            //string ozRecipients = HttpUtility.UrlEncode("+51969054679"); //who will get the message
            //string ozMessageData = HttpUtility.UrlEncode("MENSAJE"); //body of message
            //string createdURL = ozSURL + ":" + ozSPort + "/httpapi" +
            //                    "?action=sendMessage" +
            //                    "&username=" + ozUser +
            //                    "&password=" + ozPassw +
            //                    "&messageType=" + ozMessageType +
            //                    "&recipient=" + ozRecipients +
            //                    "&messageData=" + ozMessageData;
            //try
            //{
            //    //Create the request and send data to the SMS Gateway Server by HTTP connection
            //    HttpWebRequest myReq = (HttpWebRequest)WebRequest.Create(createdURL);
            //    //Get response from the SMS Gateway Server and read the answer
            //    HttpWebResponse myResp = (HttpWebResponse)myReq.GetResponse();
            //    System.IO.StreamReader respStreamReader = new System.IO.StreamReader(myResp.GetResponseStream());
            //    string responseString = respStreamReader.ReadToEnd();
            //    respStreamReader.Close();
            //    myResp.Close();
            //    //inform the user
            //    //textboxError.Text = responseString;
            //    // textboxError.Visible = true;
            //}
            //catch (Exception ex)
            //{
            //    string mesage = ex.Message;
            //    //if sending request or getting response is not successful the SMS Gateway Server may do not run
            //    // textboxError.Text = "The SMS Gateway Server is not running!";
            //    //textboxError.Visible = true;
            //}
        }

        protected void btnregistrar_Click(object sender, EventArgs e)
        {
        //    string sNombres = nombre.Value;
        //    string sApellidos = apellido.Value;
        //    string sCorreo = mail.Value;
        //    string nipupao = idupao.Value;
        //    string cel = celular.Value;
        //    string situacion = trabajando.Value;
        //    string dep = ciudadtrabajo.Value;
        //    string empre = empresa.Value;
        //    string fechaI = fechainicio.Value;
        //    string cargoempresa = puesto.Value;
        //    string evnt = evento.Text;

        //    if (String.IsNullOrEmpty(sNombres))
        //    {
        //       // Response.Write("<script>alert('error sd asds ')</script>"); 
        //        diverror.Visible = true;
        //        texterror.InnerText = "Falta ingresar el nombre.";
        //        return;
        //    }
        //    else if (String.IsNullOrEmpty(sApellidos))
        //    {
        //      //  ClientScript.RegisterStartupScript(GetType(), "Aviso", "MsjAlert('Debe ingresar sus apellidos.', 'error');", true);
        //        return;
        //    }
        //    else if (String.IsNullOrEmpty(sApellidos))
        //    {
        //       // ClientScript.RegisterStartupScript(GetType(), "Aviso", "MsjAlert('Debe ingresar su ID O NIP UPAO.', 'error');", true);
        //        return;
        //    }
        //    else if (String.IsNullOrEmpty(cel))
        //    {
        //       // ClientScript.RegisterStartupScript(GetType(), "Aviso", "MsjAlert('Debe ingresar su  número de celular actual.', 'error');", true);
        //        return;
        //    }
        //    int result = 0;
        //    OleDbConnection conn = null ;
        //    try
        //    {
        //        string directorio = HttpContext.Current.Server.MapPath("~");
        //        string filepath = @"\Excel\DATA.xlsx";

        //        string ConStr = "";
        //        //getting the path of the file     
        //        string path = directorio + filepath;
        //        //connection string for that file which extantion is .xlsx    
        //        ConStr = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + path + ";Extended Properties=\"Excel 12.0;ReadOnly=False;HDR=Yes;\"";
        //        //making query    
        //        string query = "INSERT INTO [registros$] ([Nombres], [Apellidos], [Correo], [IDUpao], [Celular], [SituacionLab], [Departamento], [Empresa], [FechaIni], [Cargo], [Evento],[FechaReg]) " + " " +
        //                       " VALUES ('" + sNombres.ToUpper() + "','" + sApellidos.ToUpper() + "','" + sCorreo + "','" + nipupao + "','" + cel + "','" + situacion + "','" + dep + "','" + empre.ToUpper() + "','" + fechaI + "','" + cargoempresa.ToUpper() + "','" + evnt + "','"+DateTime.Now+ "'"+")";
        //        //Providing connection    
        //        conn = new OleDbConnection(ConStr);
        //        //checking that connection state is closed or not if closed the     
        //        //open the connection    
        //        if (conn.State == ConnectionState.Closed)
        //        {
        //            conn.Open();
        //        }
        //        //create command object    
        //        OleDbCommand cmd = new OleDbCommand(query, conn);
        //        result = cmd.ExecuteNonQuery();
        //    }
        //    catch (Exception ex)
        //    {

        //        ClientScript.RegisterStartupScript(GetType(), "Aviso", "MsjAlert('"+ex.Message+"', 'error');", true);
        //    }
        //    finally
        //    {
        //        conn.Close();  
        //    }

        //    if (result > 0)
        //    {
        //        ClientScript.RegisterStartupScript(GetType(), "Aviso", "MsjAlert('Sus datos fueron registrados correctamente.', 'success');", true);
        //    }
        //    else
        //    {
        //        ClientScript.RegisterStartupScript(GetType(), "Aviso", "MsjAlert('Hubo error al registrar.', 'error');", true);
        //    }
        }
    }
}