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

    <!--Content-->
    <div id='pageContent' style='height: 100%;'>
        <div style="position: absolute; left: 5px; top: 5px; z-index: 1001">
            <a id="alogo" href="javascript:clickMenu()">
                <img src="img/logo3.png" style="height: 50px; width: 50px; vertical-align: middle;" /></a>
        </div>
        <div id="menuPanel" style="display: none; position: absolute; z-index: 1000; left: 0px; width: 265px; height: 570px; background: rgba(255,255,255,0); border: 0px solid #000;">
            <div style="position: absolute; left: 10px; top: 50px;">
                <button type="button" data-i18n="[title]Cancel;Cancel" id="cancelButton" title="Cancel changes" class="i headerButton" style="background-image: url(img/cancel.png );" onclick="clickCancel()">Cancel</button>
            </div>
            <div style="position: absolute; left: 10px; top: 100px;">
                <button type="button" data-i18n="[title]Settings;Settings" id="settingsCheckBox" title="Settings" class="i headerButton" style="background-image: url(img/settings1.png );" onclick="clickSettings()">Settings</button>
                <button type="button" data-i18n="[title]AboutSeeYourTravel;AboutSeeYourTravel" id="corporateSite" title="Corporate site" class="i headerButton" style="background-image: url(img/corporate.png );" onclick="window.open('./corporate','_blank')">About SeeYourTravel</button>
            </div>
            <div style="position: absolute; left: 10px; top: 195px;">
                <button type="button" <%--data-i18n="[title]Profile;Profile" --%>id="profile" title="Profile" class="headerButton" style="background-image: url(img/profile.png );" onclick="window.location = 'UserProfile.aspx'"></button>
                <button type="button" data-i18n="[title]Logout;Logout" id="logout" title="Logout" class="i headerButton" style="background-image: url(img/logoff.png );" onclick="window.location = 'Logout.aspx'">Logout</button>
                <button type="button" data-i18n="[title]Help;Help" id="helpButton" style="background-image: url(img/help.png);" class="i headerButton" title="Need help?" onclick="clickHelp()">Help</button>
            </div>
        </div>
    </div>

    <div id="helpPanel" style="display: none; padding: 10px; position: absolute; z-index: 1000; right: 0px; width: 400px; height: 90%; background: rgba(255,255,255,0.8); border-radius: 12px; border: 0px solid #000;">
        <span id="siteseal">
            <script type="text/javascript" src="https://seal.godaddy.com/getSeal?sealID=hLfbdeAuTQVxRe4IZmMtr1Gf0jrMv1XSJ0S6JNnyohWiDdJm3EUMtIJuf0LN"></script>
        </span>
        <br />
        <br />
        <div class="i" data-i18n="[html]help_content">
        </div>
    </div>

    <!-- #Include virtual="include/settingsPanel.inc" -->

    <div id="textToReadArea0" class="ui-widget-content" style="position: absolute; padding: 10px; z-index: 1001; top: 40px; right: 50px; width: 410px; height: 850px; background: rgba(255,255,255,0.8); border-radius: 12px; border: 0px solid #000;">
        <table border="0">
            <tr>
                <td>
        <div><%=Tools.GetUserName(this)%>: <span lass="i" data-i18n="[title]MyPhotos;MyPhotos">My Photos</span></div>
        <br />
        <br />
        <span class="i" data-i18n="ThePhotos">The Photos</span>
        <br />
        <select style="vertical-align: central; width: 400px;" id="photosList" class="i" size="20" multiple="multiple"></select>
        <br />
        <br />
        <button type="button" id="buttonDelete" class="i" data-i18n="[title]DeleteSelected ;DeleteSelected">Delete Selected</button>
        <br />
        <br />
        <a href="UserProfile.aspx" class="i" data-i18n="[title]MyTracks;MyTracks">My Tracks</a>
<%--        <a href="UserPlaces.aspx" class="i" data-i18n="[title]MyPlaces;MyPlaces">My Places</a>--%>
        <br />
        <br />
        <input type="text" id="imageLatLng" value="" style="width: 400px" />
        <br />
        <br />
        <span class="i" data-i18n="UploadPhotos">Upload photos:</span>
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
                attribution: 'Map data &copy; <a href="https://www.mapbox.com/">MapBox</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://cloudmade.com">CloudMade</a> <img src="img/poweredbygoolge/desktop/powered-by-google-on-white.png"/>',
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
                var options = photosList.val();
                markers.clearLayers();
                var isMultiple = options.length > 1;
                $("#imageLatLng").val('');
                for (var i in options) {
                    var parts = options[i].toString().split(';');
                    var imgPath = '<%=Request.Url.GetLeftPart(UriPartial.Authority) + Request.ApplicationPath%>' + "data/images/" + parts[0];
                    $("#imageLatLng").val($("#imageLatLng").val() + "{" + parts[3] + "," + parts[4] + "}; ");
                    var ll = new L.LatLng(parseFloat(parts[3]), parseFloat(parts[4]))
                    map.panTo(ll);


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
            });

            $("#buttonDelete").click(function () {
                if (photosList.val() != null) {
                    var options = photosList.val();
                    markers.clearLayers();
                    var isMultiple = options.length > 1;
                    $("#imageLatLng").val('');
                    for (var i in options) {
                        var parts = options[i].toString().split(';');
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
                var parts = fileList[i].split(';');
                photosList.append('<option value="' + fileList[i] + '">' + (parts[2] == 1 ? "*" : "") + parts[1] + '</option>');
            }
        }

    </script>
</asp:Content>
