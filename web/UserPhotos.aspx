<%@ Page Title="See Your Travel Profile" Language="C#" MasterPageFile="MasterPage.master" CodeFile="UserPhotos.aspx.cs" Inherits="UserPhotos" %>

<%@ Import Namespace="System.IO" %>

<asp:Content ID="headContent" ContentPlaceHolderID="HeadPlaceholder" runat="Server">

    <script>
        function clickCancel() {
            window.location = 'index.aspx';
        }

        function translateAll(err, t) {
            $(".i").i18n();
            $("option.i").i18n();
            $("#profile").text($.t("Profile") + ": " + globalUserName);
        }

    </script>
</asp:Content>

<asp:Content ID="bodyContent" ContentPlaceHolderID="BodyPlaceholder" runat="Server">
    <!-- #Include virtual="include/profileLangPanel.inc" -->
    <!--Content-->
    <div id='pageContent' style='height: 100%;'>
        <!-- #Include virtual="include/profileMenu.inc" -->
    </div>
    <!-- #Include virtual="include/profileHelpPanel.inc" -->
    <!-- #Include virtual="include/settingsPanel.inc" -->

    <div id="textToReadArea0" class="ui-widget-content" style="position: absolute; padding: 10px; z-index: 1001; top: 40px; right: 50px; width: 350px; height: 700px; background: rgba(255,255,255,0.8); border-radius: 12px; border: 0 solid #000;">
        <table border="0">
            <tr>
                <td>
        <div><%=Tools.GetUserName(this)%>: <span class="i" data-i18n="[title]MyPhotos;MyPhotos">My Photos</span></div>
        <br />
        <a href="UserProfile.aspx" class="i" data-i18n="[title]MyProfile;MyProfile">My Profile</a>
        <a href="UserTracks.aspx" class="i" data-i18n="[title]MyTracks;MyTracks">My Tracks</a>
        <b href="UserPhotos.aspx" class="i" data-i18n="[title]MyPhotos;MyPhotos">My photos</b>
        <a href="UserPlaces.aspx" class="i" data-i18n="[title]MyPlaces;MyPlaces">My Places</a>
        <br />
        <br />
        <span class="i" data-i18n="MyPhotos">My Photos</span>
        <br />
        <select style="vertical-align: central; width: 330px;" id="photosList" class="i" size="20" ></select>
        <br />
        <br />
        <button type="button" id="buttonDelete" class="i" data-i18n="[title]DeleteSelected ;DeleteSelected">Delete Selected</button>
        <br />
        <br />
        <span class="i" data-i18n="Photocoordinates">Photo coordinates</span><br /><input type="text" readonly="true" id="imageLatLng" value="" style="width: 330px" />
        <br />
        <br />
            <input id="isPublic" name="isPublic" type="checkbox" value="isPublic" checked="checked" />
            <label for="isPublic" class="i" data-i18n="Makepublic">Make public</label>
        <br />
        <br />
<%--        <span class="i" data-i18n="UploadPhotos">Upload photos:</span>--%>
        <br />
        <input name="file" type="file" id="files" multiple="multiple" />
        <br />
        <br />
        <input type="submit" id="buttonUpload" class="i" data-i18n="[title]Upload;[value]Upload" value="Upload"/>
                </td>
            </tr>
        </table>
    </div>

    <div id="imageDiv0" class="ui-widget-content" style="visibility: hidden;">
        <div id="imageDiv" class="innerScrollArea">
            <ul></ul>
        </div>
    </div>

    <div id="map"></div>

