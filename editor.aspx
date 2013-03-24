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
<div style="width:25%;float:left;overflow:both;height:100%">
<form action="saveTrack.aspx" method="get">
File name: <input name="filename" type="text" value="MyTrack" /><br/>
Track description: <input name="name"type="text" value="New Track" /><br/>
copyright: <input name="copyright"type="text" value="(c)"/><br/>
photoLocationTolerancy: <input name="photoLocationTolerancy"type="text" value="0.1"/><br/>
stepsToRedraw: <input name="stepsToRedraw"type="text" value="100"/><br/>
stepsToShowPhoto: <input name="stepsToShowPhoto"type="text" value="10"/><br/>
velocityMetersPerSec: <input name="velocityMetersPerSec"type="text" value = "100"/><br/>
numOfPhotos: <input name="numOfPhotos"type="text" value="10"/><br/>
icon: <input name="icon"type="text" value="mybike.png" /><br/>
audioSrc: <input name="audioSrc"type="text" value=""/><br/>
audioVolume: <input name="audioVolume"type="text" value="0.5"/><br/>
textToRead: <input name="textToRead"type="text" value=""/><br/>
defaultScale: <input name="defaultScale"type="text" value="8"/><br/>
trackGpx: <input name="trackGpx"type="text" value=""/><br/>
<textarea name="trackData" id="trackData" cols="63" rows="11"></textarea><br />
<input type="submit" value="Submit"/>&nbsp;<input type="reset" value="Reset"/>
</form>

&nbsp;</div>
<div id="imageDiv" style="background-color:#EEEEEE;width:75%;float:left;overflow:scroll;height:100%">
</div>
</div>
    <script language="JavaScript">

	var polyline;

	function onMapClick(e) {
	    $("textarea#trackData").val($("textarea#trackData").val() + '\n[' + e.latlng.lat.toString() + ',' + e.latlng.lng.toString() + '],');

	    var s = $("textarea#trackData").val();
		if(s.length > 0)
		{
			s = s.substr(0,s.length-1)
			var obj = jQuery.parseJSON("[" + s + "]");
			if(polyline)
				map.removeLayer(polyline);
			polyline = L.polyline(obj, {color: 'red'}).addTo(map);

		}
		var track = {numOfPhotos:10,photoLocationTolerancy:0.1};

		showPhotos(track,e.latlng);

	}

        var url = 'http://{s}.tile.cloudmade.com/5bcd2fc5d5714bd48096c7478324e0fe/997/256/{z}/{x}/{y}.png';
        var map = L.map('map').setView([50.430981, 30.539267], 8);
        L.tileLayer(url, {
            attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://cloudmade.com">CloudMade</a>',
            maxZoom: 18
        }).addTo(map);

	map.on('click', onMapClick);

    var imageDiv = document.getElementById("imageDiv");

    </script>
</body>
</html>