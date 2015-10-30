<%@ Page Title="See Your Travel Profile" Language="C#" MasterPageFile="MasterPage.master" CodeFile="UserTracks.aspx.cs" Inherits="UserTracks" %>

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


    <div id="textToReadArea0" class="ui-widget-content" style="position: absolute; padding: 10px; z-index: 1001; top: 40px; right: 50px; width: 510px; height: 900px; background: rgba(255,255,255,0.8); border-radius: 12px; border: 0px solid #000;">
        <table border="0">
            <tr>
                <td>
        <div><%=Tools.GetUserName(this)%>: <span class="i" data-i18n="[title]MyTracks;MyTracks">My Tracks</span></div>
        <br />
        <a href="UserProfile.aspx" class="i" data-i18n="[title]MyProfile;MyProfile">My Profile</a>
        <aa href="UserTracks.aspx" class="i" data-i18n="[title]MyTracks;MyTracks">My Tracks</aa>
        <a href="UserPhotos.aspx" class="i" data-i18n="[title]MyPhotos;MyPhotos">My photos</a>
        <a href="UserPlaces.aspx" class="i" data-i18n="[title]MyPlaces;MyPlaces">My Places</a>
        <br />
        <br />
        <span class="i" data-i18n="MyTracks">My Tracks</span>
        <br /> 
        <select style="vertical-align: central; width: 500px;" id="tracksList" size="20"></select>
        <br />
        <br />
        <button type="button" id="buttonNew" class="i" data-i18n="[title]New;New">New</button>
        <button type="button" id="buttonEdit" class="i" data-i18n="[title]Edit;Edit">Edit</button>
        <button type="button" id="buttonDelete" class="i" data-i18n="[title]DeleteSelected;DeleteSelected">Delete Selected</button>
        <br />
        <br />
        <span class="i" data-i18n="SiteComponentHTML">Site component HTML:</span> 
        <br />
        <input type="text" id="frameUrl" value="" style="width: 400px" /> <button type="button" id="buttonShow" class="i" data-i18n="[title]Show;Show">Show</button>
        <br />
        <br />
        <div id="divframe"></div>
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
        var tracksList;
        $(function () {

            var imageDiv = $("#imageDiv");
            var polyline;
            var map;
            var markers;

            function onMapClick(e) {
                //updateTrackData(e);
                //updateMap();
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

            tracksList = $("#tracksList");

            fillTracks();

            tracksList.change(function () {
                var s = '<iframe style="width: 500px; height: 300px;" src="' + '<%=Request.Url.GetLeftPart(UriPartial.Authority) + Request.ApplicationPath%>' + "frame.aspx?trackname=" + tracksList.val() + '"></iframe>'
                $("#frameUrl").val(s);
                $("#divframe").html("");

                var path = translateTracksPath(tracksList.val() + ".js");
                track = loadTrackSync(path);

                markers.clearLayers();
                line = L.polyline(track.trackData, { color: 'green' });
                markers.addLayer(line);

                map.panTo(track.trackData[0]);

            });
            $("#buttonShow").click(function () {
                $("#divframe").html($("#frameUrl").val());
            });
            $("#buttonNew").click(function () {
                window.location = "editor.aspx";
            });
            $("#buttonEdit").click(function () {
                window.location = "editor.aspx?trackname=" + tracksList.val();
            });
            $("#buttonDelete").click(function () {
                if (tracksList.val() != null) {
                    var url = "services/delete_trackbyfilename.aspx?fileName=" + tracksList.val();
                    $.ajax({
                        //                    dataType: "jsonp",
                        url: url,
                        success: function (data) {
                            toastr.info("Track is deleted", "", { timeOut: 5000, extendedTimeOut: 10000 });
                            fillTracks();
                            $("#frameUrl").val("");
                            $("#divframe").html("");
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            console.log("delete track error: " + textStatus); console.log("Error: " + errorThrown);
                            toastr.error(textStatus + "," + errorThrown, "ERROR", { timeOut: 5000, extendedTimeOut: 10000 });
                        }
                    });
                }
            });
        });

        function fillTracks() {
            var fileListString = $.ajax(
        {
            url: ('services/get_mytracks.aspx' + "?" + Math.random()),
            async: false,
            dataType: 'json'
        }
        ).responseText;

            var fileList = fileListString.split('\n');
            tracksList
                    .find('option')
                    .remove()
                    .end();
            for (var i = 0; i < fileList.length; i++) {
                if (!isNullOrEmpty(fileList[i])) {
                    var parts = fileList[i].split(';');
                    tracksList.append('<option value="' + parts[0] + '">' + (parts[2] == 1 ? "" : "*") + parts[1] + '</option>');
                }
            }
        }

    </script>
</asp:Content>
