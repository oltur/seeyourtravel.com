<%@ Page Title="See Your Travel" Language="C#" MasterPageFile="MasterPage.master" CodeFile="Index.aspx.cs" Inherits="Index"%>

<%@ Import Namespace="System.IO" %>

<asp:Content ID="headContent" ContentPlaceHolderID="HeadPlaceholder" runat="Server">
    <script>
        var errorMessage = '<%=Request["errorMessage"]%>';
        var trackParam = '<%=this.TrackFileName%>';
        var showSidePanel = '<%=Request["showSidePanel"]%>';

        function translateAll(err, t) {
            $(".i").i18n();
            $("option.i").i18n();
            $("#profile").text($.t("Profile") + ": " + globalUserName);
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
                && (e.target.id != 'menuPanel' && !$('#menuPanel').find(e.target).length)){
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

        function switchSidePanel(on)
        {
            if (on == null) {
                on = $("#sidePanel").css("display") == "none";
            }

            if (on) {
                $("#sidePanel").css("display", "inline");
                $("#sidePanel").css("width", "".concat(sidePanelWidth,"px"));
                $("#pageContent").css("margin-left", "".concat(sidePanelWidth, "px"));
            }
            else {
                $("#sidePanel").css("display", "none");
                $("#sidePanel").css("width", "0%");
                $("#pageContent").css("margin-left", "0px");
            }
        }

        var slider1;
		$(document).ready(function()
		{
		    if(errorMessage != "") {
                toastr.error(errorMessage, "ERROR", { timeOut: 5000, extendedTimeOut: 10000 });
		    }

		    if (showSidePanel == "yes") {
		        switchSidePanel(true);
		    }

		    $('#slider1').tinycarousel({
		        axis: 'y'
		        //,interval: true
		        ,infinite: false
		    });
		    slider1 = $("#slider1").data("plugin_tinycarousel");
		    slider1.start();
		});

		function prependToSidePanel(html) {
		    $('.overview').prepend('<li style="width:' + (sidePanelWidth - 30) + 'px; height:' + (sidePanelWidth - 30) / 4 * 3 + 'px;"><div>' + html + '</div></li>');
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
<div id="splitterContainer">
    <div id='sidePanel' style='display:none; height: 100%; width:0%; float: left;'>
<div id="slider1">
		<a class="prev" href="#"><img alt="Up" src="img/up.png" /></a>
    <div class="viewport">
			<ul class="overview">
			</ul>
		</div>
		<a class="next" href="#"><img alt="Down" src="img/down.png" /></a>
    <br />
<%--    <button type="button" data-i18n="[title]Clear;Clear" id="clearSidePanelButton" title="Clear" class="i headerButton" style="width:100px; background-image: url(img/clear.png );" onclick="clearSidePanel()">Clear</button>--%>
	</div>
    </div>
    <div id='pageContent' style='height: 100%; position: relative;margin-left: 0%;'>
        <div style="position: absolute; left: 5px; top:15px; z-index:1001">
            <a id="alogo" href="javascript:clickMenu()"><img src="img/logo3.png" style="height: 50px; width: 50px; vertical-align: middle;" /></a>
            <select style="vertical-align:central; width:200px;height:35px" id="tracksList" class="i graySelect" onchange="clickStart()"></select>
        </div>
        <div style="position: absolute; left: 270px; top:20px; z-index:1001">
            <div id="wrapper">
                <img id="imgCoord" src="img/location.png" />
                <span id="lblCoord" style="vertical-align:super; text-shadow: 1px 1px #ffffff;"></span>
            </div>
        </div>
            <div style="position: absolute; right: 5px; bottom:15px; z-index:1001">
                <div class="fb-like" data-width="50" data-layout="button" data-action="like" data-show-faces="false" data-share="true"></div>
                <a href="https://twitter.com/share" class="twitter-share-button" data-via="turevskiy">Tweet</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
            </div>

        <div id="menuPanel" style="display: none; position: absolute; z-index: 1000; top: 10px; left: 0px; width: 265px; height: 570px; background: rgba(255,255,255,0); border: 0px solid #000;">
            <div style="position: absolute; left: 10px; top: 50px;">
                <button type="button" data-i18n="[title]New;New" id="newTrackButton" title="New" class="i headerButton" style="background-image: url(img/new.png );" onclick="clickNew()">New</button>
                <button type="button" data-i18n="[title]Edit;Edit" id="editTrackButton" title="Edit" class="i headerButton" style="background-image: url(img/edit.png );" onclick="clickEdit()" >Edit</button>
                <button type="button" data-i18n="[title]Settings;Settings" id="settingsCheckBox" title="Settings" class="i headerButton" style="background-image: url(img/settings1.png );" onclick="clickSettings()">Settings</button>
                <button type="button" data-i18n="[title]AboutSeeYourTravel;AboutSeeYourTravel" id="corporateSite" title="Corporate site"  class="i headerButton" style="background-image: url(img/corporate.png );" onclick="window.open('./corporate','_blank')" >About SeeYourTravel</button>
                <button type="button" <%--data-i18n="[title]Profile;Profile" --%>id="profile" title="Profile" class="headerButton" style="background-image: url(img/profile.png );" onclick="window.location = './profile'"></button>
                <button type="button" data-i18n="[title]Logout;Logout" id="logout" title="Logout"  class="i headerButton" style="background-image: url(img/logoff.png );" onclick="window.location = 'Logout.aspx'" >Logout</button>
                <button type="button" data-i18n="[title]Help;Help" id="helpButton" style="background-image: url(img/help.png);" class="i headerButton" title="Need help?" onclick="clickHelp()">Help</button>
            </div>
        </div>
        <div id="helpPanel" style="display: none; padding:10px; position: absolute; z-index: 1000; right: 0px; width: 400px; height: 90%; background: rgba(255,255,255,0.8); border-radius: 12px; border: 0px solid #000;">
            <span id="siteseal">
                <script type="text/javascript" src="https://seal.godaddy.com/getSeal?sealID=hLfbdeAuTQVxRe4IZmMtr1Gf0jrMv1XSJ0S6JNnyohWiDdJm3EUMtIJuf0LN"></script>
            </span>
            <br />
            <br />
            <div class="i" data-i18n="[html]help_content"> 
            </div>
        </div>
        <div id="settingsPanel" style="display: none; position:absolute; padding: 10px; z-index: 1001; top: 60px; left: 60px; width: 300px; height: 250px; background: rgba(255,255,255,0.8); border-radius: 12px; border: 0px solid #000;">
            <input id="scriptTextCheckBox" type="checkbox" title="Description" onchange="SaveSettings();$('#textToReadArea0').toggle('fold', 1000);" />
            <label for="scriptTextCheckBox" class="i" data-i18n="Description">Description</label>
            <br />
            <input id="imagesCheckBox" type="checkbox" checked="checked" title="Images" onchange="SaveSettings(); $('#imageDiv0').toggle('fold', 1000);" />
            <label for="imagesCheckBox" class="i" data-i18n="Images">Images</label>
            <br />
<%--            <input id="sidePanelCheckBox" type="checkbox" title="Show Side Panel" onchange="switchSidePanel();" />
            <label for="sidePanelCheckBox" class="i" data-i18n="ShowSidePanel">Show Side Panel</label>
            <br />--%>
            <input id="loopTrackCheckBox" type="checkbox" checked="checked" title="Loop track infinitely"  onchange="SaveSettings();"/>
            <label for="loopTrackCheckBox" class="i" data-i18n="LoopTrack">Loop track infinitely</label>
            <br />
            <input id="usePanoramioImagesCheckBox" type="checkbox" checked="checked" title="Use Panoramio images"  onchange="SaveSettings();"/>
            <label for="usePanoramioImagesCheckBox" class="i" data-i18n="UsePanoramioImages">Use Panoramio images</label>
            <br />
            <input id="useSYTImagesCheckBox" type="checkbox" checked="checked" title="Use SeeYourTravel images"  onchange="SaveSettings();"/>
            <label for="useSYTImagesCheckBox" class="i" data-i18n="UseCYTImages">Use SeeYourTravel images</label>
            <br />
            <input id="useGooglePlacesCheckBox" type="checkbox" checked="checked" title="Use Google Places"  onchange="SaveSettings();"/>
            <label for="useGooglePlacesCheckBox" class="i" data-i18n="UseGooglePlaces">Use Google Places</label>
            <br />
            <input id="useSYTPlacesCheckBox" type="checkbox" checked="checked" title="Use SeeYourTravel places"  onchange="SaveSettings();"/>
            <label for="useSYTPlacesCheckBox" class="i" data-i18n="UseCYTPlaces">Use SeeYourTravel places</label>
<%--            <br />
            <label for="pictureHeight">Max Picture Height</label>
            <input id="pictureMaxHeight" type="number" value="100" />--%>
            <br />
            <label for="mapStyle" class="i" data-i18n="MapStyle">Map style</label>
            <select id="mapStyle" class="graySelect" onchange="SaveSettings();selectMapStyle()">
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
            <div id="slider" style="left: 10%; width: 80%; vertical-align: top" ></div>
            <script>
                $("#slider").on("slidestop", function (event, ui) {
                    SaveSettings();
                });
            </script>
        </div>
         <div style="position: absolute; right: 5px; top:75px; z-index:1001">
            <div>
                <button type="button" id="mute" style="padding-left:0px; width:46px; background-image: url(img/unmute.png );" class="headerButton" onclick="clickMute();SaveSettings();"></button>
                <br />
                <button type="button" id="continuePauseButton" disabled="disabled" class="headerButton" style="padding-left:0px; width:46px; background-image: url(img/play.png );" onclick="doStartStop();" ></button>
            </div>
        </div>


        <!--Map-->
        <div id="map"></div>
        <div id="map2"></div>

        <audio id="audio" loop="loop">
            <source type="audio/mpeg" />
            Your browser does not support the audio element.
        </audio>

        <div id="textToReadArea0" class="ui-widget-content" style="z-index: 100; min-height:50px; min-width:50px; background: rgba(100,100,100,0.2); border-width: 0px; width: 25%; height: 25%; position: absolute; left: 2%; top: 35%">
           <%-- <br />--%>
            <div id="textToReadArea" disabled="disabled" style="position:absolute; overflow:scroll; background: rgba(240,240,240,0.9); padding: 0; top: 2px; bottom:2px; left:2px; right:2px; margin: 0 auto; resize: none;" ></div>
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

            if ("True" != "<%=User.IsInRole("admins")%>") {
                $("#newTrackButton").attr("disabled", "disabled");
            }

            if (trackParam == "" || "True" != "<%=User.IsInRole("admins")%>") {
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
                url: ('api/filelist.aspx' + "?" + Math.random()),
                async: false,
                dataType: 'json'
            }
        ).responseText;
            var fileList = fileListString.split('\n');
            tracksList
                .find('option')
                .remove()
                .end()
            tracksList.append('<option value="Choose a track" data-i18n="Chooseatrack">Choose a track:</option>');
            for (var i = 0; i < fileList.length; i++) {
                var parts = fileList[i].split(';', 2);
                tracksList.append('<option value="' + parts[0] + '">' + parts[1] + '</option>');
            }

            if (trackParam != '') {
                tracksList.val(trackParam);
                //    $('select[id="tracksList"] option[value="' + trackParam + '"]').attr('selected', 'selected');

                setTimeout(function () { loadTrackOnPageLoad() }, 100);
            }

        });
    </script>


    <script lang="JavaScript">

        var audio = document.getElementById("audio");
        var imageDiv = $("#imageDiv");
        var tracksList = $("#tracksList");
        var textToReadArea = document.getElementById("textToReadArea");
        var counter = 0;
        var markerSize = 50;
        var track;
        var map = undefined;
        var map2 = document.getElementById("map2");
        var animatedMarker;
        var tileLayer;
        var markers;
        var markersFriends;
        var line;
        var markerStart;
        var markerFinish;

    </script>
</asp:Content>

