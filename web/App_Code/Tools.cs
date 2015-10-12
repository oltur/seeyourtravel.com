using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

/// <summary>
/// Summary description for Tools
/// </summary>
public static class Tools
{
    public static Guid GetUserId(Page page)
    {
        return (page.Session["UserID"] == null) ? Guid.Empty : (Guid)page.Session["UserID"];
    }
    public static string GetUserName(Page page)
    {
        return (page.Session["UserName"] == null) ? "Guest" : page.Session["UserName"].ToString();
    }
    public static bool IsGuest(Page page)
    {
        var db = new SeeYourTravelEntities();
        return db.IsGuest(GetUserId(page)).First().Value == 1;
    }
}