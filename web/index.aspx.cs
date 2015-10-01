using System;
using System.Web;
using System.Web.Security;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
//using System.Web.Helpers;
using System.Diagnostics;
using System.Web.Script.Serialization;
using System.Collections.Generic;
using System.Linq;

public partial class Index : System.Web.UI.Page
{
//    SeeYourTravelEntities db;
    protected void Page_Load(object sender, EventArgs e)
    {
        var t = User.IsInRole("admins");
    }
}