using System;
using System.Web;
using System.Web.Security;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
//using System.Web.Helpers;
using System.Diagnostics;
using System.Web.Script.Serialization;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        string token = this.Token.Value;
        string data = this.Data.Value;
        if (!string.IsNullOrWhiteSpace(token))
        {

            var serializer = new JavaScriptSerializer();
            FacebookData facebookdata = serializer.Deserialize<FacebookData>(data);

            //facebookdata.id = o.id;
            //facebookdata.name = o.name;
            Session["FacebookData"] = facebookdata;
            Session["FacebookToken"] = token;
            DoRedirect(facebookdata.id, facebookdata.name);
        }
        else
        {
            string name = this.UserName.Text.Trim();
            string psw = this.Password.Text.Trim();
            Guid userId;
            if (ValidateUser(name, psw, out userId))
            {
                DoRedirect(userId, name);
            }
            else
            {
                // If we reach here, the user's credentials were invalid
                Message.Text = "Your username or password is invalid. Please try again.";
            }
        }
    }

    private void DoRedirect(object id, string name)
    {
        Session["UserId"] = id;
        Session["UserName"] = name;
        // Success, create non-persistent authentication cookie.
        FormsAuthentication.SetAuthCookie(
                id.ToString(), RememberMe.Checked);

        FormsAuthenticationTicket ticket1 =
           new FormsAuthenticationTicket(
                2,                                   // version
                id.ToString(),   // get username  from the form
                DateTime.Now,                        // issue time is now
                DateTime.Now.AddMinutes(10),         // expires in 10 minutes
                RememberMe.Checked,      // cookie is not persistent
                name == "a" ? "admins" : ""                              // role assignment is stored
                                                                         // in userData
                );
        HttpCookie cookie1 = new HttpCookie(
          FormsAuthentication.FormsCookieName,
          FormsAuthentication.Encrypt(ticket1));
        Response.Cookies.Add(cookie1);

        String returnUrl1;
        // the login is successful
        if (Request.QueryString["ReturnUrl"] == null)
        {
            returnUrl1 = "index.html";
        }
        else
        {
            returnUrl1 = Request.QueryString["ReturnUrl"];
        }
        Message.Text = "";
        Response.Redirect(returnUrl1);
    }

    private bool ValidateUser(string userName, string passWord, out Guid userId)
    {
        SqlConnection conn;
        SqlCommand cmd;
        userId = Guid.Empty;

        // Check for invalid userName.
        // userName must not be null and must be between 1 and 15 characters.
        if ((null == userName) || (0 == userName.Length) || (userName.Length > 15))
        {
            System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of userName failed.");
            return false;
        }

        // Check for invalid passWord.
        // passWord must not be null and must be between 1 and 25 characters.
        if ((null == passWord) || (0 == passWord.Length) || (passWord.Length > 25))
        {
            System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of passWord failed.");
            return false;
        }

        try
        {
            // Consult with your SQL Server administrator for an appropriate connection
            // string to use to connect to your local SQL Server.
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["default"].ConnectionString);
            conn.Open();

            // Create SqlCommand to select pwd field from users table given supplied userName.
            cmd = new SqlCommand("Select [UserId] from [User] where UserName=@userName and UserPassword=@userPassword", conn);
            cmd.Parameters.Add("@userName", SqlDbType.VarChar, 100);
            cmd.Parameters["@userName"].Value = userName;
            cmd.Parameters.Add("@userPassword", SqlDbType.VarChar, 100);
            cmd.Parameters["@userPassword"].Value = passWord;

            // Execute command and fetch pwd field into lookupPassword string.
            userId = (Guid)cmd.ExecuteScalar();

            // Cleanup command and connection objects.
            cmd.Dispose();
            conn.Dispose();
        }
        catch (Exception ex)
        {
            // Add error handling here for debugging.
            // This error message should not be sent back to the caller.
            System.Diagnostics.Trace.WriteLine("[ValidateUser] Exception " + ex.Message);
            return false;
        }

        // If no password found, return false.
        if (Guid.Empty == userId)
        {
            WriteWarningToEventLog("Unsuccessfull login attempt for: " + userName);
            return false;
        }

        return true;
    }

    private void WriteInfoToEventLog(string message)
    {
        var level = EventLogEntryType.Information;
        WriteToEventLog(message, level);
    }

    private void WriteWarningToEventLog(string message)
    {
        var level = EventLogEntryType.Warning;
        WriteToEventLog(message, level);
    }

    private static void WriteToEventLog(string sEvent, EventLogEntryType level)
    {
        //var sSource = "SeeYourTavel Web Server";
        //var sLog = "Application";

        //if (!EventLog.SourceExists(sSource))
        //    EventLog.CreateEventSource(sSource, sLog);

        //EventLog.WriteEntry(sSource, sEvent, level, 2);
    }


}