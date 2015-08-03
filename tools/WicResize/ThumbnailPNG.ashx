<%@ WebHandler Language="C#" Class="ThumbnailPNG" %>

using System;
using System.IO;
using System.Text.RegularExpressions;
using System.Web;
using Microsoft.Test.Tools.WicCop.InteropServices.ComTypes;
using WicResize.InteropServices;

public class ThumbnailPNG : IHttpHandler {
    private const uint ThumbnailSize = 150;

    private readonly Regex _nameValidationExpression = new Regex(@"[^\w/]+");
    private const string PhotoPath = "~/Photo/";
    protected const string PhotoCachePath = "~/Photo/.CachePNG/";

    public void ProcessRequest(HttpContext context) {
        // Get parameters from query string
        var photoName = context.Request.QueryString["p"] ?? String.Empty;
        if (_nameValidationExpression.IsMatch(photoName)) {
            throw new HttpException(404, "Invalid photo name.");
        }
        var cache = !String.Equals(context.Request.QueryString["nocache"], "true", StringComparison.OrdinalIgnoreCase);
        // Check out the cache
        var cachePath = context.Server.MapPath(PhotoCachePath);
        var photoCachePath = Path.Combine(cachePath, photoName + ".png");
        if (cache && File.Exists(photoCachePath)) {
            OutputCacheResponse(context, File.GetLastWriteTime(photoCachePath));
            context.Response.ContentType = "image/png";
            context.Response.WriteFile(photoCachePath);
            return;
        }
        // Ensure cache directory exists
        if (!Directory.Exists(cachePath)) {
            Directory.CreateDirectory(cachePath);
        }
        // Find the physical file
        var photoPath = context.Server.MapPath(PhotoPath + photoName + ".jpg");
        try {
            // Read the source image
            var photo = File.ReadAllBytes(photoPath);
            var factory = (IWICComponentFactory)new WICImagingFactory();
            var inputStream = factory.CreateStream();
            inputStream.InitializeFromMemory(photo, (uint)photo.Length);
            var decoder = factory.CreateDecoderFromStream(inputStream, null, WICDecodeOptions.WICDecodeMetadataCacheOnLoad);
            var frame = decoder.GetFrame(0);
            // Compute target size
            uint width, height, thumbWidth, thumbHeight;
            frame.GetSize(out width, out height);
            if (width > height) {
                thumbWidth = ThumbnailSize;
                thumbHeight = height * ThumbnailSize / width;
            }
            else {
                thumbWidth = width * ThumbnailSize / height;
                thumbHeight = ThumbnailSize;
            }
            // Prepare output stream to cache file
            var outputStream = new MemoryIStream();
            // Prepare PNG encoder
            var encoder = factory.CreateEncoder(Consts.GUID_ContainerFormatPng, null);
            encoder.Initialize(outputStream, WICBitmapEncoderCacheOption.WICBitmapEncoderNoCache);
            // Prepare output frame
            IWICBitmapFrameEncode outputFrame;
            var arg = new IPropertyBag2[1];
            encoder.CreateNewFrame(out outputFrame, arg);
            var propBag = arg[0];
            var propertyBagOption = new PROPBAG2[1];
            propertyBagOption[0].pstrName = "FilterOption";
            propBag.Write(1, propertyBagOption, new object[] { (byte)WICPngFilterOption.WICPngFilterAdaptive });
            outputFrame.Initialize(propBag);
            outputFrame.SetResolution(96, 96);
            outputFrame.SetSize(thumbWidth, thumbHeight);
            // Prepare scaler
            var scaler = factory.CreateBitmapScaler();
            scaler.Initialize(frame, thumbWidth, thumbHeight, WICBitmapInterpolationMode.WICBitmapInterpolationModeFant);
            // Write the scaled source to the output frame
            outputFrame.WriteSource(scaler, new WICRect { X = 0, Y = 0, Width = (int)thumbWidth, Height = (int)thumbHeight });
            outputFrame.Commit();
            encoder.Commit();
            var outputArray = outputStream.ToArray();
            outputStream.Close();
            // Ouput cache
            if (cache) {
                OutputCacheResponse(
                    context, File.GetLastWriteTime(photoPath));
            }
            // Write to the cache file
            File.WriteAllBytes(photoCachePath, outputArray);
            // Write to the response
            context.Response.ContentType = "image/png";
            context.Response.OutputStream.Write(outputArray, 0, outputArray.Length);
        }
        catch (FileNotFoundException) {
            Throw404();
        }
    }

    private static void Throw404() {
        throw new HttpException(404, "Photo not found.");
    }

    private static void OutputCacheResponse(HttpContext context, DateTime lastModified) {
        var cachePolicy = context.Response.Cache;
        cachePolicy.SetCacheability(HttpCacheability.Public);
        cachePolicy.VaryByParams["p"] = true;
        cachePolicy.VaryByParams["nocache"] = true;
        cachePolicy.SetOmitVaryStar(true);
        cachePolicy.SetExpires(DateTime.Now + TimeSpan.FromDays(365));
        cachePolicy.SetValidUntilExpires(true);
        cachePolicy.SetLastModified(lastModified);
    }

    public bool IsReusable {
        get {
            return true;
        }
    }
}