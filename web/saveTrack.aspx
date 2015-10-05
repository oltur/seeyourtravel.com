<%@ Page Language="C#" %>
<%@ Import Namespace="System.Threading" %>
<%

    try
    {
        string trackName = Request.Form["name"];
        string trackFileName = Guid.NewGuid().ToString().Trim('{', '}');
        string path = Server.MapPath(".") + "\\tracks\\" + trackFileName + ".js";
        using (System.IO.StreamWriter writer = new System.IO.StreamWriter(path, false))
        {
            writer.WriteLine("{");

            writer.WriteLine("\"name\":\"" + Request.Form["name"] + "\"");
            if (!string.IsNullOrEmpty(Request.Form["copyright"]))
            {
                writer.Write(",");
                writer.WriteLine("\"copyright\":\"" + Request.Form["copyright"] + "\"");
            }
            if (!string.IsNullOrEmpty(Request.Form["defaultScale"])) ;
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
                writer.WriteLine("\"icon\":\"" + Request.Form["trackImage"] + "\"");
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

            writer.WriteLine("}");
        }

        var db = new SeeYourTravelEntities();
        Guid userId = (Session["UserID"] == null)?Guid.Empty:(Guid)Session["UserID"];//string.IsNullOrWhiteSpace(Session["UserId"] as string) ? Guid.Empty : Guid.Parse(Session["UserId"] as string);
        Track track = new Track();
        track.TrackID = Guid.NewGuid();
        track.FileName = trackFileName;
        track.Description = trackName;
        track.IsPublic = string.IsNullOrEmpty(Request.Form["isPublic"]) ? false : (Request.Form["isPublic"]=="isPublic");
        db.Tracks.Add(track);

        db.SaveChanges();

        TrackUser trackUser = new TrackUser();
        trackUser.TrackUserID = Guid.NewGuid();
        trackUser.TrackID = track.TrackID;
        trackUser.UserID = userId;
        db.TrackUsers.Add(trackUser);

        db.SaveChanges();

        Response.Redirect("./index.aspx?trackname=" + trackName);
    }
    catch(ThreadAbortException)
    {

    }
    catch (Exception ex)
    {
        string message = ex.Message;
        Response.Redirect("./index.aspx?errorMessage=" + message);
    }

%>
