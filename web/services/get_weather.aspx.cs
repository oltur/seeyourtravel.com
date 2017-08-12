﻿using System;
using System.Text;
using System.Web;
using System.Linq;
using System.Xml;
using System.Net;

public partial class services_get_places : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["lat"] != null)
        {
            string callback = Request.QueryString["callback"];
            decimal lat = decimal.Parse(Request.QueryString["lat"]);
            decimal lng = decimal.Parse(Request.QueryString["lng"]);

            var url = string.Format("https://api.darksky.net/forecast/aab9c20336dcf00df223c6a6409398a5/{0},{1}", lat, lng);
            WebClient client = new WebClient();
            var data = client.DownloadString(url);

            //Response.Cache.SetNoStore();
            //Response.Cache.SetNoServerCaching();
            //Response.Cache.SetMaxAge(new TimeSpan(0));
            //Response.Cache.SetCacheability(HttpCacheability.NoCache);
            //Response.Cache.AppendCacheExtension("no-store, must-revalidate");
            //Response.AppendHeader("Pragma", "no-cache");
            //Response.AppendHeader("Expires", "0");

            string result = string.Format(@"/**/{0}( {1} )", callback, data);

            Response.Clear();
            Response.ContentType = "application/javascript; charset=utf-8";
            Response.Headers.Add("X-Frame-Options", "SAMEORIGIN");
            Response.Headers.Add("Content-Disposition", "Attachment");

            Response.Write(result);

            Response.End();
        }
    }
}
//        string result = @"/**/" + callback + @"( {
//   'html_attributions' : [],
//   'next_page_token' : 'CoQC9AAAAJ--wCsNhotf9qf23DPwPDuM5t0iBee4HsyLksTuqiJXod1qyTsxA-XZ_d2E6iQO-KxXwUGi-y0abQc75GxAhM7Owzs_CWPfrLhQDcsCwmeIaVJOkFshdN_ms6p0VDtRy9lsAgSd-8ufJcah9CvY8YXHgS8_ZRE0TgcIQvhZH5C0mysMMtnDqQqWaZwpLKJz0_7vR4sWuqYEm8zDxERsaeHGEokIhbuFh-9c_f9YMsdvW8v-Njmt80tKSuWAuz3XA3m8UdqZTDmkkrMEkUhwgsCtEWWG2htDYuM5Ahm_nL_GimwZ8rfGT5tZ0rcmexo6O5NOALeCmX81OFuyjU8RyVcSEBPnezRjVNBcnYCtnP2p_5caFLQYCq7Ntfyh-Me1MF-8SKiBNgm4',
//   'results' : [
//      {
//         'geometry' : {
//            'location' : {
//               'lat' : 50.459021,
//               'lng' : 30.490029
//            }
//         },
//         'icon' : 'http://maps.gstatic.com/mapfiles/place_api/icons/lodging-71.png',
//         'id' : '7b02a90d6ca08c66a393394f651b342cfa099cf7',
//         'name' : 'Business Center Forum',
//         'opening_hours' : {
//            'open_now' : true,
//            'weekday_text' : []
//         },
//         'photos' : [
//            {
//               'height' : 500,
//               'html_attributions' : [
//                  '\u003ca href=\'https://seeyourtravel.com/data/places/forum.jpg\'\u003eBusiness Center Forum, Kyiv\u003c/a\u003e'
//               ],
//               'raw_reference' : {
//                  'fife_url' : 'https://seeyourtravel.com/data/places/forum.jpg'
//               },
//               'width' : 375
//            }
//         ],
//         'place_id' : 'SYT_ChIJN4hjZZeDQUYRomvwjuHwwp8',
//         'rating' : 1.1,
//         'reference' : 'CoQBfwAAAJct3UQ1FDf7msS62iBHPWdfPQWDJp9fMZZszkYpMC5DY8ROI6tqZxtAgWsghUbGtdfOJzCKTQ3jxHkorv9WrqD1z8HumCvVjTZ3vhbK7KuIkpP2-XgTTelUVLgGVZA-4gpUhHrlofYs1TmiutBjH5-a6DzasnPeTmeYifbEbqDOEhBIKylxdg5tQkU1jvHJLE7TGhRykwoUQN-ppdetuMKoVTaslSTSsw',
//         'scope' : 'SeeYourTravel',
//         'types' : [ 'lodging', 'point_of_interest', 'establishment' ],
//         'vicinity' : 'Lukyanivka, Kyiv'
//      }
//   ],
//   'status' : 'OK'
//}
// )";
