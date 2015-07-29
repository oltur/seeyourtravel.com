<%@ Page Title="See Your Travel" Language="C#" MasterPageFile="MasterPage.master" %>

<%@ Import Namespace="System.IO" %>

<asp:Content ID="headContent" ContentPlaceHolderID="HeadPlaceholder" runat="Server">
</asp:Content>

<asp:Content ID="bodyContent" ContentPlaceHolderID="BodyPlaceholder" runat="Server">
<!--Section Visitor Engage integration -->
<script>
              var _vengage = _vengage || [];
              (function(){
              var a, b, c;
              a = function (f) {
              return function () {
              _vengage.push([f].concat(Array.prototype.slice.call(arguments, 0)));
            };
          };
          b = ['load', 'addRule', 'addVariable', 'getURLParam', 'addRuleByParam', 'addVariableByParam', 'trackAction', 'submitFeedback', 'submitResponse', 'close', 'minimize', 'openModal', 'helpers'];
          for (c = 0; c < b.length; c++) {
          _vengage[b[c]] = a(b[c]);
        }
        var t = document.createElement('script'),
        s = document.getElementsByTagName('script')[0];
        t.async = true;
        t.src = ('https:' == document.location.protocol ? 'https' : 'http') + '://s3.amazonaws.com/vetrack/init.min.js';
        s.parentNode.insertBefore(t, s);
        _vengage.push(['pubkey', '4b55d135-83d5-47be-bd15-183b4b09bc21']);
      })();
</script>

    <div class="mapheader">
        <span style="position: absolute; left: 0;">
            <a href="#"><img src="img/logo3.png" style="height: 50px; width: 50px; vertical-align: middle;" /></a>
        </span>
        <span style="position: absolute; right: 70px;">
            <span style="vertical-align:top">
                Hello, <%=Context.User.Identity.Name%>&nbsp;<a href="Logout.aspx">Logout</a>
            </span>
        </span>
        <span style="position: absolute; right: 0px;">
            <a href="#"><img src="img/help.png" style="height:50px; width:50px" alt="Need assistance?" onclick="$('#helpPanel').toggle('fold', 1000);" /></a>&nbsp;
        </span>
        <span style="position: absolute; left: 70px;">
       <input id="newTrackButton" type="button" value="New" onclick="window.location = 'editor.aspx'" />
        &nbsp;
       <label for="tracksList"></label>
        <select id="tracksList">
        </select>
        &nbsp;
       <input id="startButton" type="button" value="Load" onclick="init(tracksList.options[tracksList.selectedIndex].innerHTML); start(); pauseButton.disabled = false; continueButton.disabled = true;" />
        &nbsp;
       <input id="pauseButton" type="button" value="Pause" onclick="stop(); pauseButton.disabled = true; continueButton.disabled = false;" />
        &nbsp;
       <input id="continueButton" type="button" value="Continue" onclick="start(); pauseButton.disabled = false; continueButton.disabled = true;" />
        &nbsp;
       <input id="editTrackButton" type="button" value="Edit" onclick="window.location = 'editor.aspx?filename=' + tracksList.options[tracksList.selectedIndex].innerHTML" />
        <!--       &nbsp;
	<img src="img\poweredbygoolge\desktop\powered-by-google-on-non-white.png"/>
