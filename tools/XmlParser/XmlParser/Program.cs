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
            doc.Load(@"D:\1\metadata.csv");
            int i = 0;
            foreach (XmlElement item in doc.SelectNodes("//r"))
            {
                string oldfilepath = ((item.ChildNodes[0] as XmlElement).InnerText);
                string oldfilename = Path.GetFileName(oldfilepath);
                float lat = float.Parse((item.ChildNodes[1] as XmlElement).InnerText);
                float lng = float.Parse((item.ChildNodes[2] as XmlElement).InnerText);

                var id = Guid.NewGuid().ToString();
                //string newfilename = id + Path.GetExtension(oldfilepath);
                string newfilename = oldfilename;
                string newpath = @"D:\11\" + newfilename;

                Thread.Sleep(10);
                if (File.Exists(oldfilepath))
                {
                    //File.Copy(oldfilepath, newpath);
                    Console.WriteLine("insert into Image (ImageID,FileName,IsPublic,Lat,Lng,Description) values ('{0}','{1}',{2},{3},{4},'{5}')",
                        id, newfilename, 0, lat, lng, oldfilename);
                }
            }
            Console.ReadLine();
        }
    }
}
