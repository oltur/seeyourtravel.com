<%@ Page Title="Track is saved" Language="C#" MasterPageFile="MasterPage.master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="HeadPlaceholder" runat="Server">

    <script>
        delayRedirect('./index.aspx?trackname=<%=Request.Form["name"]%>');
        function delayRedirect(url) {
            var Timeout = setTimeout("window.location='" + url + "'", 10);
        }
    </script>

</asp:Content>

<asp:Content ID="bodyContent" ContentPlaceHolderID="BodyPlaceholder" runat="Server">

    <div class="mapheader">
        &nbsp;
       <a href="#">
           <img src="img/logosmall.png" style="height: 24px; width: 24px; vertical-align: middle;" /></a>
        &nbsp;
       Track is saved! You will be back to <a href="index.aspx">Main page</a> in a second, or click the link.
        &nbsp;
    </div>

<!--span id="lbl"></span-->
<%
    //Response.Write(Request.Form.Count);
    string filenameFromServer = Request.Form["name"];
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
%>
</asp:Content>
