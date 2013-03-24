<%@ Page Language="C#"%>
<!DOCTYPE html>
<html>
<head>
    <title>Our travels - Save track</title>
    <script src="js/OurTravel.js"></script>
    <link rel="stylesheet" href="styles/ourTravel.css"/>
</head>
<body>
    <a href="index.aspx">Main page</a>
&nbsp;
<a href="editor.aspx">Editor page</a>
&nbsp;Coord: <span id="lbl"></span>
<%
    //Response.Write(Request.QueryString.Count);
    string filename = Request.QueryString["filename"];
    string path = Server.MapPath(".") + "\\tracks\\" + filename + ".js";
    Response.Write(path);
    using (System.IO.StreamWriter writer = new System.IO.StreamWriter(path, false))
    {
        writer.WriteLine("{");

        writer.WriteLine("\"name\":\"" + Request.QueryString["name"] + "\"");
        if (!string.IsNullOrEmpty(Request.QueryString["copyright"]))
        {
        writer.Write(",");
        writer.WriteLine("\"copyright\":\"" + Request.QueryString["copyright"] + "\"");
        }
        if (!string.IsNullOrEmpty(Request.QueryString["defaultScale"]))
        {
            writer.Write(",");
            writer.WriteLine("\"defaultScale\":" + Request.QueryString["defaultScale"] + "");
        }
        if (!string.IsNullOrEmpty(Request.QueryString["photoLocationTolerancy"]))
        {
        writer.Write(",");
        writer.WriteLine("\"photoLocationTolerancy\":" + Request.QueryString["photoLocationTolerancy"] + "");
        }
        if (!string.IsNullOrEmpty(Request.QueryString["stepsToRedraw"]))
        {
        writer.Write(",");
        writer.WriteLine("\"stepsToRedraw\":" + Request.QueryString["stepsToRedraw"] + "");
        }
        if (!string.IsNullOrEmpty(Request.QueryString["stepsToShowPhoto"]))
        {
            writer.Write(",");
            writer.WriteLine("\"stepsToShowPhoto\":" + Request.QueryString["stepsToShowPhoto"] + "");
        }
        if (!string.IsNullOrEmpty(Request.QueryString["numOfPhotos"]))
        {
            writer.Write(",");
            writer.WriteLine("\"numOfPhotos\":" + Request.QueryString["numOfPhotos"] + "");
        }
        else
        {
            writer.Write(",");
            writer.WriteLine("\"numOfPhotos\":10");
        }
            
        if (!string.IsNullOrEmpty(Request.QueryString["velocityMetersPerSec"]))
        {
        writer.Write(",");
        writer.WriteLine("\"velocityMetersPerSec\":" + Request.QueryString["velocityMetersPerSec"] + "");
        }
        if (!string.IsNullOrEmpty(Request.QueryString["icon"]))
        {
        writer.Write(",");
        writer.WriteLine("\"icon\":\"" + Request.QueryString["icon"] + "\"");
        }
        if (!string.IsNullOrEmpty(Request.QueryString["audioSrc"]))
        {
        writer.Write(",");
        writer.WriteLine("\"audioSrc\":\"" + Request.QueryString["audioSrc"] + "\"");
        }
        if (!string.IsNullOrEmpty(Request.QueryString["tracaudioVolumekGpx"]))
        {
        writer.Write(",");
        writer.WriteLine("\"audioVolume\":" + Request.QueryString["audioVolume"] + "");
        }
        if (!string.IsNullOrEmpty(Request.QueryString["textToRead"]))
        {
        writer.Write(",");
        writer.WriteLine("\"textToRead\":\"" + Request.QueryString["textToRead"] + "\"");
        }
        if (!string.IsNullOrEmpty(Request.QueryString["trackGpx"]))
        {
            writer.Write(",");
            writer.WriteLine("\"trackGpx\":\"" + Request.QueryString["trackGpx"] + "\"");
        }
        else
        {
            writer.Write(",");
            writer.WriteLine("\"trackData\":[" + Request.QueryString["trackData"].Trim().TrimEnd(',') + "]");
        }
            //    "": 0.0005,
            //    "": 200,
            //    "stepsToShowPhoto": 1,
            //    "": 10,
            //    "numOfPhotos": 10,
            //"": "mybike.png",
            //"": "k.mp3",
            //"": 0.2,
            //"": "tracks/k.txt",
            //"":         

            writer.WriteLine("}");
        }
%>
</body>
</html>