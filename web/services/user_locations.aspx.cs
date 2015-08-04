using System;
using System.Collections.Generic;
using System.Web;

public partial class services_user_locations : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string action = Request.QueryString["action"];
        string callback = Request.QueryString["callback"];

        // http://localhost:88/seeyourtravel/services/user_locations.aspx?action=getuserlocations&userId=ttt&lat=50&lng=50
        // http://localhost:88/seeyourtravel/services/get_places.aspx?types=restaurant%2Clodging&set=full&from=0&to=10&miny=47.955776&minx=10.096568999999999&maxy=48.055775999999994&maxx=10.196569&callback=abc

        //Response.Cache.SetNoStore();
        //Response.Cache.SetNoServerCaching();
        //Response.Cache.SetMaxAge(new TimeSpan(0));
        //Response.Cache.SetCacheability(HttpCacheability.NoCache);
        //Response.Cache.AppendCacheExtension("no-store, must-revalidate");
        //Response.AppendHeader("Pragma", "no-cache");
        //Response.AppendHeader("Expires", "0");

        Response.ContentType = "application/javascript; charset=utf-8";
        Response.Headers.Add("X-Frame-Options", "SAMEORIGIN");
        Response.Headers.Add("Content-Disposition", "Attachment");

        if (string.Compare(action, "getfriendslocations", true) == 0)
        {

            string resultgetfriendslocations = @"/**/" + callback + @"( [{
'userId' : '{0}',
'userName' : '{1}',
'lat' : {2},
'lng' : {3}
}]
 )";
            Response.Clear();
            Response.Write(resultgetfriendslocations);//TODO: Fix
        }
        else if (string.Compare(action, "senduserlocation", true) == 0)
        {

            string userId = Request.QueryString["userId"];
            string lat = Request.QueryString["lat"];
            string lng = Request.QueryString["lng"];

            Dictionary<string, Location> locations;
            if (this.Application["UserLocations"] != null)
            {
                locations = (Dictionary<string,Location>)this.Application["UserLocations"];
            }
            else
            {
                locations = new Dictionary<string, Location>();
            }

            if(locations.ContainsKey(userId))
                locations.Remove(userId);
            locations.Add(userId, new Location() { lat = Double.Parse(lat), lng = Double.Parse(lng) });

            this.Application["UserLocations"] = locations;

            var db = new SeeYourTravelEntities();
            UserLocation userLocation = new UserLocation();
            userLocation.UserLocationID = Guid.NewGuid();
            userLocation.UserID = Guid.Parse(userId);
            userLocation.Lat = double.Parse(lat);
            userLocation.Lng = double.Parse(lng);
            userLocation.Time = DateTime.UtcNow;
            db.UserLocations.Add(userLocation);
            db.SaveChanges();

            string resultsenduserlocation = @"/**/" + callback + @"( {} )";

            Response.Clear();
            Response.Write(resultsenduserlocation);
        }
        Response.End();
    }
}