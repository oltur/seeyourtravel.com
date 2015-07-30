using System;
using System.Web;
using System.Web.Security;

public partial class Login : System.Web.UI.Page
{
protected void LoginButton_Click(object sender, EventArgs e)
{
    // Three valid username/password pairs: Scott/password, Jisun/password, and Sam/password.
    string[] users = { "1", "2", "3" };
    string[] passwords = { "1", "2", "3" };
    for (int i = 0; i < users.Length; i++)
    {
        bool validUsername = (string.Compare(UserName.Text, users[i], true) == 0);
        bool validPassword = (string.Compare(Password.Text, passwords[i], false) == 0);
        if (validUsername && validPassword)
        {
                string name = this.UserName.Text.Trim();
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
                        name=="1"?"admins":""                              // role assignment is stored
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
    }

    // If we reach here, the user's credentials were invalid
    InvalidCredentialsMessage.Visible = true;
}
}