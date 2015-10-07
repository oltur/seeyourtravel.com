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
}