<%--    <div style="position: absolute; left: 10px; top: 50px; z-index: 101;">
    </div>--%>
    <script>
        var photosList;
        $(function () {

            var imageDiv = $("#imageDiv");
            var polyline;
            var map;
            var markers;

            function onMapClick(e) {

                $("#imageLatLng").val("".concat(e.latlng.lat, ";", e.latlng.lng));
                var options = photosList.val();
                var parts = options.toString().split(';');
                var imgPath = "services/get_thumbnail.aspx?size=small&p=" + parts[0];
                parts[2] =  $("#isPublic").prop('checked')?"1":"0";
                parts[3] = e.latlng.lat.toString();
                parts[4] = e.latlng.lng.toString();
                var data = parts.join(';');
                $("#photosList option:selected").val(data);

                updatePhotoData(data);

                updateMap(e.latlng, imgPath);
            }

            var icon = L.icon({
                iconUrl: ("tracks/content/mycar.png"),
                iconSize: [50, 50],
                iconAnchor: [1, 50],
                shadowUrl: null
            });

            map = L.map('map', { zoomControl: false }).setView([50.430981, 30.539267], 8);
            L.control.zoom({ position: 'topright' }).addTo(map);
            L.control.scale({ position: 'bottomleft' }).addTo(map);
            tileLayer = L.tileLayer(mapTileUrl, {
                attribution: 'SeeYourTravel.com &copy; Map data &copy; <a href="https://www.mapbox.com/">MapBox</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://cloudmade.com">CloudMade</a> <img src="img/poweredbygoolge/desktop/powered-by-google-on-white.png"/>',
                maxZoom: 18,
                id: "mapbox.streets"
            });

            tileLayer.addTo(map);
            markerPosition = L.marker(new L.LatLng(1000, 1000), { icon: icon }).addTo(map);

            markers = new L.FeatureGroup();
            map.addLayer(markers);

            map.on('click', onMapClick);

            $("#imageDiv0").draggable().resizable({ minHeight: 50, minWidth: 50 });
            $("#textToReadArea0").draggable();
            $("#slider").slider({
                value: 0.8,
                min: 0,
                max: 1,
                step: 0.1,
                slide: function (event, ui) {
                    audio.volume = ui.value;
                }
            });

            photosList = $("#photosList");

            fillPhotos();

            photosList.change(function () {
                var ddl = $(this);
                var previous = ddl.data('previous');
                ddl.data('previous', ddl.val());

                var oldImageLatLng = $("#imageLatLng").val();
                var options = photosList.val();
                var parts = options.toString().split(";");
                var imgPath = "services/get_thumbnail.aspx?size=small&p=" + parts[0];
                $("#isPublic").prop('checked', parts[2]=="1");
                var ll;
                try {
                    ll = new L.LatLng(parseFloat(parts[3]), parseFloat(parts[4]));
                }
                catch(error) {
                    ll = new L.LatLng(0, 0);
                }

                updateMap(ll, imgPath);
            });

            function updateMap(ll, imgPath) {
                markers.clearLayers();
                map.panTo(ll);
                $("#imageLatLng").val("".concat(ll.lat, ";", ll.lng));


                var icon = L.icon({
                    iconUrl: imgPath,
                    //    shadowUrl: 'leaf-shadow.png',

                    iconSize: [100, 100] // size of the icon
                    //    shadowSize:   [50, 64], // size of the shadow
                        , iconAnchor: [50, 100] // point of the icon which will correspond to marker's location
                    //    shadowAnchor: [4, 62],  // the same for the shadow
                    //    popupAnchor:  [0, 0] // point from which the popup should open relative to the iconAnchor
                });

                //var text = '<img src>';
                //var domelem = document.createElement('div');
                //domelem.innerHTML = text;

                var marker = L.marker(ll,
                    { icon: icon })
                //.bindPopup(domelem);
                markers.addLayer(marker);

            }

            $("#isPublic").change(function () {
                var options = photosList.val();
                var parts = options.toString().split(';');
                var imgPath = "services/get_thumbnail.aspx?size=small&p=" + parts[0];
                parts[2] = $("#isPublic").prop('checked') ? "1" : "0";
                var data = parts.join(';');
                $("#photosList option:selected").val(data);
                updatePhotoData(data);

                var latlng = new L.LatLng(parseFloat(parts[3]), parseFloat(parts[4]));
                updateMap(latlng, imgPath);
            })

            function updatePhotoData(data) {
                var url = "services/update_photodata.aspx?data=" + data;
                $.ajax({
                    //                    dataType: "jsonp",
                    url: url,
                    success: function (data) {
                        toastr.info("Photo is updated", "", { timeOut: 5000, extendedTimeOut: 10000 });
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        console.log("update photo error: " + textStatus); console.log("Error: " + errorThrown);
                        toastr.error(textStatus + "," + errorThrown, "ERROR", { timeOut: 5000, extendedTimeOut: 10000 });
                    }
                });
            }

            $("#buttonDelete").click(function () {
                if (photosList.val() != null) {
                    var options = photosList.val();
                    markers.clearLayers();
                    var parts = options.toString().split(';');
                    var url = "services/delete_photobyfilename.aspx?fileName=" + parts[0];
                    $.ajax({
                        //                    dataType: "jsonp",
                        url: url,
                        success: function (data) {
                            toastr.info("Photo is deleted", "", { timeOut: 5000, extendedTimeOut: 10000 });
                            fillPhotos();
                            $("#imageLatLng").val('');
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            console.log("delete track error: " + textStatus); console.log("Error: " + errorThrown);
                            toastr.error(textStatus + "," + errorThrown, "ERROR", { timeOut: 5000, extendedTimeOut: 10000 });
                        }
                    });
                }
            });
        });

        function fillPhotos() {
            var fileListString = $.ajax(
        {
            url: ('services/get_myphotos.aspx' + "?" + Math.random()),
            async: false,
            dataType: 'json'
        }
        ).responseText;

            var fileList = fileListString.split('\n');
            photosList
                    .find('option')
                    .remove()
                    .end();
            for (var i = 0; i < fileList.length; i++) {
                if (!isNullOrEmpty(fileList[i])) {
                    var parts = fileList[i].split(';');
                    photosList.append('<option value="' + fileList[i] + '">' + (parts[2] == 1 ? "" : "*") + parts[1] + '</option>');
                }
            }
        }

    </script>
</asp:Content>
