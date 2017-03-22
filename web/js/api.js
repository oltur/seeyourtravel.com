syt = {};
syt.api = {};

syt.api.searchWikiPlaces = function (request) {
    var deferred = $.Deferred();
    var urlp = "https://" + getTwitterLanguage() + ".wikipedia.org/w/api.php?action=query&list=geosearch&gsradius=" + request.radius + "&gscoord=" + request.location.lat() + "%7C" + request.location.lng() + "&format=json&origin=*";

    //if (!$('#useSYTPlacesCheckBox').is(':checked') || track.useSYTPlaces == "No") {
    //    deferred.resolve([]);
    //}

    $.ajax({
        dataType: "json",
        url: urlp,
        crossDomain: true,
        success: function (data2) {
            //console.log("get_places success");
            var result = [];
            for (var i = 0; i < Math.min(5, data2.query.geosearch.length); i++) {
                var item = data2.query.geosearch[i];
                result.push({
                    id: item.pageid,
                    name: item.title,
                    types: "wiki",
                    photos:
                        [
                            {
                            raw_reference:
                                {
                                    fife_url: "img/wiki.png"
                                }
                            }
                        ],
                    geometry:{
                        location:{
                            lat: item.lat,
                            lng: item.lon
                            }
                    }
                });
            }
            deferred.resolve(result);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //console.log("get_places success");
            deferred.resolve([]);
        }
    });

    return deferred.promise();
}

syt.api.searchGooglePlaces = function (googlePlacesService, request) {
    var deferred = $.Deferred();

    if (!$('#useGooglePlacesCheckBox').is(':checked') || track.useGooglePlaces == "No") {
        deferred.resolve([]);
    }
    else {

        googlePlacesService.nearbySearch(request, function (results, status) {
            if (status == google.maps.places.PlacesServiceStatus.OK) {
                deferred.resolve(results.slice(0, 5));
            } else {
                deferred.resolve([]);
            }
        });
    }
    return deferred.promise();
}

//function callbackHerePlacesSearch(results) {
//    if (results.length > MAX_HERE_PLACES)
//        results = results.slice(0, MAX_HERE_PLACES);
//    get_places_googlehere_success(results);
//}

syt.api.searchSYTPlaces = function (request) {
    var deferred = $.Deferred();
    var urlp = "services/get_places.aspx?callback=?";

    if (!$('#useSYTPlacesCheckBox').is(':checked') || track.useSYTPlaces == "No") {
        deferred.resolve([]);
    }

    $.ajax({
        dataType: "jsonp",
        url: urlp,
        success: function (data2) {
            //console.log("get_places success");
            deferred.resolve(data2.results.slice(0, 20));
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            if (errorThrown.toString().indexOf("not called") == -1) {
                var err = "get_places error status: " + textStatus + ", error: " + errorThrown;
                console.log(err);
                deferred.resolve([]);
            }
            else {
                //console.log("get_places success");
                deferred.resolve([]);
            }
        }
    });

    return deferred.promise();
}
syt.api.searchFlickrImages = function (track, p, tolerancy) {
    var deferred = $.Deferred();

    if (!$('#useFlickrImagesCheckBox').is(':checked') || track.useFlickrImages == "No") {
        var data = { photos: [] };
        deferred.resolve(data);
    }
    else {

        var divHeight = $("#imageDiv").height();
        var suffix = divHeight >= 150 ? "_q" : "_s";

        //var flickrUrl =  "https://api.flickr.com/services/rest/?method=flickr.photos.search&bbox={0}%2C{1}%2C{2}%2C{3}&per_page={4}&format=json&nojsoncallback=1&api_key=2203a1e292f7b65958730b236c0756fa";

        var urlp = flickrUrl
            .replace("{4}", "20")//track.numOfPhotos.toString())
            .replace("{0}", (p.lng - tolerancy).toString())
            .replace("{1}", (p.lat - tolerancy).toString())
            .replace("{2}", (p.lng + tolerancy).toString())
            .replace("{3}", (p.lat + tolerancy).toString())

        $.ajax({
            dataType: "json",
            url: urlp,
            success: function (data) {
                var result = { photos: [] };

                for (var i = 0; i < data.photos.photo.length; i++) {
                    var photoName = "https://farm{0}.staticflickr.com/{1}/{2}_{3}"
                        .replace("{0}", data.photos.photo[i].farm)
                        .replace("{1}", data.photos.photo[i].server)
                        .replace("{2}", data.photos.photo[i].id)
                        .replace("{3}", data.photos.photo[i].secret)
                    var photoUrlSmall = photoName + suffix + ".jpg";
                    var photoUrlLarge = photoName + ".jpg";

                    var resultPhoto = {
                        height: 150,
                        width: 150,
                        photo_file_url: photoUrlSmall,
                        photo_url: photoUrlLarge,
                        photo_title: data.photos.photo[i].title,
                        owner_name: data.photos.photo[i].owner
                    };
                    result.photos.push(resultPhoto);
                }

                deferred.resolve(result);
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                console.log("Flickr status: " + textStatus); console.log("Error: " + errorThrown);

                var data = { photos: [] };
                deferred.resolve(data);

            }
        });
    }
    return deferred.promise();
}

syt.api.searchSYTImages = function (track, p, tolerancy) {
    var deferred = $.Deferred();

    if (!$('#useSYTImagesCheckBox').is(':checked') || track.useSYTImages == "No") {
        var data = { photos: [] };
        deferred.resolve(data);
    }
    else {

        var set = "full";
        var count = 0;

        var divHeight = $("#imageDiv").height();
        var size = divHeight > 150 ? "medium" : "small";
        var urlp = "services/get_panoramas.aspx?set=" + set + "&from=0&to=" + track.numOfPhotos.toString() + "&miny="
            + (p.lat - tolerancy).toString()
            + "&minx=" + (p.lng - tolerancy).toString()
            + "&maxy=" + (p.lat + tolerancy).toString()
            + "&maxx=" + (p.lng + tolerancy).toString()
            + "&size=" + size + "&mapfilter=true&order=popularity&callback=?";

        $.ajax({
            dataType: "jsonp",
            url: urlp,
            success: function (data) {
                deferred.resolve(data);
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                console.log("SYT images status: " + textStatus); console.log("Error: " + errorThrown);

                var data = { photos: [] };
                deferred.resolve(data);

            }
        });
    }
    return deferred.promise();
}
