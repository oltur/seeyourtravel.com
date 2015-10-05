<%@ Page Language="C#"%>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Text" %>
<%
    Response.ContentType = "text/plain";

    //FileInfo[] files = new DirectoryInfo(Server.MapPath("..")).GetFiles("*.js");
    //StringBuilder sb = new StringBuilder();

    //foreach( FileInfo file in files)                                                                      
    //{
    //if(sb.Length != 0)
    //	sb.Append("\n");
    //sb.Append(Path.GetFileNameWithoutExtension(file.Name));
    //}
    //Response.Write(sb);

    var db = new SeeYourTravelEntities();
    Guid userId = (Session["UserID"] == null)?Guid.Empty:(Guid)Session["UserID"];//string.IsNullOrWhiteSpace(Session["UserId"] as string) ? Guid.Empty : Guid.Parse(Session["UserId"] as string);
    var tracks = (from t in db.GetUserandPublicTracks(userId) orderby t.Description select t).ToList();
    StringBuilder sb = new StringBuilder();

    foreach (var track in tracks)
    {
        if (sb.Length != 0)
            sb.Append("\n");
        sb.Append(Path.GetFileNameWithoutExtension(track.FileName)+";"+track.Description);
    }
    Response.Write(sb);
%>    
