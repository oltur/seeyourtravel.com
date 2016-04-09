<%@ Page Title="See Your Travel" Language="C#" MasterPageFile="MasterPage.master" CodeFile="Index.aspx.cs" Inherits="Index" %>

<%@ Import Namespace="System.IO" %>

<asp:Content ID="headContent" ContentPlaceHolderID="HeadPlaceholder" runat="Server">
    <script>
        var sideMenuNo = 0;
        var errorMessage = '<%=Request["errorMessage"]%>';
        var trackParam = '<%=this.TrackFileName%>';
        var showSidePanel = '<%=Request["showSidePanel"]%>';

        var audio;
        var imageDiv;
        var tracksList;
        var textToReadArea;
        var counter = 0;
        var markerSize = 50;
        var track;
        var map = undefined;
        var map2;
        var animatedMarker;
        var tileLayer;
        var markers;
        var markersFriends;
        var markersTracks;
        var line;
        var markerStart;
        var markerFinish;

        function translateAll(err, t) {
            $(".i").i18n();
            $("option.i").i18n();
            $("#profile").text($.t("Profile") + ": " + globalUserName);
            if ("True" == "<%=Tools.IsGuest(this)%>") {
                $("#logout").text($.t("Login"));
            }
            else {
                $("#logout").text($.t("Logout"));
            }
        }

        function clickStart() {
            if (tracksList[0].selectedIndex > 0) {
                window.location = 'index.aspx?trackname=' + tracksList.val();
            }
            else {
                window.location = 'index.aspx';
            }
        }
        function clickEdit() {
            if (tracksList[0].selectedIndex > 0) {
                window.location = 'editor.aspx?trackname=' + tracksList.val();
            }
        }
        function clickNew() {
            window.location = 'editor.aspx';
        }

        $(document).click(function (e) {
            if ((e.target.id != 'alogo' && !$('#alogo').find(e.target).length)
                && (e.target.id != 'menuPanel' && !$('#menuPanel').find(e.target).length)) {
                $("#menuPanel").hide('slide', 500);

                if (e.target.id != 'helpPanel' && !$('#helpPanel').find(e.target).length) {
                    $("#helpPanel").hide('slide', { direction: "right" }, 500);
                }

                if (e.target.id != 'settingsPanel' && !$('#settingsPanel').find(e.target).length) {
                    $("#settingsPanel").hide('slide', { direction: "up" }, 500);
                }
            }
        });

        function switchSidePanel() {
            switchSidePanel(null);
        }

        function switchSidePanel(on) {
            if (on == null) {
                on = $("#sidePanel").css("display") == "none";
            }

            if (on) {
                $("#sidePanel").css("display", "inline");
                $("#sidePanel").css("width", "".concat(sidePanelWidth, "px"));
                $("#pageContent").css("margin-left", "".concat(sidePanelWidth, "px"));
            }
            else {
                $("#sidePanel").css("display", "none");
                $("#sidePanel").css("width", "0%");
                $("#pageContent").css("margin-left", "0px");
            }
        }

        var slider1;
        $(document).ready(function () {
            map2 = document.getElementById("map2");
            audio = document.getElementById("audio");
            imageDiv = $("#imageDiv");
            tracksList = $("#tracksList");
            textToReadArea = document.getElementById("textToReadArea");

            if (errorMessage != "") {
                toastr.error(errorMessage, "ERROR", { timeOut: 5000, extendedTimeOut: 10000 });
            }

            $('#slider1').tinycarousel({
                axis: 'y'
                //,interval: true
		        , infinite: false
            });
            slider1 = $("#slider1").data("plugin_tinycarousel");
            slider1.start();
        });

        function makeSideMenuItem(html, href, image)
        {
            var dynamicCSSId = "dynamicCSS" + (sideMenuNo).toString();
            var sideMenuId = "sideMenuId" + (sideMenuNo).toString();

            r = '<li style="width:' + (sidePanelWidth - 30) + 'px; height:' + (sidePanelWidth - 30) / 4 * 3 + 'px;">';
            if (href != null && href != '')
                r = r + '<a style="text-decoration: none; background: inherit;" href="' + href + '">';
            r = r + '<div id="' + sideMenuId + '" class="sideMenuItem'
            if (href != null && href != '') {
                r = r + ' withA';
            }
            else {
                r = r + ' withoutA';
            }
            if (image != null && image != '') {
                $("<style type='text/css' id='" + dynamicCSSId + "' />").appendTo("head");
                $("#" + dynamicCSSId).text("#" + sideMenuId + ":after {background-size: cover;  background-repeat:no-repeat; background: url('../tracks/content/" + image + "');}");
            }
            else {
                var t = 0;
            }
            r = r + '"><br/>' + html + '</div>';
            if (href != null && href != '')
                r = r + '</a>';
            r = r + '</li>';

            sideMenuNo++;

            return r;
        }

        
        function prependToSidePanel(html, href, image) {
            $('.overview').prepend(makeSideMenuItem(html, href, image));
            slider1.update();
        }

        function appendToSidePanel(html, href, image) {
            $('.overview').append(makeSideMenuItem(html, href, image));
            slider1.update();
        }

        function clearSidePanel() {
            $('.overview').empty();
            slider1.update();
        }
    </script>

