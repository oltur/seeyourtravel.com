    var tracksFolder = 'tracks/';

    function translateTracksPath(path)
    {
        return tracksFolder+path;
    }

/**
 * getTrackPathByName
 * @param name
 * @returns {string}
 */
    function getTrackPathByName(name) {
    	return translateTracksPath(name+'.js');
    }

    function onBodyResize() {
        $("#map").height(window.innerHeight-50);
    }

$(function(){onBodyResize();});

    function stop() {
        animatedMarker.stop();
        audio.pause();
    }

    function start() {
        stop();
        animatedMarker.start();
        if (track.audioSrc && track.audioSrc.length > 0)
            audio.play();
    }

    function showPhotos(track,p,tolerancy) {
        if (!tolerancy)
            tolerancy = track.photoLocationTolerancy;
        if (!tolerancy)
            tolerancy = 0.1;

        if ($('#usePanoramioImagesCheckBox').is(':checked')) {
            //var set = "7459025";//"full";//"public";
            var set = "full";
            var count = 0;
            var urlp = "http://www.panoramio.com/map/get_panoramas.php?set=" + set + "&from=0&to=" + track.numOfPhotos.toString() + "&miny="
                + (p.lat - tolerancy).toString()
                + "&minx=" + (p.lng - tolerancy).toString()
                + "&maxy=" + (p.lat + tolerancy).toString()
                + "&maxx=" + (p.lng + tolerancy).toString()
                + "&size=medium&mapfilter=true&order=popularity&callback=?";

            // remove?
            var height = $("#imageDiv").height();

            $.ajax({
                dataType: "jsonp",
                url: urlp,
                success: function (data) {
                    get_panoramas_panoramio_success(data, p, tolerancy);
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    console.log("Status: " + textStatus); console.log("Error: " + errorThrown);

                    var data = { photos: [] };
                    get_panoramas_panoramio_success(data, p, tolerancy);

                }
            });
        }
        else {
            var data = { photos: [] };
            get_panoramas_panoramio_success(data, p, tolerancy);
        }
    }

    function get_panoramas_panoramio_success(data, p, tolerancy) {

        //var urlp = "http://localhost/seeyourtravel/services/get_panoramas.aspx?x=x&set=full&from=0&to=10&miny=47.955776&minx=10.096568999999999&maxy=48.055775999999994&maxx=10.196569&size=medium&mapfilter=true&order=popularity";

        if ($('#useSYTImagesCheckBox').is(':checked')) {
            //var set = "7459025";//"full";//"public";
            var set = "full";
            var count = 0;
            var urlp = "services/get_panoramas.aspx?set=" + set + "&from=0&to=" + track.numOfPhotos.toString() + "&miny="
                + (p.lat - tolerancy).toString()
                + "&minx=" + (p.lng - tolerancy).toString()
                + "&maxy=" + (p.lat + tolerancy).toString()
                + "&maxx=" + (p.lng + tolerancy).toString()
                + "&size=medium&mapfilter=true&order=popularity&callback=?";

            // remove?
            var height = $("#imageDiv").height();

            $.ajax({
                dataType: "jsonp",
                url: urlp,
                success: function (data2) {
                    get_panoramas_seeyourtravel_success(data, data2, p, tolerancy);
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    console.log("Status: " + textStatus); console.log("Error: " + errorThrown);

                    var data2 = { photos: [] };
                    get_panoramas_seeyourtravel_success(data, data2, tolerancy);
                }
            });
        }
        else {
            var data2 = { photos: [] };
            get_panoramas_seeyourtravel_success(data, data2, tolerancy);
        }
    }

    function get_panoramas_seeyourtravel_success(data, data2, p, tolerancy) {
            
        for (var t = 0; t < data2.photos.length;t++)
        {
            console.log(data2.photos[t].photo_url);
        }

        var photos = data2.photos.concat(data.photos);
        count = photos.length;
        //if (count < track.numOfPhotos && tolerancy < 10) {
        //    showPhotos(track, p, tolerancy * 2);
        //}
        //else {
            lblCoord.innerText = p.lat + " " + p.lng;
            var t = document.createElement("div");
            for (var i = 0; i < photos.length; i++) {
                var nextImage = document.createElement("img");
                var nextLink = document.createElement("a");
                nextLink.href = photos[i].photo_url;
                nextLink.target = "_blank";
                nextImage.src = photos[i].photo_file_url;
                nextImage.style.maxHeight = $("#pictureMaxHeight").val()+"px";
                nextImage.title = "Photo from Panoramio(c): " + photos[i].photo_title + " by " + photos[i].owner_name + ". Click to open the source.";
                nextImage.classList.add("photo");
                nextLink.appendChild(nextImage);
                t.appendChild(nextLink);
            }
            setTimeout(function () { imageDiv.innerHTML = t.innerHTML; }, 500);
        //}
    }

    function GPXtoLatLng(urlGPX) {
        var result = "";
        if (window.XMLHttpRequest)
        {// code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp=new XMLHttpRequest();
        }
        else
        {// code for IE6, IE5
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.open("GET",urlGPX+"?"+Math.random(),false);
        xmlhttp.send();
        xmlDoc=xmlhttp.responseXML;

        var nodes=xmlDoc.getElementsByTagName("trkpt");
        for(var i=0; i<nodes.length; i++)
        {
            if(result.length > 0)
                result +=",";
            result += "[" + nodes[i].getAttribute("lat").toString() + "," + nodes[i].getAttribute("lon").toString() + "]";
        }
        result = "[" + result +"]";
        return result;
    }

    function loadTrackSync(path) {
        var url = path + "?" + Math.random();
        var txt = $.ajax(
                {
                    url: url,
                    async: false,
                    dataType: 'json'
                }
            ).responseText;
        var track = $.parseJSON(
           txt);
        if (track.trackGpx) {
            track.trackData = $.parseJSON(GPXtoLatLng(tracksFolder + track.trackGpx));
        }
        if ($("#textToReadArea").length > 0) {
            if ("textToRead" in track) {
                textToReadArea.innerText = $.ajax(
                    {
                        url: translateTracksPath(track.textToRead + "?" + Math.random()),
                        async: false
                    }
                ).responseText;
                // COMMENTED THE AUTOREADING
                //get_id('textToReadArea', 'en', 'ml');
            }
            else {
                textToReadArea.innerHTML = "";
            }
        }
        return track;
    }

    function init(filename) {

        var path = getTrackPathByName(filename);
        track = loadTrackSync(path);

        var url = 'http://{s}.tile.cloudmade.com/5bcd2fc5d5714bd48096c7478324e0fe/997/256/{z}/{x}/{y}.png';

        var myIcon = L.icon({
            iconUrl:translateTracksPath(track.icon),
            iconSize:[markerSize, markerSize],
            iconAnchor:[1, markerSize],
            shadowUrl:null
        });

        var amOptions = {
            distance:track.velocityMetersPerSec, // meters
            interval:1000, // milliseconds
            icon:myIcon, // icon
            autoStart:false,
            onEnd:function () {
                stop();
            },
            onStep:function (p) {
                counter++;

                markerSize = 2+map.getZoom() * 5;

//                myIcon = L.icon({
//                    iconUrl:translateTracksPath(track.icon),
//                    iconSize:[markerSize, markerSize],
//                    iconAnchor:[1, markerSize],
//                    shadowUrl:null
//                });

//                animatedMarker.setIcon(myIcon);

                if (counter % track.stepsToRedraw == 0) {
                    map.setView([p.lat, p.lng], map.getZoom());
                }
                if (counter % track.stepsToShowPhoto == 1) {
                    showPhotos(track,p);
                }
            }
        };

        if (map == "a") {
            map = L.map('map');
            L.tileLayer(url, {
                attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://cloudmade.com">CloudMade</a> <img src="img/poweredbygoolge/desktop/powered-by-google-on-white.png"/>',
                maxZoom: 18
            }).addTo(map);

            animatedMarker = L.animatedMarker(track.trackData, amOptions);
            animatedMarker.setIcon(myIcon);
            map.addLayer(animatedMarker);

        }
        else {
            try {
                map.removeLayer(line);
                //map.removeLayer(markerStart);
                //map.removeLayer(markerFinish);
            }
            catch (err) {
                console.log(err.message);
            }

            animatedMarker.resetAM(track.trackData, amOptions);
            animatedMarker.setIcon(myIcon);
        }

        map.setView(track.trackData[0], track.defaultScale?track.defaultScale:8);

        if (track.audioSrc && track.audioSrc.length > 0) {
            audio.src = translateTracksPath(track.audioSrc);
            if (track.audioVolume) {
                audio.volume = track.audioVolume ? track.audioVolume : 0.8;
                $("#slider").slider("value", audio.volume);
            }
        }

        line = L.polyline(track.trackData, {color:'green'}).addTo(map);


        markerFinish = L.marker(track.trackData[0]).addTo(map).bindPopup("Finish");
        markerFinish = L.marker(track.trackData[track.trackData.length - 1]).addTo(map).bindPopup("Finish");

	addMarkersNearAll(track.trackData, ['lodging','restaurant']);
}

var myMarkers=[];

//Google places search
function addMarkersNearAll(allData, types) {

var i;

	for(i=0;i<myMarkers.length;i++) {
		var marker = myMarkers[i];
		map.removeLayer(marker)
	}
	myMarkers = [];
	allMarkers = [];


	for(i=0;i<allData.length;i+=Math.round(allData.length/9)) {

		var x = allData[i];

//console.log(x.lat +" "+ x.lng)

		addMarkersNear(x.lat, x.lng, types);
//		if(i>100)
//			break;
	}
}

function addMarkersNear(nearLat, nearLng, types) {
  var here = new google.maps.LatLng(nearLat, nearLng);

  var request = {
    location: here,
    radius: 5000,
    types: types
  };

  if ($('#useGooglePlacesCheckBox').is(':checked')) {

      var service = new google.maps.places.PlacesService(map2);
      service.nearbySearch(request, callbackGoodlePlacesSearch);
  }
  else
  {
      get_places_google_success([]);
  }
}

function callbackGoodlePlacesSearch(results, status) {
    if (status == google.maps.places.PlacesServiceStatus.OK) {
        get_places_google_success(results);
    }
    else {
        get_places_google_success([]);
    }
}


function get_places_google_success(data) {

    if ($('#useSYTPlacesCheckBox').is(':checked')) {
        var urlp = "services/get_places.aspx?callback=?";

        $.ajax({
            dataType: "jsonp",
            url: urlp,
            success: function (data2) {
                get_SYT_getplaces_success(data, data2.results);
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                console.log("Status: " + textStatus); console.log("Error: " + errorThrown);

                get_SYT_getplaces_success(data, []);
            }
        });
    }
    else {
        get_SYT_getplaces_success(data, []);
    }
}

function get_SYT_getplaces_success(data, data2) {

    var i;

    for (i = 0; i < Math.min(data.length, 100); i++) {
        createPhotoMarker(data[i], true);
    }

    for (i = 0; i < Math.min(data2.length, 100) ; i++) {
        createPhotoMarker(data2[i], false);
    }
}


function createPhotoMarker(place, isGoogle) {

  if(allMarkers.indexOf(place.id) < 0)
	allMarkers.push(place.id);
  else
 	return;

 // console.log (place);

  var photos = place.photos;
  if (!photos) {
    return;
  }

var icon = L.icon({
    iconUrl: (place.types.indexOf("lodging")>=0?"img/lodging.png":place.types.indexOf("restaurant")>=0?"img/restaurant1.png":"img/something.png"),
//    shadowUrl: 'leaf-shadow.png',

    iconSize:     [26, 35] // size of the icon
//    shadowSize:   [50, 64], // size of the shadow
//    iconAnchor:   [0, 0], // point of the icon which will correspond to marker's location
//    shadowAnchor: [4, 62],  // the same for the shadow
//    popupAnchor:  [0, 0] // point from which the popup should open relative to the iconAnchor
});

var domelem = document.createElement('a');
//domelem.href = place.name;
domelem.innerHTML = "<p>" + place.name + "</p><img height='100px' width='100px' src='" + (isGoogle ? photos[0].getUrl({ 'maxWidth': 100, 'maxHeight': 100 }) : photos[0].raw_reference.fife_url) + "'/>";
domelem.alt = place.name;
domelem.onclick = function() {
    window.open("https://www.google.com.ua/search?q=" + place.name,"_blank");
    // do whatever else you want to do - open accordion etc
};
var marker = L.marker(new L.LatLng(
    isGoogle ? place.geometry.location.A : place.geometry.location.lat,
    isGoogle ? place.geometry.location.F : place.geometry.location.lng),
    { icon: icon }).addTo(map).bindPopup(domelem);
  myMarkers.push(marker);

//  var marker = new google.maps.Marker({
//    map: map,
//    position: place.geometry.location,
//    title: place.name,
//    icon: photos[0].getUrl({'maxWidth': 35, 'maxHeight': 35})
//  });
}

//function createMarker(place) {
//  var placeLoc = place.geometry.location;
//  var marker = new google.maps.Marker({
//    map: map,
//    position: place.geometry.location
//  });

//  google.maps.event.addListener(marker, 'click', function() {
//    infowindow.setContent(place.name);
//    infowindow.open(map, this);
//  });
//}