-->
        &nbsp;
       <input id="settingsCheckBox" type="checkbox" value="Settings" onclick="$('#settings').toggle('fold', 1000);" />
        <label for="settingsCheckBox">Settings</label>
        &nbsp;
        <a href="./corporate" target="_blank">About us</a>
        <br />
        &nbsp;
       Current&nbsp;location: <span id="lblCoord"></span>
        </span>
    </div>
    <!--Content-->
    <div id='pageContent' style='height: 100%'>
        <div id="helpPanel" style="display: none; position: absolute; z-index: 100; left: 69%; width: 30%; height: 90%; background: #eee; border: 1px solid #000;">
		Here will be help...
    	</div>
        <!--Map-->
        <div id="settings" style="display: none; position: absolute; z-index: 100; left: 50px; width: 300px; height: 200px; background: #ccc; border: 1px solid #000;">
            <input id="scriptTextCheckBox" type="checkbox" checked="checked" value="Description" onclick="$('#textToReadArea0').toggle('fold', 1000);" />
            <label for="scriptTextCheckBox">Description</label>
            <br />
            <input id="imagesCheckBox" type="checkbox" checked="checked" value="Images" onclick="$('#imageDiv0').toggle('fold', 1000);" />
            <label for="imagesCheckBox">Images</label>
            <br />
            <input id="usePanoramioImagesCheckBox" type="checkbox" checked="checked" value="Use Panoramio images"/>
            <label for="usePanoramioImagesCheckBox">Use Panoramio images</label>
            <br />
            <input id="useSYTImagesCheckBox" type="checkbox" checked="checked" value="Use SeeYourTravel images"/>
            <label for="useSYTImagesCheckBox">Use SeeYourTravel images</label>
            <br />
            <input id="useGooglePlacesCheckBox" type="checkbox" checked="checked" value="Use Google Places"/>
            <label for="useGooglePlacesCheckBox">Use Google Places</label>
            <br />
            <input id="useSYTPlacesCheckBox" type="checkbox" checked="checked" value="Use SeeYourTravel places"/>
            <label for="useSYTPlacesCheckBox">Use SeeYourTravel places</label>
            <br />
            <input id="pictureMaxHeight" type="number" value="100"/>
            <label for="pictureHeight">Maximum Picture Height</label>
            <br />
            Volume:
            <br />
            <div id="slider" style="left:10%; width:80%;vertical-align:top"></div>
        </div>
        <div id="map"></div>
        <div id="map2"></div>

        <audio id="audio" loop="loop">
            <source type="audio/mpeg" />
            Your browser does not support the audio element.
        </audio>

        <div id="textToReadArea0" class="ui-widget-content" style="border-width: 2px; width: 25%; height: 25%; position: absolute; left: 2%; top: 70%">
            <br />
            <textarea id="textToReadArea" disabled="disabled" style="top:25%; width: 99%; height: 88%; resize: none;"></textarea>
        </div>

        <div id="imageDiv0" class="ui-widget-content" style="border-width: 2px; width: 68%; height: 25%; position: absolute; left: 30%; top: 70%; overflow-x: hidden; overflow-y: hidden; ">
            <div id="imageDiv" style="width: 100%; height: 100%"></div>
        </div>
    </div>

<!-- Welcome splash -->
<script>
  $(function() {
    $( "#dialog" ).dialog({
      autoOpen: false,
      show: {
        effect: "blind",
        duration: 1000
      },
      hide: {
        effect: "explode",
        duration: 1000
      },
	modal: true,
      buttons: {
        Ok: function() {
	  if($("#doNotShowIntroCheckbox").is(':checked')) {
	    $.cookie('visited', 'yes', { expires: 365 }); // set value='yes' and expiration in 365 days
  	  }
          $( this ).dialog( "close" );
        },
      }
    });
  });  
</script>

<div id="dialog" title="Welcome to SeeYourTravel.com">
  <p>SeeYourTravel.com is a travel experience site...</p>
  <p>See more at <a href="https://www.youtube.com/channel/UCfSj_WKVFx0DrI5qmhLjo_A">YouTube</a></p>
  <div style="position: absolute;bottom: 0px;left: 10px;">
	<p><input type="checkbox" id="doNotShowIntroCheckbox">Do not show it again</input> </p>
  </div
</div>

    <script>
        $(function () {

var visited = $.cookie('visited'); // create cookie 'visited' with no value
    if (visited == 'yes') {
        return false;
    } else {
		$( "#dialog" ).dialog( "option", "width", 600 );
		$( "#dialog" ).dialog( "option", "height", 400 );
		$( "#dialog" ).dialog( "open" );
    }

            $("#imageDiv0").draggable().resizable();
            $("#textToReadArea0").draggable().resizable();
//            $("#settingsCheckBox").button();
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
        });
    </script>


    <script lang="JavaScript">

        var audio = document.getElementById("audio");
        var imageDiv = document.getElementById("imageDiv");
        var textToReadArea = document.getElementById("textToReadArea");
        var tracksList = document.getElementById("tracksList");
        var counter = 0;
        var markerSize = 50;
        var track;
        var map = "a";
        var map2 = document.getElementById("map2");
        var animatedMarker;
        var line;
//        var markerStart;
//        var markerFinish;

        var fileListString = $.ajax(
                    {
                        url: translateTracksPath('filelist.aspx' + "?" + Math.random()),
                        async: false,
                        dataType: 'json'
                    }
                ).responseText;
        var fileList = fileListString.split('\n');
        for (var i = 0; i < fileList.length; i++) {
            var option = document.createElement("option");
            option.text = fileList[i];
            tracksList.add(option, null);
        }

    </script>

</asp:Content>