</asp:Content>

<asp:Content ID="bodyContent" ContentPlaceHolderID="BodyPlaceholder" runat="Server">
    <!--Content-->
    <div style="position: absolute; right: 40px; top: 5px; z-index: 1003">
        <select style="" id="langList" class="graySelect" onchange="selectLang()"></select>
    </div>
    <input id="showGoesOn" type="hidden" value="0" />
    <div id="splitterContainer">
        <div id='sidePanel' style='display: none; height: 100%; width: 0; float: left;'>
            <div id="slider1">
<%--                <span data-i18n="Chooseatrack">Choose a track:</span>--%>
                <br />
                <a class="prev" href="#">
                    <img class="prevImage" alt="Up" src="img/up.png" /></a>
                <div class="viewport">
                    <ul class="overview">
                    </ul>
                </div>
                <a class="next" href="#">
                    <img class="nextImage" alt="Down" src="img/down.png" /></a>
                <br />
                <%--    <button type="button" data-i18n="[title]Clear;Clear" id="clearSidePanelButton" title="Clear" class="i headerButton" style="width:100px; background-image: url(img/clear.png );" onclick="clearSidePanel()">Clear</button>--%>
            </div>
        </div>
        <div id='pageContent' style='height: 100%; position: relative; margin-left: 0;'>
            <div style="position: absolute; left: 5px; top: 15px; z-index: 1001">
                <a id="alogo" href="javascript:clickMenu()">
                    <img src="img/3lines.png" style="height: 30px; width: 30px; vertical-align: middle;" /></a>
                <select style="vertical-align: central; width: 200px; height: 35px" id="tracksList" class="i graySelect" onchange="clickStart()"></select>
            </div>
            <div style="position: absolute; left: 270px; top: 20px; z-index: 1001">
                <div id="wrapper">
                    <img id="imgCoord" src="img/location.png" />
                    <span id="lblCoord" style="vertical-align: super; text-shadow: 1px 1px #ffffff;"></span>
                </div>
            </div>
            <div style="position: absolute; right: 5px; bottom: 15px; z-index: 1001">
                <div class="fb-like" data-width="50" data-layout="button" data-action="like" data-show-faces="false" data-share="true"></div>
                <a href="https://twitter.com/share" class="twitter-share-button" data-via="turevskiy">Tweet</a>
                <script>!function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ? 'http' : 'https'; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = p + '://platform.twitter.com/widgets.js'; fjs.parentNode.insertBefore(js, fjs); } }(document, 'script', 'twitter-wjs');</script>
            </div>

            <div id="menuPanel" style="display: none; position: absolute; z-index: 1000; top: 10px; left: 0; width: 265px; height: 570px; background: rgba(255,255,255,0); border: 0 solid #000;">
                <div style="position: absolute; left: 10px; top: 50px;">
                    <button type="button" data-i18n="[title]New;New" id="newTrackButton" title="New" class="i headerButton" style="background-image: url(img/new.png );" onclick="clickNew()">New</button>
                    <button type="button" data-i18n="[title]Edit;Edit" id="editTrackButton" title="Edit" class="i headerButton" style="background-image: url(img/edit.png );" onclick="clickEdit()">Edit</button>
                    <button type="button" data-i18n="[title]Settings;Settings" id="settingsCheckBox" title="Settings" class="i headerButton" style="background-image: url(img/settings1.png );" onclick="clickSettings()">Settings</button>
                    <button type="button" data-i18n="[title]AboutSeeYourTravel;AboutSeeYourTravel" id="corporateSite" title="Corporate site" class="i headerButton" style="background-image: url(img/corporate.png );" onclick="window.open('./corporate','_blank')">About SeeYourTravel</button>
                    <button type="button" <%--data-i18n="[title]Profile;Profile" --%>id="profile" title="Profile" class="headerButton" style="background-image: url(img/profile.png );" onclick="window.location = 'UserProfile.aspx'"></button>
                    <button type="button" data-i18n="[title]Logout;Logout" id="logout" title="Logout" class="i headerButton" style="background-image: url(img/logoff.png );" onclick="window.location = 'Logout.aspx'">Logout</button>
                    <button type="button" data-i18n="[title]Help;Help" id="helpButton" style="background-image: url(img/help.png);" class="i headerButton" title="Need help?" onclick="clickHelp()">Help</button>
                </div>
            </div>
            <!-- #Include virtual="include/profileHelpPanel.inc" -->
            <!-- #Include virtual="include/settingsPanel.inc" -->

            <div style="position: absolute; right: 5px; top: 75px; z-index: 1001">
                <div>
                    <button type="button" id="mute" style="padding-left: 0; width: 46px; background-image: url(img/unmute.png );" class="headerButton" onclick="clickMute();SaveSettings();"></button>
                    <br />
                    <button type="button" id="continuePauseButton" disabled="disabled" class="headerButton" style="padding-left: 0; width: 46px; background-image: url(img/play.png );" onclick="doStartStop();"></button>
                </div>
            </div>


            <!--Map-->
            <div id="map"></div>
            <div id="map2"></div>

            <div id="textToReadArea0" class="ui-widget-content" style="z-index: 100; min-height: 50px; min-width: 50px; background: rgba(100,100,100,0.2); border-width: 0; width: 25%; height: 25%; position: absolute; left: 2%; top: 35%">
                <%-- <br />--%>
                <div id="textToReadArea" style="position: absolute; overflow: scroll; background: rgba(240,240,240,0.9); padding: 0; top: 2px; bottom: 2px; left: 2px; right: 2px; margin: 0 auto; resize: none;"></div>
            </div>

            <div id="imageDiv0" class="ui-widget-content">
                <div id="imageDiv" class="innerScrollArea">
                    <ul></ul>
                </div>
            </div>
        </div>
    </div>

    <!-- Welcome splash -->
    <script>

        function loadTrackOnPageLoad() {
            if (tracksList[0].selectedIndex > 0) {
                init(tracksList.val()); doStartStop();
            }
        }

    </script>

    <script>
        $(function () {

            if ("True" == "<%=Tools.IsGuest(this)%>") {
                $("#newTrackButton").attr("disabled", "disabled");
            }

            if (trackParam == "" || "True" == "<%=Tools.IsGuest(this)%>") {
                $("#editTrackButton").attr("disabled", "disabled");
            }

            var visited = $.cookie('visited'); // create cookie 'visited' with no value
            //if (visited != 'yes') {
            //    $("#dialog").dialog("option", "width", 450);
            //    $("#dialog").dialog("option", "height", 300);
            //    $("#dialog").dialog("option", "minwidth", 450);
            //    $("#dialog").dialog("option", "minheight", 300);
            //    $("#dialog").dialog("option", "resizable", false);
            //    $("#dialog").dialog("open");
            //}
            init();

            $("#imageDiv0").draggable().resizable({ minHeight: 50, minWidth: 50 });
            $("#textToReadArea0").draggable().resizable({ minHeight: 50, minWidth: 50 }).hide();
            //$("#scriptTextCheckBox").button();
            //$("#imagesCheckBox").button();
            //$("#usePanoramioImagesCheckBox").button();
            //$("#useSYTImagesCheckBox").button();
            //$("#useGooglePlacesCheckBox").button();
            //$("#useSYTPlacesCheckBox").button();
            $("#slider").slider({
                value: 0.8,
                min: 0,
                max: 1,
                step: 0.1,
                slide: function (event, ui) {
                    audio.volume = ui.value;
                }
            });
            audio.volume = $("#slider").slider("value");

            LoadSettings();


            //$('.owl-carousel').owlCarousel({
            //    autoWidth:true,
            //    loop: true,
            //    margin: 10,
            //    responsiveClass: true,
            //    responsive: {
            //        0: {
            //            items: 1,
            //            nav: true
            //        },
            //        600: {
            //            items: 3,
            //            nav: false
            //        },
            //        1000: {
            //            items: 5,
            //            nav: true,
            //            loop: false
            //        }
            //    }
            //});

            var fileListString = $.ajax(
            {
                url: ("services/get_myandpublictracks.aspx?locale=" + $("#langList").val() + "&rnd=" + Math.random()),
                async: false,
                dataType: 'json'
            }
        ).responseText;
            var fileList = fileListString.split('\n');
            tracksList
                .find('option')
                .remove()
                .end()
            var label = "";
            tracksList.append('<option value="Choose a track" data-i18n="Chooseatrack">Choose a track:</option>');
            clearSidePanel();

            markersTracks.clearLayers();

            for (var i = 0; i < fileList.length; i++) {
                var parts = fileList[i].split(';');
                if (label != parts[3]) {
                    label = parts[3];
                    tracksList.append('<optgroup label="' + label + '" style="color: black;"/>');
                }
                tracksList.append('<option value="' + parts[0] + '">' + (parts[2] == 1 ? "" : "*") + parts[1] + '</option>');
                var isSelected = (trackParam == parts[0]);
                var sidePanelHtml = (isSelected?'<b>':'') +
                    label + ':<br/>' + (parts[2] == 1 ? '' : '*') + parts[1]
                    + (trackParam == parts[0]?'</b>':'');
                var sidePanelHref = (isSelected ? '' : 'index.aspx?trackName=' + parts[0]);
                appendToSidePanel(sidePanelHtml, sidePanelHref, parts[4]);
                if(parts[5].length > 0)
                {
                    var location = JSON.parse(parts[5]);

                    var iconTrack = L.icon({
                        iconUrl: ('img/track.png'),
                        iconSize: [40, 40],
                        iconAnchor: [20, 20],
                        //shadowUrl: null
                    });

                    var fileName = parts[0];
                    var text = parts[1];
                    var imgPath = (parts[4] != "")?("tracks/content/" + parts[4]) : ("img/track.png");
                    var domelem = document.createElement('a');
                    //domelem.href = place.name;
                    domelem.innerHTML = "<p>" + text + "</p><img height='100px' width='100px' src='" + imgPath + "'/>";
                    domelem.alt = text;
                    domelem.href = "./index.aspx?trackname=" + fileName;
                    domelem.target = "_blank";
                    

                    var markerTrack = L.marker(new L.LatLng(location.lat - 0.0002 + Math.random() * 0.0004, location.lng - 0.0002 + Math.random() * 0.0004),
                        { icon: iconTrack })
                            .bindPopup(domelem);    

                    markersTracks.addLayer(markerTrack);
                }
            }

            if (trackParam != '') {
                tracksList.val(trackParam);
                //    $('select[id="tracksList"] option[value="' + trackParam + '"]').attr('selected', 'selected');

                setTimeout(function () { loadTrackOnPageLoad() }, 100);
            }

        });
    </script>
</asp:Content>

