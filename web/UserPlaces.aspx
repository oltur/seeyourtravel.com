<%@ Page Title="See Your Travel Profile" Language="C#" MasterPageFile="MasterPage.master" CodeFile="UserPlaces.aspx.cs" Inherits="UserPlaces" %>

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

    <div id="textToReadArea0" class="ui-widget-content" style="position: absolute; padding: 10px; z-index: 1001; top: 40px; right: 50px; width: 350px; height: 900px; background: rgba(255,255,255,0.8); border-radius: 12px; border: 0px solid #000;">
        <table border="0">
            <tr>
                <td>
        <div><%=Tools.GetUserName(this)%>: <span class="i" data-i18n="[title]MyPlaces;MyPlaces">My Places</span></div>
        <br />
        <a href="UserProfile.aspx" class="i" data-i18n="[title]MyProfile;MyProfile">My Profile</a>
        <a href="UserTracks.aspx" class="i" data-i18n="[title]MyTracks;MyTracks">My Tracks</a>
        <a href="UserPhotos.aspx" class="i" data-i18n="[title]MyPhotos;MyPhotos">My photos</a>
        <aa href="UserPlaces.aspx" class="i" data-i18n="[title]MyPlaces;MyPlaces">My Places</aa>
        <br />
        <br />
        <span class="i" data-i18n="MyPlaces">My Places</span>
        <br />
        <select style="vertical-align: central; width: 330px;" id="placesList" class="i" size="20" multiple="multiple"></select>
        <br />
        <br />
        <button type="button" id="buttonDelete" class="i" data-i18n="[title]DeleteSelected ;DeleteSelected">Delete Selected</button>
        <br />
        <br />
        <span class="i" data-i18n="Placedescription">Place description</span><br /><input type="text" id="placeDescription" value="" style="width: 330px" />
        <br />
        <br />
        <span class="i" data-i18n="Placelink">Place Link</span><br /><input type="text" id="placeLink" value="" style="width: 240px" />&nbsp;<button type="button" id="buttonCheckLink" class="i" data-i18n="[title]Checklink;Checklink">Check link</button>
        <br />
        <br />
        <span class="i" data-i18n="Placecoordinates">Place coordinates</span><br /><input type="text" id="imageLatLng" value="" style="width: 330px" />
        <br />
        <br />
        <span class="i" data-i18n="UploadPhoto">Upload photo:</span>
        <br />
        <input name="file" type="file" id="files" />
        <br />
        <br />
            <input id="isPublic" name="isPublic" type="checkbox" value="isPublic" checked="checked" />
            <label for="isPublic" class="i" data-i18n="Makepublic">Make public</label>
        <br />
        <br />
        <input type="submit" id="buttonUpload" class="i" data-i18n="[title]Save;[value]Save" value="Save"/>
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

        });


    </script>
</asp:Content>
