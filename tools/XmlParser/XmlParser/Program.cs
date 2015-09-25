using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Xml;

namespace XmlParser
{
    class Program
    {
        static void Main(string[] args)
        {
            XmlDocument doc = new XmlDocument();
            doc.Load(@"D:\ot\Projects\seeyourtravel.com-git\seeyourtravel.com\tools\XmlParser\XmlParser\t\photos.xml");
            foreach (XmlElement item in doc.SelectNodes("//r"))
            {
                string oldfilename = Path.GetFileName((item.ChildNodes[0] as XmlElement).InnerText);
                float lat = float.Parse((item.ChildNodes[1] as XmlElement).InnerText);
                float lng = float.Parse((item.ChildNodes[2] as XmlElement).InnerText);

                string oldpath = @"D:\ot\Projects\seeyourtravel.com-git\seeyourtravel.com\tools\XmlParser\XmlParser\t\images\" + oldfilename;
                string newfilename = Guid.NewGuid().ToString() + Path.GetExtension(oldfilename);
                string newpath = @"D:\ot\Projects\seeyourtravel.com-git\seeyourtravel.com\tools\XmlParser\XmlParser\t\n\" + newfilename;

                Thread.Sleep(10);
                if (File.Exists(oldpath))
                {
                    File.Move(oldpath, newpath);
                    Console.WriteLine("insert into Images (filename,lat,lng) values ('" + newfilename + "'," + lat + "," + lng + ")");
                }
            }
            Console.ReadLine();
        }
    }
}
