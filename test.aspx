<%@ Page Language="C#"%>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Xml" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!--script src="libs/maps.googleapis.js"></script-->
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true&libraries=places"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="map2"></div>
    <div>

<%
    //string set = Request.QueryString["set"];
    int from = 1;
    int to = 10;
    double minx = 30;
    double miny = 50;
    double maxx = 31;
    double maxy = 51;
    //string order = Request.QueryString["order"];
  
    XmlDocument doc = new XmlDocument();
    doc.Load(Server.MapPath(@"data\photos.xml"));

    string query = string.Format("//r[b>={2} and b<={3} and c>={0} and c<={1}][position() >= {4} and position() <= {5}]", minx, maxx, miny, maxy, from, to);
    XmlNodeList list = doc.SelectNodes(query);
    foreach(XmlElement elem in list)
    {
        Response.Write(elem.InnerXml + "<br/>");
    } 
%>


    </div>
    </form>
</body>
</html>
