using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace SYTTools
{
    public static class Tools
    {
        public static string CalcChecksum(string path)
        {
            using (var md5 = MD5.Create())
            {
                using (var stream = File.OpenRead(path))
                {
                    return string.Concat(md5.ComputeHash(stream).Select(b => b.ToString("X2")).ToArray()).ToLower();
                }
            }
        }
    }
}
