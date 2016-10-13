using ExifLib;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace MassExtract
{
    class Program
    {
        static void Main(string[] args)
        {
            string root = args[0];
            //string path = @"C:\_GoogleDrive\_Projects\seeyourtravel\tools\1024-2006_1011_093752.jpg";

            using (var writer = new StreamWriter(@"metadata.sql", true))
            {
                var files = Directory.EnumerateFiles(root, "*.jp*", SearchOption.AllDirectories);
                int i = 0;
                foreach (var file in files)
                {
                    f(file, args[1], writer);
                    Console.WriteLine (i++);
                }
            }
        }

        static void f(string sourcePath, string targetDir, StreamWriter writer)
        {
            string oldFileName = Path.GetFileName(sourcePath);

            try
            {

                decimal lon = -1000;
                decimal lat = -1000;

                using (var reader = new ExifReader(sourcePath))
                {
                    // Get the image thumbnail (if present)
                    var thumbnailBytes = reader.GetJpegThumbnailBytes();

                    //if (thumbnailBytes == null)
                    //    pictureBoxThumbnail.Image = null;
                    //else
                    //{
                    //    using (var stream = new MemoryStream(thumbnailBytes))
                    //        pictureBoxThumbnail.Image = Image.FromStream(stream);
                    //}

                    // To read a single field, use code like this:
                    DateTime datePictureTaken;
                    string GPSLatitudeRef;
                    double[] GPSLatitude = new double[3];
                    string GPSLongitudeRef;
                    double[] GPSLongitude = new double[3];


                    if (!reader.GetTagValue(ExifTags.GPSLatitudeRef, out GPSLatitudeRef))
                    {
                        GPSLatitudeRef = null;
                    }

                    if (GPSLatitudeRef != "N" && GPSLatitudeRef != "S")
                        return;

                    if (!reader.GetTagValue(ExifTags.GPSLongitudeRef, out GPSLongitudeRef))
                    {
                        GPSLongitudeRef = null;
                    }
                    if (!reader.GetTagValue(ExifTags.GPSLatitude, out GPSLatitude))
                    {
                        GPSLatitude = null;
                    }
                    if (!reader.GetTagValue(ExifTags.GPSLongitude, out GPSLongitude))
                    {
                        GPSLongitude = null;
                    }

                    if (GPSLatitudeRef == "N")
                    {
                        lat = (decimal)(GPSLatitude[0] + GPSLatitude[1] / 60 + GPSLatitude[1] / 3600);
                    }
                    else if (GPSLatitudeRef == "S")
                    {
                        lat = -(decimal)(GPSLatitude[0] + GPSLatitude[1] / 60 + GPSLatitude[1] / 3600);
                    }


                    if (GPSLongitudeRef == "E")
                    {
                        lon = (decimal)(GPSLongitude[0] + GPSLongitude[1] / 60 + GPSLongitude[1] / 360);
                    }
                    else if (GPSLongitudeRef == "W")
                    {
                        lon = -(decimal)(GPSLongitude[0] + GPSLongitude[1] / 60 + GPSLongitude[1] / 360);
                    }
                }

                Guid id = Guid.NewGuid();

                string newFileName = id.ToString() + Path.GetExtension(oldFileName);

                File.Copy(sourcePath, Path.Combine(targetDir, newFileName));

                //writer.WriteLine("<r><a>{0}</a><b>{1}</b><c>{2}</c></r>", path, lat, lon);
                string s = @"
INSERT INTO [dbo].[Image]
           ([ImageID]
           ,[FileName]
           ,[IsPublic]
           ,[Lat]
           ,[Lng]
           ,[Description]
           ,[Created]
            ,[Checksum])
     VALUES
           ('{0}'
           ,'{1}'
           ,1
           ,{2}
           ,{3}
           ,'{4}'
           ,'{5}'
            ,'{6}')

GO

";

                writer.WriteLine(s, id, newFileName, lat, lon, oldFileName, DateTime.UtcNow.ToString("yyyy-MM-dd"), CalcChecksum(sourcePath));
            }
            catch (Exception ex)
            {
                // Something didn't work!
                //MessageBox.Show(this, ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private static string CalcChecksum(string path)
        {
            using (var md5 = MD5.Create())
            {
                using (var stream = File.OpenRead(path))
                {
                    return string.Concat(md5.ComputeHash(stream).Select(b => b.ToString("X2")).ToArray()).ToLower();
                }
            }
        }

        //private static string RenderTag(object tagValue)
        //{
        //    // Arrays don't render well without assistance.
        //    var array = tagValue as Array;
        //    if (array != null)
        //    {
        //        // Hex rendering for really big byte arrays (ugly otherwise)
        //        if (array.Length > 20 && array.GetType().GetElementType() == typeof(byte))
        //            return "0x" + string.Join("", array.Cast<byte>().Select(x => x.ToString("X2")).ToArray());

        //        return string.Join(", ", array.Cast<object>().Select(x => x.ToString()).ToArray());
        //    }

        //    return tagValue.ToString();
        //}
    }
}
