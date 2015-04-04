    function getTrackPathByName(name) {
    	return 'tracks/'+name+'.js';
    }


    function stop() {
        animatedMarker.stop();
        audio.pause();
    }

    function start() {
        stop();
        animatedMarker.start();
        audio.play();
    }

    function showPhotos(track,p,tolerancy)
    {
        if(!tolerancy)
            tolerancy = track.photoLocationTolerancy

        var set = "full";//"public";
        if(track.owner && track.owner!="public")
            set = track.owner;
        var count = 0;
        var urlp = "http://www.panoramio.com/map/get_panoramas.php?set="+set+"&from=0&to=" + track.numOfPhotos.toString() + "&miny="
            + (p.lat - tolerancy).toString()
            + "&minx=" + (p.lng - tolerancy).toString()
            + "&maxy=" + (p.lat + tolerancy).toString()
            + "&maxx=" + (p.lng + tolerancy).toString()
            + "&size=medium&mapfilter=true&order=popularity&callback=?";

        $.ajax({
          dataType: "json",
          url: urlp,
          success: function (data) {
                count = data.photos.length;
                if(count<track.numOfPhotos && tolerancy<10) {
                    showPhotos(track,p,tolerancy*2);
                }
                else {
                    lblCoord.innerText = p.lat + " " + p.lng;
                    var t = document.createElement("div");
                    for (var i = 0; i < data.photos.length; i++) {
                        var nextImage = document.createElement("img");
                        var nextLink = document.createElement("a");
                        nextLink.href = data.photos[i].photo_url;
                        nextLink.target = "_blank";
                        nextImage.src = data.photos[i].photo_file_url;
                        nextImage.title = "Photo from Panoramio(c): " + data.photos[i].photo_title + " by " + data.photos[i].owner_name + ". Click to open the source.";
                        nextImage.classList.add("photo");
                        nextLink.appendChild(nextImage);
                        t.appendChild(nextLink);
                    }
                setTimeout(function () {imageDiv.innerHTML=t.innerHTML;},500);
                }
            }
        });
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
        var track = $.parseJSON(
            $.ajax(
                {
                    url:path+"?"+Math.random(),
                    async:false,
                    dataType:'json'
                }
            ).responseText);
        if(track.trackGpx)
        {
            track.trackData = $.parseJSON(GPXtoLatLng(track.trackGpx));
        }
    if($("#textToReadArea").length > 0)
    {
        if("textToRead" in track)
        {
            textToReadArea.innerHTML = $.ajax(
                {
                    url:track.textToRead+"?"+Math.random(),
                    async:false
                }
            ).responseText;
// COMMENTED THE AUTOREADING
            //get_id('textToReadArea', 'en', 'ml');
        }
        else
        {
            textToReadArea.innerHTML="";
        }
    }
        return track;
    }

    function init(path) {

        track = loadTrackSync(path);

        var url = 'http://{s}.tile.cloudmade.com/5bcd2fc5d5714bd48096c7478324e0fe/997/256/{z}/{x}/{y}.png';

        var myIcon = L.icon({
            iconUrl:track.icon,
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

                myIcon = L.icon({
                    iconUrl:track.icon,
                    iconSize:[markerSize, markerSize],
                    iconAnchor:[1, markerSize],
                    shadowUrl:null
                });

                animatedMarker.setIcon(myIcon);

                if (counter % track.stepsToRedraw == 0) {
                    map.setView([p.lat, p.lng], map.getZoom());
                }
                if (counter % track.stepsToShowPhoto == 1) {
                    showPhotos(track,p);
                }
            }
        };

        if (!map) {
            map = L.map('map');
            L.tileLayer(url, {
                attribution:'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://cloudmade.com">CloudMade</a>',
                maxZoom:18
            }).addTo(map);

            animatedMarker = L.animatedMarker(track.trackData, amOptions);
            map.addLayer(animatedMarker);

        }
        else {
            map.removeLayer(line);
            map.removeLayer(markerStart);
            map.removeLayer(markerFinish);

            animatedMarker.resetAM(track.trackData, amOptions);
        }

        map.setView(track.trackData[0], track.defaultScale?track.defaultScale:8);

        audio.src = track.audioSrc;
        audio.volume = track.audioVolume?track.audioVolume:0.8;

        line = L.polyline(track.trackData, {color:'red'}).addTo(map);
        markerStart = L.marker(track.trackData[0]).addTo(map).bindPopup("Start");
        markerFinish = L.marker(track.trackData[track.trackData.length - 1]).addTo(map).bindPopup("Finish");

    }
