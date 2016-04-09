using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LocationFixer
{
    class Program
    {
        static void Main(string[] args)
        {
            string path = "D:\\Projects\\__seeyourtravel\\seeyourtravel.com\\web\\tracks\\";
            var files = Directory.GetFiles(path);
            foreach (var file in files)
            {
                try {
                    var text = File.ReadAllText(file);
                    dynamic d = JObject.Parse(text);
                    var t = d.trackData[0];
                    string t2;
                    if (t is JArray) {
                        t2 = string.Format("{{\"lat\":\"{0}\",\"lng\":\"{1}\"}}", t[0], t[1]);
                    }
                    else {
                        t2 = JsonConvert.SerializeObject(t);
                    }
                    var file2 = Path.GetFileNameWithoutExtension(file);
                    Console.WriteLine(@"UPDATE Track set Location='{0}' where FileName='{1}'", t2, file2);
                }
                catch  { }
            }
        }
    }
}
