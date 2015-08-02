<%@ WebHandler Language="C#" Class="DeleteCache" %>

using System;
using System.IO;
using System.Web;

public class DeleteCache : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        Directory.Delete(context.Server.MapPath("~/Photo/.cachePNG/"), true);
        Directory.Delete(context.Server.MapPath("~/Photo/.cache/"), true);
        Directory.Delete(context.Server.MapPath("~/Photo/.squareCache/"), true);
        context.Response.ContentType = "text/plain";
        context.Response.Write("Cache deleted");
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}