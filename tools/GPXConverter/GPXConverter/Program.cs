using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;

namespace GPXConverter
{
    class Program
    {
        static void Main(string[] args)
        {
            XmlDocument doc = new XmlDocument();
            doc.Load(@"C:\Users\Me\WebstormProjects\untitled\tracks\14476.xml");
            var names = new XmlNamespaceManager(doc.NameTable);
            names.AddNamespace("a", "http://www.topografix.com/GPX/1/1");
            var nodes = doc.SelectNodes("//a:trkpt", names);
            foreach (XmlElement node in nodes)
            {
                Console.WriteLine("[" + node.GetAttribute("lat") + "," + node.GetAttribute("lon") + "],");
            }
        }
    }
}
