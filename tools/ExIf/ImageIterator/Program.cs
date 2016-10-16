using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SYTTools;

namespace ImageIterator
{
    class Program
    {
        static void Main(string[] args)
        {
            string cs = @"Data Source=localhost;Initial Catalog=seeyourtravel;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            var sqlConn = new SqlConnection(cs);
            sqlConn.Open();
            SqlDataAdapter adp = new SqlDataAdapter("select * from Image", sqlConn);
            DataSet ds = new DataSet();
            adp.Fill(ds, "Image");

            var table = ds.Tables["Image"];

            var checksums = new Dictionary<string, DataRow>();

            int i = 0;
            foreach (DataRow row in table.Rows)
            {
                var id = row["ImageId"];
                var path = @"D:\Projects\__seeyourtravel\seeyourtravel.com\web\data\images\" + row["Filename"];

                if (row["Checksum"] is DBNull)
                {
                    try
                    {
                        row["Checksum"] = Tools.CalcChecksum(path);
                        var sql = string.Format("UPDATE Image SET CheckSum='{0}' WHERE ImageId='{1}'", row["Checksum"], id);
                        var cmd = new SqlCommand(sql, sqlConn);
                        cmd.ExecuteNonQuery();
                    }
                    catch (SqlException ex)
                    {
                        if (ex.Message.Contains("with unique index"))
                        {
                            var sql = string.Format("DELETE FROM Image WHERE ImageId='{1}'", row["Checksum"], id);
                            var cmd = new SqlCommand(sql, sqlConn);
                            cmd.ExecuteNonQuery();

                            File.Move(path, @"D:\Projects\__seeyourtravel\seeyourtravel.com\web\data\images\tbd\" + row["Filename"]);
                        }
                    }
                }
            }

            Console.WriteLine(i++);
        }
    }
}

