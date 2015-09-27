<%@ Page Language="C#"%>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Text" %>
<%
Response.ContentType = "text/plain";

FileInfo[] files = new DirectoryInfo(Server.MapPath("..")).GetFiles("*.js");
StringBuilder sb = new StringBuilder();

foreach( FileInfo file in files)                                                                      
{
if(sb.Length != 0)
	sb.Append("\n");
sb.Append(Path.GetFileNameWithoutExtension(file.Name));
}
Response.Write(sb);
%>    
