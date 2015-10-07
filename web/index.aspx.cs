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
    protected Guid TrackId = Guid.Empty;
    protected string TrackFileName = "";
    SeeYourTravelEntities db;
    protected void Page_Load(object sender, EventArgs e)
    {
        Guid userId = Tools.GetUserId(this);
        var db = new SeeYourTravelEntities();

        try
        {
            //var t = User.IsInRole("admins");
            if (Request["trackname"] != null)
            {
                TrackFileName = Request["trackname"];
                var t = db.GetTrackForUserByIdOrName(userId, null, TrackFileName);
                var track = t.FirstOrDefault();
                TrackId = track.TrackID;
            }
            else if (Request["trackid"] != null)
            {
                TrackId = Guid.Parse(Request["trackid"]);
                var track = db.GetTrackForUserByIdOrName(userId, TrackId, null).FirstOrDefault();
                TrackFileName = track.FileName;
            }
            else
            {
                TrackId = Guid.NewGuid();
                TrackFileName = "";
            }
        }
        catch (NullReferenceException ex)
        {
            TrackId = Guid.NewGuid();
            TrackFileName = "";
        }
    }
}