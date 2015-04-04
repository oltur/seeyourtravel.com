<%@ Page Language="C#" Debug="true" %>
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
<!--span id="lbl"></span-->
<%
    //Response.Write(Request.Form.Count);
    string filenameFromServer = Request.Form["filename"];
    string path = Server.MapPath(".") + "\\tracks\\" + filenameFromServer + ".js";
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
        if (!string.IsNullOrEmpty(Request.Form["audioSrc"]))
        {
        writer.Write(",");
        writer.WriteLine("\"audioSrc\":\"" + Request.Form["audioSrc"] + "\"");
        }
        if (!string.IsNullOrEmpty(Request.Form["audioVolume"]))
        {
        writer.Write(",");
        writer.WriteLine("\"audioVolume\":" + Request.Form["audioVolume"] + "");
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
            writer.WriteLine("\"trackData\":[" + Request.Form["trackData"].Trim().TrimEnd(',') + "]");
        }

            writer.WriteLine("}");
        }
%>
</body>
</html>