<%@ Page Title="See Your Travel" Language="C#" MasterPageFile="MasterPage.master" %>

<%@ Import Namespace="System.IO" %>

<asp:Content ID="headContent" ContentPlaceHolderID="HeadPlaceholder" runat="Server">
    <script>
        var trackParam = '<%=Request["trackname"]%>';

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

                if (e.target.id != 'helpPanel' && !$('#settingsPanel').find(e.target).length) {
                    $("#settingsPanel").hide('slide', { direction: "up" }, 500);
                }
            }
        });
    </script>
</asp:Content>

<asp:Content ID="bodyContent" ContentPlaceHolderID="BodyPlaceholder" runat="Server">

    <!--Content-->
    <div id='pageContent' style='height: 100%'>
        <div style="position: absolute; left: 5px; top:5px; z-index:1001">
            <a id="alogo" href="javascript:clickMenu()"><img src="img/logo3.png" style="height: 50px; width: 50px; vertical-align: middle;" /></a>
            <select style="vertical-align:central; width:190px;height:35px" id="tracksList" class="i graySelect" onchange="clickStart()"></select>
        </div>
        <div style="position: absolute; left: 260px; top:10px; z-index:1001">
            <div id="wrapper">
                <img id="imgCoord" src="img/location.png" />
                <span id="lblCoord" style="vertical-align:super; text-shadow: 1px 1px #ffffff;"></span>
            </div>
        </div>
        <div id="menuPanel" style="display: none; position: absolute; z-index: 1000; left: 0px; width: 265px; height: 570px; background: rgba(255,255,255,0); border: 0px solid #000;">
            <div style="position: absolute; left: 10px; top: 50px;">
                <button type="button" id="newTrackButton" title="New" class="headerButton" style="background-image: url(img/new.png );" onclick="clickNew()">New</button>
                <button type="button" id="pauseButton" title="Pause" class="headerButton" style="background-image: url(img/pause.png );" onclick="dostop(); pauseButton.disabled = true; continueButton.disabled = false;" >Pause</button>
                <button type="button" id="continueButton" title="Continue" class="headerButton" style="background-image: url(img/play.png );" onclick="dostart(); pauseButton.disabled = false; continueButton.disabled = true;" >Continue</button>
                <button type="button" id="editTrackButton" title="Edit" class="headerButton" style="background-image: url(img/edit.png );" onclick="clickEdit()" >Edit</button>
            </div>
            <div style="position: absolute; left: 10px; top: 220px;">
                <button type="button" id="settingsCheckBox" title="Settings" class="headerButton" style="background-image: url(img/settings1.png );" onclick="clickSettings()">Settings</button>
                <button type="button" id="corporateSite" title="Corporate site"  class="headerButton" style="background-image: url(img/corporate.png );" onclick="window.open('./corporate','_blank')" >About SeeYourTravel</button>
            </div>
            <div style="position: absolute; left: 10px; top: 315px;">
                <button type="button" id="profile" title="Hello, <%=Session["UserName"]%>" class="headerButton" style="background-image: url(img/profile.png );" onclick="window.location = './profile'" >Profile</button>
                <button type="button" id="logout" title="Logout"  class="headerButton" style="background-image: url(img/logoff.png );" onclick="window.location = 'Logout.aspx'" >Logout</button>
                <button type="button" id="helpButton" style="background-image: url(img/help.png);" class="headerButton" title="Need help?" onclick="clickHelp()">Help</button>
            </div>
        </div>
        <div id="helpPanel" style="display: none; padding:10px; position: absolute; z-index: 1000; right: 0px; width: 400px; height: 90%; background: rgba(255,255,255,0.8); border-radius: 12px; border: 0px solid #000;">
            <span id="siteseal">
                <script type="text/javascript" src="https://seal.godaddy.com/getSeal?sealID=hLfbdeAuTQVxRe4IZmMtr1Gf0jrMv1XSJ0S6JNnyohWiDdJm3EUMtIJuf0LN"></script>
            </span>
            <br />
            <br />
            <div
                class="fb-like"
                data-share="true"
                data-width="450"
                data-show-faces="true">
            </div>
            <br />
            <br />
            <h2>Welcome to the travel experience world! </h2>
            <p>
                SeeYourTravel.com is a community where you can share, refresh and plan your paths and memories with your friends and with access to the images and information all over the World.
            </p>
            <ul>
                <li>Login with Facebook or SeeYourTravel account to be a part of our community
                </li>
                <li>Review the tracks of yourself and your friends
                </li>
                <li>Create your own by uploading the data from navigator devices or recording your journey
                </li>
                <li>Edit and setup tracks with few mouse clicks
                </li>
                <li>Share your experience with the World!
                </li>
            </ul>
        </div>
        <div id="settingsPanel" style="display: none; position:absolute; padding: 10px; z-index: 100; top: 45px; left: 60px; width: 300px; height: 200px; background: rgba(255,255,255,0.8); border-radius: 12px; border: 0px solid #000;">
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
<%--            <br />
            <label for="pictureHeight">Max Picture Height</label>
            <input id="pictureMaxHeight" type="number" value="100" />--%>
            <br />
            <label for="mapStyle">Map style</label>
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
            Volume:
            <br />
            <div id="slider" style="left: 10%; width: 80%; vertical-align: top"></div>
        </div>

        <!--Map-->
        <div id="map"></div>
        <div id="map2"></div>

        <audio id="audio" loop="loop">
            <source type="audio/mpeg" />
            Your browser does not support the audio element.
        </audio>

        <div id="textToReadArea0" class="ui-widget-content" style="z-index: 100; background: rgba(100,100,100,0.2); border-width: 0px; width: 25%; height: 25%; position: absolute; left: 2%; top: 70%">
            <br />
            <textarea id="textToReadArea" disabled="disabled" style="top: 25%; width: 99%; height: 88%; resize: none;"></textarea>
        </div>

        <div id="imageDiv0" class="ui-widget-content" style="background: rgba(100,100,100,0.2); border-width: 0px; ">
            <div id="imageDiv" style="width: 100%; height: 100%"></div>
        </div>
    </div>

    <!-- Welcome splash -->
    <script>

        function doStartButtonClick() {
            if (tracksList[0].selectedIndex > 0) {
                dostop(); init(tracksList.val()); dostart(); pauseButton.disabled = false; continueButton.disabled = true;
            }
        }

        //$(function () {
        //    $("#dialog").dialog({
        //        autoOpen: false,
        //        show: {
        //            effect: "blind",
        //            duration: 500
        //        },
        //        hide: {
        //            effect: "explode",
        //            duration: 500
        //        },
        //        width: 300,
        //        height: 200,
        //        modal: true,
        //        buttons: {
        //            Ok: function () {
        //                if ($("#doNotShowIntroCheckbox").is(':checked')) {
        //                    $.cookie('visited', 'yes', { expires: 365 }); // set value='yes' and expiration in 365 days
        //                }
        //                $(this).dialog("close");
        //            },
        //        }
        //    });
        //});
    </script>

    <%--    <div id="dialog" title="Welcome to SeeYourTravel.com">
        <p>SeeYourTravel.com is a travel experience site...</p>
        <p>See more at <a href="https://www.youtube.com/channel/UCfSj_WKVFx0DrI5qmhLjo_A">YouTube</a></p>
        <div style="position: absolute; bottom: 0px; left: 10px;">
            <p>
                <input type="checkbox" id="doNotShowIntroCheckbox" />
                <label for="doNotShowIntroCheckbox">Do not show this again</label>

            </p>
        </div>
    </div>--%>

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

            $("#imageDiv0").draggable().resizable();
            $("#textToReadArea0").draggable().resizable().hide();
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
                url: translateTracksPath('filelist.aspx' + "?" + Math.random()),
                async: false,
                dataType: 'json'
            }
        ).responseText;
            var fileList = fileListString.split('\n');
            tracksList
                .find('option')
                .remove()
                .end()
            tracksList.append('<option value="Choose a track" data-i18n="Chooseatrack"></option>');
            for (var i = 0; i < fileList.length; i++) {
                tracksList.append('<option value="' + fileList[i] + '">' + fileList[i] + '</option>');
            }

            if (trackParam != '') {
                tracksList.val(trackParam);
                //    $('select[id="tracksList"] option[value="' + trackParam + '"]').attr('selected', 'selected');

                setTimeout(function () { doStartButtonClick() }, 100);
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

