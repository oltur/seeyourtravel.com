<%@ Page Title="See Your Travel - Editor" Language="C#" MasterPageFile="MasterPage.master" %>

<%@ Import Namespace="System.IO" %>

<asp:Content ID="headContent" ContentPlaceHolderID="HeadPlaceholder" runat="Server">
</asp:Content>

<asp:Content ID="bodyContent" ContentPlaceHolderID="BodyPlaceholder" runat="Server">


    <div class="mapheader">
        <span style="position: absolute; left: 0;">&nbsp;
            <a href="#"><img src="img/logo3.png" style="height: 50px; width: 50px; vertical-align: middle;" /></a>
        </span>
        <span style="position: absolute; right: 0;"><a href="#"><img src="img/help.png" style="height:50px; width:50px" alt="Need assistance?"/></a>&nbsp;</span>
        <span style="position: absolute; left: 70px;">
           <a href="index.aspx">Main page</a>
            &nbsp;
           <input id="settingsCheckBox" type="checkbox" value="Settings" onclick="$('#settings').toggle('fold', 1000);" />
            <label for="settingsCheckBox">Settings</label>
            &nbsp;
            <a href="./corporate" target="_blank">About us</a>
            <br />
            Current&nbsp;location: <span id="lblCoord"></span>
        </span>
    </div>


    <div id="settings" style="display: none; position: absolute; z-index: 100; left: 50px; width: 300px; height: 200px; background: #ccc; border: 1px solid #000;">
        <input id="scriptTextCheckBox" type="checkbox" checked="checked" value="Description" onclick="$('#textToReadArea0').toggle('fold', 1000);" />
        <label for="scriptTextCheckBox">Description</label>
        <br />
        <input id="imagesCheckBox" type="checkbox" checked="checked" value="Images" onclick="$('#imageDiv0').toggle('fold', 1000);" />
        <label for="imagesCheckBox">Images</label>
        <br />
        <input id="usePanoramioImagesCheckBox" type="checkbox" checked="checked" value="Use Panoramio images" />
        <label for="usePanoramioImagesCheckBox">Use Panoramio images</label>
        <br />
        <input id="useSYTImagesCheckBox" type="checkbox" checked="checked" value="Use SeeYourTravel images" />
        <label for="useSYTImagesCheckBox">Use SeeYourTravel images</label>
        <br />
        <input id="useGooglePlacesCheckBox" type="checkbox" checked="checked" value="Use Google Places" />
        <label for="useGooglePlacesCheckBox">Use Google Places</label>
        <br />
        <input id="useSYTPlacesCheckBox" type="checkbox" checked="checked" value="Use SeeYourTravel places" />
        <label for="useSYTPlacesCheckBox">Use SeeYourTravel places</label>
        <br />
        <input id="pictureMaxHeight" type="number" value="100" />
        <label for="pictureHeight">Maximum Picture Height</label>
        <br />
        Volume:
            <br />
        <div id="slider" style="left: 10%; width: 80%; vertical-align: top"></div>
    </div>

    <div id="map"></div>

    <div id="textToReadArea0" class="ui-widget-content" style="border-width: 2px; width: 40%; height: 65%; position: absolute; left: 5%; top: 20%">
        File name:
        <input id="filename" name="filename" type="text" value="MyTrack" /><br />
        Track description:
        <input id="name" name="name" type="text" value="New Track" /><br />
        copyright:
        <input id="copyright" name="copyright" type="text" value="(c)" /><br />
        photoLocationTolerancy:
        <input id="photoLocationTolerancy" name="photoLocationTolerancy" type="text" value="0.1" /><br />
        stepsToRedraw:
        <input id="stepsToRedraw" name="stepsToRedraw" type="text" value="100" /><br />
        stepsToShowPhoto:
        <input id="stepsToShowPhoto" name="stepsToShowPhoto" type="text" value="10" /><br />
        velocityMetersPerSec:
        <input id="velocityMetersPerSec" name="velocityMetersPerSec" type="text" value="100" /><br />
        numOfPhotos:
        <input id="numOfPhotos" name="numOfPhotos" type="text" value="10" /><br />
        icon:
        <input id="icon" name="icon" type="text" value="mybike.png" /><br />
        audioSrc:
        <input id="audioSrc" name="audioSrc" type="text" value="" /><br />
        audioVolume:
        <input id="audioVolume" name="audioVolume" type="text" value="0.5" /><br />
        textToRead:
        <input id="textToRead" name="textToRead" type="text" value="" /><br />
        defaultScale:
        <input id="defaultScale" name="defaultScale" type="text" value="8" /><br />
        trackGpx:
        <input id="trackGpx" name="trackGpx" type="text" value="" /><br />
        <input name="trackData" id="trackData" type="hidden" />
        <select id="points" name="points" size="10" style="width: 400px" multiple="multiple">
        </select>
        <br />
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
    <!--input type="button" value="Undo last"/-->
        <div id="fileOperations">
            <br />
            <br />
            <label for="fileGpx">Import Gpx file:</label>
            <input type="file" accept=".gpx" id="filesGpx" />
            <%--multiple="multiple"--%>
            <!--input type="button" value="Import data" id="importGpx"/-->
        </div>
    </div>

    <div id="imageDiv0" class="ui-widget-content" style="border-width: 2px; width: 40%; height: 20%; position: absolute; left: 55%; top: 75%; overflow-x: hidden; overflow-y: hidden; white-space: nowrap;">
        <div id="imageDiv" style="width: 100%; height: 100%"></div>
    </div>

    <script lang="JavaScript">
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
    <script lang="JavaScript">
        $(function () {
            $('form').submit(function () {
                var t = JSON.stringify(getTrackPoints());
                $("#trackData").val(t);
                return true;
            });

            $("#imageDiv0").draggable().resizable();
            $("#textToReadArea0").draggable().resizable();
            $("#slider").slider({
                value: 0.8,
                min: 0,
                max: 1,
                step: 0.1,
                slide: function (event, ui) {
                    audio.volume = ui.value;
                }
            });

            $('#points').on('change', function (e) {
                var optionSelected = $("option:selected", this);
                var valueSelected = this.value;
                var point = JSON.parse(valueSelected);
                var lat = point[0];
                var lng = point[1];
                var newLatLng = new L.LatLng(lat, lng);
                markerPosition.setLatLng(newLatLng);

                track = { numOfPhotos: parseInt(numOfPhotos.value), photoLocationTolerancy: parseInt(photoLocationTolerancy.value) };
                showPhotos(track, newLatLng);

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

            L.tileLayer(url, {
                attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://cloudmade.com">CloudMade</a>',
                maxZoom: 18
            }).addTo(map);

            var icon = L.icon({
                iconUrl: ("tracks/mycar.png"),
                iconSize: [50, 50],
                iconAnchor: [1, 50],
                shadowUrl: null
            });

            markerPosition = L.marker(new L.LatLng(1000, 1000), { icon: icon }).addTo(map);

            map.on('click', onMapClick);

            if (filenameFromServer) {
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
                if (initialTrack.trackGpx) {
                    $("#trackGpx").val(initialTrack.trackGpx);
                }
                else {

                    initialTrack.trackData.forEach(function (point) {
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
                //var t = JSON.stringify(initialTrack.trackData);
                //$("#trackData").val(t.substring(1, t.length - 1));

                //$('#points')
                //    .find('option')
                //    .remove()
                //    .end()
                //    .append('<option value="whatever">text</option>')
                //    .append('<option value="whatever2">text2</option>')
                //    .val('whatever2');

                drawTrack();

            }
        });

        var polyline;

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
                points.push(point);
            });
            return points;
        }

        var track;
        var markerPosition;

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
                var point = JSON.stringify([e.latlng.lat, e.latlng.lng]);
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

        var url = 'http://{s}.tile.cloudmade.com/5bcd2fc5d5714bd48096c7478324e0fe/997/256/{z}/{x}/{y}.png';

        var map = L.map('map').setView([50.430981, 30.539267], 8);
        var imageDiv = document.getElementById("imageDiv");

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
                            .attr("value", point)
                            .text(point));
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
