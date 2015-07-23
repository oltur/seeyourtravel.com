using ExifLib;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
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

            using (var writer = new StreamWriter("metadata.csv", true))
            {
                foreach (var path in Directory.EnumerateFiles(root, "*.jp*", SearchOption.AllDirectories))
                {
                    f(path, writer);
                }
            }
        }

        static void f(string path, StreamWriter writer)
        {
            string fileName = Path.GetFileName(path);

            try
            {

                decimal lon = -1000;
                decimal lat = -1000;

                using (var reader = new ExifReader(path))
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

                writer.WriteLine("<r><a>{0}</a><b>{1}</b><c>{2}</c></r>", path, lat, lon);
            }
            catch (Exception ex)
            {
                // Something didn't work!
                //MessageBox.Show(this, ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private static string RenderTag(object tagValue)
        {
            // Arrays don't render well without assistance.
            var array = tagValue as Array;
            if (array != null)
            {
                // Hex rendering for really big byte arrays (ugly otherwise)
                if (array.Length > 20 && array.GetType().GetElementType() == typeof(byte))
                    return "0x" + string.Join("", array.Cast<byte>().Select(x => x.ToString("X2")).ToArray());

                return string.Join(", ", array.Cast<object>().Select(x => x.ToString()).ToArray());
            }

            return tagValue.ToString();
        }
    }
}
