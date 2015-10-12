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
using System.IO;

public partial class UserPhotos : System.Web.UI.Page
{
    SeeYourTravelEntities db;
    protected void Page_Load(object sender, EventArgs e)
    {
        Guid userId = Tools.GetUserId(this);
        if(userId == Guid.Empty || userId == new Guid("4324d1ff-b698-44b6-bc2a-d96f42d2300b"))
        {
            Response.Redirect("index.aspx");
        }

        if (this.IsPostBack)
        {
            //var db = new SeeYourTravelEntities();

            HttpFileCollection files = Request.Files; // Load File collection into HttpFileCollection variable.
            var keys = files.AllKeys;  // This will get names of all files into a string array.
            for (int i= 0; i < keys.Length; i++)
            {
                Guid id = Guid.NewGuid();
                var key = keys[i];
                var file = files[key];
                var oldFileName = file.FileName;
                var ext = Path.GetExtension(oldFileName);
                var newFileName = id.ToString() + ext;
                var path = Server.MapPath("./data/images/1/" + newFileName);
                file.SaveAs(path);
                Location location = LocationExtractor.GetLocation(path);
            }
        }
    }
}