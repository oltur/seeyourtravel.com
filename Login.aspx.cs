using System;
using System.Web;
using System.Web.Security;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Diagnostics;

public partial class Login : System.Web.UI.Page
{
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        string name = this.UserName.Text.Trim();
        string psw = this.Password.Text.Trim();
        if (ValidateUser(name, psw))
        {

            // Success, create non-persistent authentication cookie.
            FormsAuthentication.SetAuthCookie(
                    name, RememberMe.Checked);

            FormsAuthenticationTicket ticket1 =
               new FormsAuthenticationTicket(
                    1,                                   // version
                    name,   // get username  from the form
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
            Response.Redirect(returnUrl1);

        }
        else
        {
            // If we reach here, the user's credentials were invalid
            InvalidCredentialsMessage.Visible = true;
        }
    }
    private bool ValidateUser(string userName, string passWord)
    {
        SqlConnection conn;
        SqlCommand cmd;
        string lookupPassword = null;

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
            cmd = new SqlCommand("Select [Password] from [User] where UserName=@userName", conn);
            cmd.Parameters.Add("@userName", SqlDbType.VarChar, 100);
            cmd.Parameters["@userName"].Value = userName;

            // Execute command and fetch pwd field into lookupPassword string.
            lookupPassword = (string)cmd.ExecuteScalar();

            // Cleanup command and connection objects.
            cmd.Dispose();
            conn.Dispose();
        }
        catch (Exception ex)
        {
            // Add error handling here for debugging.
            // This error message should not be sent back to the caller.
            System.Diagnostics.Trace.WriteLine("[ValidateUser] Exception " + ex.Message);
        }

        // If no password found, return false.
        if (null == lookupPassword)
        {
            WriteWarningToEventLog("Unsuccessfull login attempt for: " + userName);
            return false;
        }

        // Compare lookupPassword and input passWord, using a case-sensitive comparison.
        if (0 == string.Compare(lookupPassword, passWord, false))
        {
            WriteInfoToEventLog("Successfull login attempt for: " + userName);
            return true;
        }
        else
        {
            WriteWarningToEventLog("Unsuccessfull login attempt for: " + userName);
            return false;
        }

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