    <%@ Page Language="C#"%>
    <!DOCTYPE html>
    <html>
    <head>
        <title>Our travels - Editor</title>
        <link rel="stylesheet" href="http://cdn.leafletjs.com/leaflet-0.5/leaflet.css" />
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="http://cdn.leafletjs.com/leaflet-0.5/leaflet.ie.css" />
        <![endif]-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
        <script src="http://cdn.leafletjs.com/leaflet-0.5/leaflet.js"></script>
        <script src="js/OurTravel.js"></script>
        <link rel="stylesheet" href="styles/ourTravel.css"/>
    </head>
    <body>
        <a href="index.aspx">Main page</a>&nbsp;Coord: <span id="lblCoord"></span>
        <br/>
        <div id="map"></div>
        <br/>
    <div style="width:100%">
    <div style="width:25%;float:left;overflow:visible;height:100%">
    <form action="saveTrack.aspx" method="post">
    File name: <input id="filename" name="filename" type="text" value="MyTrack" /><br/>
    Track description: <input id="name" name="name"type="text" value="New Track" /><br/>
    copyright: <input id="copyright" name="copyright"type="text" value="(c)"/><br/>
    photoLocationTolerancy: <input id="photoLocationTolerancy" name="photoLocationTolerancy"type="text" value="0.1"/><br/>
    stepsToRedraw: <input id="stepsToRedraw" name="stepsToRedraw"type="text" value="100"/><br/>
    stepsToShowPhoto: <input id="stepsToShowPhoto" name="stepsToShowPhoto"type="text" value="10"/><br/>
    velocityMetersPerSec: <input id="velocityMetersPerSec" name="velocityMetersPerSec"type="text" value = "100"/><br/>
    numOfPhotos: <input id="numOfPhotos" name="numOfPhotos"type="text" value="10"/><br/>
    icon: <input id="icon" name="icon"type="text" value="mybike.png" /><br/>
    audioSrc: <input id="audioSrc" name="audioSrc"type="text" value=""/><br/>
    audioVolume: <input id="audioVolume" name="audioVolume"type="text" value="0.5"/><br/>
    textToRead: <input id="textToRead" name="textToRead"type="text" value=""/><br/>
    defaultScale: <input id="defaultScale" name="defaultScale"type="text" value="8"/><br/>
    trackGpx: <input id="trackGpx" name="trackGpx"type="text" value=""/><br/>
    <textarea name="trackData" id="trackData" cols="63" rows="11"></textarea><br />
    <input type="submit" value="Submit"/>&nbsp;<input type="reset" value="Reset"/>
    </form>

    &nbsp;</div>
    <div id="imageDiv" style="background-color:#EEEEEE;width:75%;float:left;overflow:scroll;height:100%">
    </div>
    </div>
        <script language="JavaScript">
        var filenameFromServer;
        </script>
    <%

        string trackfilename = Request.QueryString["filename"];
        if (!string.IsNullOrEmpty(trackfilename))
        {
            Response.Write(string.Format(@"<script language='javascript'>
    filenameFromServer = '{0}';
    </script>", trackfilename));
        }

    %>
        <script language="JavaScript">
            if(filenameFromServer)
            {
                var initialTrack = loadTrackSync(getTrackPathByName(filenameFromServer));

                $("#filename").val(filenameFromServer);
                $("#name").val(initialTrack.name);
                $("#copyright").val(initialTrack.copyright);
                $("#photoLocationTolerancy").val(initialTrack.photoLocationTolerancy);
                $("#stepsToRedraw").val(initialTrack.stepsToRedraw);
                $("#stepsToShowPhoto").val(initialTrack.stepsToShowPhoto);
                $("#velocityMetersPerSec").val(initialTrack.velocityMetersPerSec);
                $("#numOfPhotos").val(initialTrack.numOfPhotos);
                $("#icon").val(initialTrack.icon);
                $("#audioSrc").val(initialTrack.audioSrc);
                $("#audioVolume").val(initialTrack.audioVolume);
                $("#textToRead").val(initialTrack.textToRead);
                $("#defaultScale").val(initialTrack.defaultScale);
                if(initialTrack.trackGpx)
                    {
            $("#trackGpx").val(initialTrack.trackGpx);
            }
                else
            {
            var t = JSON.stringify(initialTrack.trackData);
                    $("#trackData").val(t.substring(1,t.length-1));
            }
            }

        var polyline;

    function drawTrack()
    {
            var s = $("textarea#trackData").val();
            if(s.length > 0)
            {
                var obj = jQuery.parseJSON("[" + s + "]");
                if(polyline)
                    map.removeLayer(polyline);
                polyline = L.polyline(obj, {color: 'red'}).addTo(map);

            }
    }

        function onMapClick(e) {
            var s = $("textarea#trackData").val();
            if(!s) s = "";
            if(s.length > 0) s = s+",";
            s = s + '\n[' + e.latlng.lat.toString() + ',' + e.latlng.lng.toString() + ']';
            $("textarea#trackData").val(s);

        drawTrack();
            var tempTrack = { numOfPhotos: parseInt(numOfPhotos.value), photoLocationTolerancy: parseInt(photoLocationTolerancy.value) };
            showPhotos(tempTrack, e.latlng);

        }

            var url = 'http://{s}.tile.cloudmade.com/5bcd2fc5d5714bd48096c7478324e0fe/997/256/{z}/{x}/{y}.png';
            var map = L.map('map').setView([50.430981, 30.539267], 8);
            L.tileLayer(url, {
                attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://cloudmade.com">CloudMade</a>',
                maxZoom: 18
            }).addTo(map);

        map.on('click', onMapClick);

        drawTrack();

        var imageDiv = document.getElementById("imageDiv");

        </script>
    </body>
    </html>