using System;
using System.Linq;
using System.Threading;
using System.Web;

public partial class SaveTrack : System.Web.UI.Page
{
    protected Guid TrackId = Guid.Empty;
    protected string TrackFileName = "";
    SeeYourTravelEntities db;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Guid trackId = Guid.Parse(Request.Form["trackId"]);
            string trackFileName = Request.Form["trackFileName"];
            string trackDescription = Request.Form["name"];
            string path = Server.MapPath(".") + "\\tracks\\" + trackId.ToString() + ".js";
            string category = "Other";
            if (!string.IsNullOrEmpty(Request.Form["category"]))
                category = Request.Form["category"];

            using (System.IO.StreamWriter writer = new System.IO.StreamWriter(path, false))
            {
                writer.WriteLine("{");

                writer.WriteLine("\"name\":\"" + Request.Form["name"] + "\"");
                if (!string.IsNullOrEmpty(Request.Form["copyright"]))
                {
                    writer.Write(",");
                    writer.WriteLine("\"copyright\":\"" + Request.Form["copyright"] + "\"");
                }
                if (!string.IsNullOrEmpty(Request.Form["defaultScale"]))
                {
                    writer.Write(",");
                    writer.WriteLine("\"defaultScale\":" + Request.Form["defaultScale"] + "");
                }
                if (!string.IsNullOrEmpty(Request.Form["photoLocationTolerancy"]))
                {
                    writer.Write(",");
                    writer.WriteLine("\"photoLocationTolerancy\":" + Request.Form["photoLocationTolerancy"] + "");
                }
                if (!string.IsNullOrEmpty(Request.Form["stepsToRedraw"]))
                {
                    writer.Write(",");
                    writer.WriteLine("\"stepsToRedraw\":" + Request.Form["stepsToRedraw"] + "");
                }
                if (!string.IsNullOrEmpty(Request.Form["stepsToShowPhoto"]))
                {
                    writer.Write(",");
                    writer.WriteLine("\"stepsToShowPhoto\":" + Request.Form["stepsToShowPhoto"] + "");
                }
                if (!string.IsNullOrEmpty(Request.Form["numOfPhotos"]))
                {
                    writer.Write(",");
                    writer.WriteLine("\"numOfPhotos\":" + Request.Form["numOfPhotos"] + "");
                }
                else
                {
                    writer.Write(",");
                    writer.WriteLine("\"numOfPhotos\":10");
                }

                if (!string.IsNullOrEmpty(Request.Form["velocityMetersPerSec"]))
                {
                    writer.Write(",");
                    writer.WriteLine("\"velocityMetersPerSec\":" + Request.Form["velocityMetersPerSec"] + "");
                }
                if (!string.IsNullOrEmpty(Request.Form["icon"]))
                {
                    writer.Write(",");
                    writer.WriteLine("\"icon\":\"" + Request.Form["icon"] + "\"");
                }
                if (!string.IsNullOrEmpty(Request.Form["trackImage"]))
                {
                    writer.Write(",");
                    writer.WriteLine("\"trackImage\":\"" + Request.Form["trackImage"] + "\"");
                }
                if (!string.IsNullOrEmpty(Request.Form["audioSrc"]))
                {
                    writer.Write(",");
                    writer.WriteLine("\"audioSrc\":\"" + Request.Form["audioSrc"] + "\"");
                }
                if (!string.IsNullOrEmpty(Request.Form["textToRead"]))
                {
                    writer.Write(",");
                    writer.WriteLine("\"textToRead\":\"" + Request.Form["textToRead"] + "\"");
                }
                if (!string.IsNullOrEmpty(Request.Form["trackGpx"]))
                {
                    writer.Write(",");
                    writer.WriteLine("\"trackGpx\":\"" + Request.Form["trackGpx"] + "\"");
                }
                else
                {
                    writer.Write(",");
                    writer.WriteLine("\"trackData\":" + Request.Form["trackData"]);
                }
                writer.Write(",");
                writer.WriteLine("\"category\":\"" + category + "\"");

                writer.WriteLine("}");
            }

            var db = new SeeYourTravelEntities();
            Guid userId = Tools.GetUserId(this);
            Track track = db.Tracks.FirstOrDefault(t => t.TrackID == trackId);
            if (track == null)
            {
                track = new Track();
                track.TrackID = trackId;
                db.Tracks.Add(track);
            }
            track.FileName = trackId.ToString();
            track.Description = trackDescription;
            track.IsPublic = string.IsNullOrEmpty(Request.Form["isPublic"]) ? false : (Request.Form["isPublic"] == "isPublic");
            track.Category = category;
            track.ImageUrl = string.IsNullOrWhiteSpace(Request.Form["trackImage"]) ? "" : Request.Form["trackImage"];

            db.SaveChanges();

            TrackUser trackUser = db.TrackUsers.FirstOrDefault(tu => (tu.TrackID == track.TrackID && tu.UserID == userId));
            if (trackUser == null)
            {
                trackUser = new TrackUser();
                trackUser.TrackUserID = Guid.NewGuid();
                trackUser.TrackID = track.TrackID;
                trackUser.UserID = userId;
                db.TrackUsers.Add(trackUser);

                db.SaveChanges();
            }

            Response.Redirect("./index.aspx?trackid=" + trackId);
        }
        catch (ThreadAbortException)
        {

        }
        catch (Exception ex)
        {
            string message = ex.Message;
            Response.Redirect("./index.aspx?errorMessage=" + HttpUtility.UrlEncode(message));
        }

    }
}