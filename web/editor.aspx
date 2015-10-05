<%@ Page Title="See Your Travel - Editor" Language="C#" MasterPageFile="MasterPage.master" %>


<%@ Import Namespace="System.IO" %>

<asp:Content ID="headContent" ContentPlaceHolderID="HeadPlaceholder" runat="Server">

    <% if (!User.IsInRole("admins")) Response.Redirect("./"); %>

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
    <div id='pageContent' style='height: 100%'>
        <div style="position: absolute; left: 5px; top: 5px; z-index: 1001">
            <a id="alogo" href="javascript:clickMenu()">
                <img src="img/logo3.png" style="height: 50px; width: 50px; vertical-align: middle;" /></a>
        </div>
        <div style="position: absolute; left: 60px; top: 10px; z-index: 1001">
            <div id="wrapper">
                <img id="imgCoord" src="img/location.png" />
                <span id="lblCoord" style="vertical-align: super; text-shadow: 1px 1px #ffffff;"></span>
            </div>
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
                <button type="button" <%--data-i18n="[title]Profile;Profile" --%>id="profile" title="Profile" class="headerButton" style="background-image: url(img/profile.png );" onclick="window.location = './profile'"></button>
                <button type="button" data-i18n="[title]Logout;Logout" id="logout" title="Logout" class="i headerButton" style="background-image: url(img/logoff.png );" onclick="window.location = 'Logout.aspx'">Logout</button>
                <button type="button" data-i18n="[title]Help;Help" id="helpButton" style="background-image: url(img/help.png);" class="i headerButton" title="Need help?" onclick="clickHelp()">Help</button>
            </div>
        </div>
    </div>
    <div id="settingsPanel" style="display: none; position: absolute; padding: 10px; z-index: 100; top: 45px; left: 60px; width: 300px; height: 200px; background: rgba(255,255,255,0.8); border-radius: 12px; border: 0px solid #000;">
        <input id="scriptTextCheckBox" type="checkbox" checked="checked" value="Editor" onclick="$('#textToReadArea0').toggle('fold', 1000);" />
        <label for="scriptTextCheckBox" class="i" data-i18n="Editor">Editor</label>
        <br />
        <input id="imagesCheckBox" type="checkbox" checked="checked" value="Images" onclick="$('#imageDiv0').toggle('fold', 1000);" />
        <label for="imagesCheckBox" class="i" data-i18n="Images">Images</label>
        <br />
        <input id="usePanoramioImagesCheckBox" type="checkbox" checked="checked" value="Use Panoramio images" />
        <label for="usePanoramioImagesCheckBox" class="i" data-i18n="UsePanoramioImages">Use Panoramio images</label>
        <br />
        <input id="useSYTImagesCheckBox" type="checkbox" checked="checked" value="Use SeeYourTravel images" />
        <label for="useSYTImagesCheckBox" class="i" data-i18n="UseCYTImages">Use SeeYourTravel images</label>
        <br />
        <input id="useGooglePlacesCheckBox" type="checkbox" checked="checked" value="Use Google Places" />
        <label for="useGooglePlacesCheckBox" class="i" data-i18n="UseGooglePlaces">Use Google Places</label>
        <br />
        <input id="useSYTPlacesCheckBox" type="checkbox" checked="checked" value="Use SeeYourTravel places" />
        <label for="useSYTPlacesCheckBox" class="i" data-i18n="UseCYTPlaces">Use SeeYourTravel places</label>
        <%--            <br />
            <label for="pictureHeight">Max Picture Height</label>
            <input id="pictureMaxHeight" type="number" value="100" />--%>
        <br />
        <label for="mapStyle" class="i" data-i18n="MapStyle">Map style</label>
        <select id="mapStyle" class="graySelect" onchange="selectMapStyle()">
            <option>mapbox.streets</option>
            <option>mapbox.light</option>
            <option>mapbox.dark</option>
            <option>mapbox.satellite</option>
            <option>mapbox.streets-satellite</option>
            <option>mapbox.wheatpaste</option>
            <option>mapbox.streets-basic</option>
            <option>mapbox.comic</option>
            <option>mapbox.outdoors</option>
            <option>mapbox.run-bike-hike</option>
            <option>mapbox.pencil</option>
            <option>mapbox.pirates</option>
            <option>mapbox.emerald</option>
            <option>mapbox.high-contrast</option>
        </select>
        <br />
        <span class="i" data-i18n="Volume">Volume:</span>
        <br />
        <div id="slider" style="left: 10%; width: 80%; vertical-align: top"></div>
    </div>

    <div id="map"></div>

    <div id="textToReadArea0" class="ui-widget-content" style="position: absolute; padding: 10px; z-index: 1001; top: 40px; right: 50px; width: 340px; height: 700px; background: rgba(255,255,255,0.8); border-radius: 12px; border: 0px solid #000;">
        <table border="0">
            <tr>
                <td class="big">Track name:</td>
                <td>
                    <input id="name" name="name" type="text" value="New Track" /></td>
            </tr>
            <tr>
                <td class="big">Make track public?</td>
                <td>
                    <input id="isPublic" name="isPublic" type="checkbox" value="isPublic" /></td>
            </tr>
            <tr>
                <td class="big">Copyright:</td>
                <td>
                    <input id="copyright" name="copyright" type="text" value="(c)" /></td>
            </tr>
            <tr>
                <td class="big">Photo location distance:<br />
                    degree/1000, 2..1000</td>
                <td>
                    <input id="photoLocationTolerancy" name="photoLocationTolerancy" type="range" max="1000" min="2" step="1" value="100" style="width: 95%;" /></td>
            </tr>
            <tr>
                <td class="big">Steps to redraw:<br />
                    2..1000</td>
                <td>
                    <input id="stepsToRedraw" name="stepsToRedraw" type="range" max="1000" min="2" step="1" value="100" style="width: 95%;" /></td>
            </tr>
            <tr>
                <td class="big">Steps to show photos:<br />
                    2..1000</td>
                <td>
                    <input id="stepsToShowPhoto" name="stepsToShowPhoto" type="range" max="1000" min="2" step="1" value="10" style="width: 95%;" /></td>
            </tr>
            <tr>
                <td class="big">Velocity:<br />
                    meters/sec, 1..10000</td>
                <td>
                    <input id="velocityMetersPerSec" name="velocityMetersPerSec" type="range" max="10000" min="1" step="1" value="100" style="width: 95%;" /></td>
            </tr>
            <tr>
                <td class="big"># of photos to load:<br />
                    1..50</td>
                <td>
                    <input id="numOfPhotos" name="numOfPhotos" type="range" max="50" min="1" step="1" value="10" style="width: 95%;" /></td>
            </tr>
            <tr>
                <td class="big">Animated marker icon:</td>
                <td>
                    <input id="icon" name="icon" type="text" value="mybike.png" /></td>
            </tr>
            <tr>
                <td class="big">Audio file path:</td>
                <td>
                    <input id="audioSrc" name="audioSrc" type="text" value="" /></td>
            </tr>
            <tr>
                <td class="big">Track image path:</td>
                <td>
                    <input id="trackImage" name="trackImage" type="text" value="" /></td>
            </tr>
            <%--<tr><td class="big">audioVolume:</td><td>
        <input id="audioVolume" name="audioVolume" type="text" value="0.5" /></td></tr>--%>
            <tr>
                <td class="big">Text description:</td>
                <td>
                    <input id="textToRead" name="textToRead" type="text" value="" /></td>
            </tr>
            <tr>
                <td class="big">Default scale:<br />
                    1(largest).20(smallest)</td>
                <td>
                    <input id="defaultScale" name="defaultScale" type="range" max="20" min="1" step="1" value="8" style="width: 95%;" /></td>
            </tr>
            <%--        <tr><td class="big">trackGpx:</td><td>
        <input id="trackGpx" name="trackGpx" type="text" value="" /></td></tr>--%>
        </table>
        <p class="big">
            <input name="trackData" id="trackData" type="hidden" />
        </p>
        <p class="big">
		Track points:<br/>
            <select id="points" name="points" size="10" style="width: 330px" multiple="multiple">
            </select>
        </p>
        <p class="big">
            <span>Point description (optional):</span>&nbsp;<input id="pointDescr" name="pointDescr" type="text" value="" style="width: 120px" />
        </p>
        <p class="big">
            <asp:Button
                ID="Button1"
                PostBackUrl="saveTrack.aspx"
                runat="server"
                Text="Submit" />
            &nbsp;
    <input type="reset" value="Reset" />
            &nbsp;
    <input type="button" value="Delete selected" id="buttonDeleteSelected" />
            &nbsp;
    <input type="button" value="Cancel" id="gotoMain" onclick="window.location = 'index.aspx?trackname=' + trackname" />
            <!--input type="button" value="Undo last"/-->
        </p>
        <p class="big">
            <div id="fileOperations">
                <label for="fileGpx">Import Gpx file:</label>
                <input type="file" accept=".gpx" id="filesGpx" />
                <%--multiple="multiple"--%>
                <!--input type="button" value="Import data" id="importGpx"/-->
            </div>
        </p>
    </div>

    <div id="imageDiv0" class="ui-widget-content">
        <div id="imageDiv" class="innerScrollArea">
            <ul></ul>
        </div>
    </div>

    <script lang="JavaScript">
        var trackname;
    </script>
    <%
        string trackname = Request.QueryString["trackname"];
        if (!string.IsNullOrEmpty(trackname))
        {
            Response.Write(string.Format(@"<script language='javascript'>
    trackname = '{0}';
    </script>", trackname));
        }

    %>
    <script lang="JavaScript">
        
        $(function () {

            $('form').submit(function () {
                var t = JSON.stringify(getTrackPoints());
                $("#trackData").val(t);
                return true;
            });

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

            $('#points')
                .data("lastIndex", this.selectedIndex)
                .on('change', function(event){
                    var idx = this.selectedIndex;
                    var prevIdx = $(this).data("lastIndex");

                    if(prevIdx != null && typeof prevIdx != "undefined") {
                        var oldOptionSelected = $("option", this).eq(prevIdx);
                        var oldValueSelected = oldOptionSelected.val();
                        var oldPoint = JSON.parse(oldValueSelected);
                        if(oldPoint.hasOwnProperty("lat"))
                            oldPoint["syt_text"] = $("#pointDescr").val();
                        else
                            oldPoint[2] = $("#pointDescr").val();
                        oldOptionSelected.val(JSON.stringify(oldPoint));
                    }

                    var optionSelected = $("option:selected", this);
                    var valueSelected = this.value;
                    var point = JSON.parse(valueSelected);
                    var newLatLng = pointToLatLng(point);
                    markerPosition.setLatLng(newLatLng);
                    $("#pointDescr").val(point.hasOwnProperty("syt_text")?point["syt_text"]:(point.length>2?point[2]:""));
                    track = { numOfPhotos: parseInt(numOfPhotos.value), photoLocationTolerancy: parseInt(photoLocationTolerancy.value) };
                    showPhotos(track, newLatLng);

                    // Set new index as old index
                    $(this).data("lastIndex", idx);
                });

        document.getElementById('filesGpx').addEventListener('change', handleFileSelect, false);
        $('#buttonDeleteSelected').click(function () {
            $('#points option:selected').remove();
            updateMap();
        });

        // Check for the various File API support.
        if (window.File && window.FileReader && window.FileList && window.Blob) {
            // Great success! All the File APIs are supported.
        } else {
            $("#fileOperations").hide();
        }

        map.on('zoomend', function () {
            $("#defaultScale").val(map.getZoom());
        });

        //$("#stepsToRedraw").spinner({
        //    min: 1,
        //    max: 1000,
        //    step: 1,
        //    height: 30
        //}).on('input', function () {
        //    if ($(this).data('onInputPrevented')) return;
        //    var val = this.value,
        //        $this = $(this),
        //        max = $this.spinner('option', 'max'),
        //        min = $this.spinner('option', 'min');
        //    if (!val.match(/^\d+$/)) val = min; //we want only number, no alpha
        //    this.value = val > max ? max : val < min ? min : val;
        //}).on('keydown', function (e) { // to allow 'Backspace' key behaviour
        //    $(this).data('onInputPrevented', e.which === 8 ? true : false);
        //});

        if (trackname) {
            var initialTrack = loadTrackSync(translateTracksPath(trackname+".js"));

            $("#name").val(initialTrack.name);
            $("#copyright").val(initialTrack.copyright);
            $("#photoLocationTolerancy").val(initialTrack.photoLocationTolerancy);
            $("#stepsToRedraw").val(initialTrack.stepsToRedraw);
            $("#stepsToShowPhoto").val(initialTrack.stepsToShowPhoto);
            $("#velocityMetersPerSec").val(initialTrack.velocityMetersPerSec);
            $("#numOfPhotos").val(initialTrack.numOfPhotos);
            $("#icon").val(initialTrack.icon);
            $("#trackImage").val(initialTrack.trackImage);
            $("#audioSrc").val(initialTrack.audioSrc);
            $("#audioVolume").val(initialTrack.audioVolume);
            $("#textToRead").val(initialTrack.textToRead);
            $("#defaultScale").val(initialTrack.defaultScale);
            if (initialTrack.trackGpx) {
                $("#trackGpx").val(initialTrack.trackGpx);
            }
            else {

                initialTrack.trackData.forEach(function (point) {
                    if(point.hasOwnProperty("lat") && (point.hasOwnProperty("syt_text") == null ||point.hasOwnProperty("syt_text") == ""))
                        point["syt_text"] = "";
                    if (!point.hasOwnProperty("lat") && point.length < 3)
                        point[2] = "";
                    var t = JSON.stringify(point);
                    $('#points')
                        .append($("<option></option>")
                        .attr("value", t)
                        .text(t));
                });

                if (initialTrack.trackData.length > 0) {
                    map.setView(initialTrack.trackData[0], 8);
                }

            }

            drawTrack();

        }
        });


        function drawTrack() {
            var points = getTrackPoints();
            if (points.length > 0) {
                if (polyline)
                    map.removeLayer(polyline);
                polyline = L.polyline(points, { color: 'green' }).addTo(map);

            }
        }

        function getTrackPoints() {
            var points = [];
            $("#points > option").each(function () {
                var point = JSON.parse(this.value);
                if (point.length < 3)
                    point[2] = "";
                points.push(point);
            });
            return points;
        }

        var imageDiv = $("#imageDiv");
        var polyline;
        var map;
        var track;
        var markerPosition;
        var map2 = document.getElementById("map2");
        var animatedMarker;
        var tileLayer;
        var markers;
        var markersFriends;
        var line;
        var markerStart;
        var markerFinish;

        function onMapClick(e) {
            updateTrackData(e);
            updateMap();
        }

        function updateMap() {
            drawTrack();
        }

        function updateTrackData(e) {
            if (!e) {
            }
            else if (e.latlng) {
                var point = JSON.stringify([e.latlng.lat, e.latlng.lng, $("#pointDescr").val()]);
                var selectedItem = $("#points option:selected").first();
                if (selectedItem.index() >= 0) {
                    $("#points option").eq(selectedItem.index()).before($("<option></option>")
                     .attr("value", point)
                     .text(point));
                }
                else {
                    $('#points')
                        .append($("<option></option>")
                        .attr("value", point)
                        .text(point));
                }

                track = { numOfPhotos: parseInt(numOfPhotos.value), photoLocationTolerancy: parseInt(photoLocationTolerancy.value) };
                showPhotos(track, e.latlng);
            }
            else {
            }
        }

    </script>

    <script>
        function handleFileSelect(evt) {
            var files = evt.target.files; // FileList object

            // Loop through the FileList and render image files as thumbnails.
            for (var i = 0; i < files.length; i++) {

                var f = files[i];

                //// Only process image files.
                //if (!f.type.match('image.*')) {
                //    continue;
                //}

                var reader = new FileReader();

                reader.onload = function () {
                    var text = reader.result;
                    //alert(reader.result);

                    $xmlDoc = $.parseXML(text);
                    $features = $('trkpt', $xmlDoc);

                    var s = "";
                    var t = 0;
                    $features.each(function () {
                        var $this = $(this);
                        var point = [$this.attr('lat'), $this.attr('lon')];
                        $(points)
                            .append($("<option></option>")
                            .attr("value", "["+point[0]+","+point[1]+"]")
                            .text("["+point[0]+","+point[1]+"]"));   
                        //                        console.log(t);
                        t = t + 1;
                    });
                    onMapClick(s);
                };
                reader.readAsText(f);
            }
        }
    </script>

</asp:Content>
