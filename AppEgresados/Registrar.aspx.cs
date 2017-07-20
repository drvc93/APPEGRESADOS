using System;
using System.Collections.Generic;
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
            /* var accountSid = "ACddc5a018f746323b2f03ad6db8689675";
             // Your Auth Token from twilio.com/console
             var authToken = "4a5c47537e27e8147d502b61ff839239";
             TwilioClient.Init(accountSid, authToken);
             var message = MessageResource.Create(
                 to: new PhoneNumber("+51969054679"),
                 from: new PhoneNumber("+12267985376"),
                 body: "Hello from C#");

             ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert("+message.Sid+");", true);*/

            //are required fields filled in:
           
            //we creating the necessary URL string:
            string ozSURL = "http://127.0.0.1"; //where the SMS Gateway is running
            string ozSPort = "9501"; //port number where the SMS Gateway is listening
            string ozUser = HttpUtility.UrlEncode("admin"); //username for successful login
            string ozPassw = HttpUtility.UrlEncode("abc123"); //user's password
            string ozMessageType = "SMS:TEXT"; //type of message
            string ozRecipients = HttpUtility.UrlEncode("+51969054679"); //who will get the message
            string ozMessageData = HttpUtility.UrlEncode("MENSAJE"); //body of message
            string createdURL = ozSURL + ":" + ozSPort + "/httpapi" +
                "?action=sendMessage" +
                "&username=" + ozUser +
                "&password=" + ozPassw +
                "&messageType=" + ozMessageType +
                "&recipient=" + ozRecipients +
                "&messageData=" + ozMessageData;
            try
            {
                //Create the request and send data to the SMS Gateway Server by HTTP connection
                HttpWebRequest myReq = (HttpWebRequest)WebRequest.Create(createdURL);
                //Get response from the SMS Gateway Server and read the answer
                HttpWebResponse myResp = (HttpWebResponse)myReq.GetResponse();
                System.IO.StreamReader respStreamReader = new System.IO.StreamReader(myResp.GetResponseStream());
                string responseString = respStreamReader.ReadToEnd();
                respStreamReader.Close();
                myResp.Close();
                //inform the user
                //textboxError.Text = responseString;
                // textboxError.Visible = true;
            }
            catch (Exception ex)
            {
                string mesage = ex.Message;
                //if sending request or getting response is not successful the SMS Gateway Server may do not run
               // textboxError.Text = "The SMS Gateway Server is not running!";
                //textboxError.Visible = true;
            }


        }
    }
}