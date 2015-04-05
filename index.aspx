<%@ Page Title="See Your Travel" Language="C#" MasterPageFile="~/MasterPage.master" %>
       <%@ Import Namespace="System.IO" %>


<script runat="server">

</script>

<asp:Content ID="HeadContent" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div style="height:50px">
<br/>
&nbsp;
       <input id="newTrackButton" type="button" value="New track" onclick="window.location = 'editor.aspx'" />
       &nbsp;
       Tracks:&nbsp;<label for="tracksList"></label><select id="tracksList">
       </select>
       &nbsp;
       <input id="startButton" type="button" value="Load and start" onclick="init(getTrackPathByName(tracksList.options[tracksList.selectedIndex].innerHTML)); start(); pauseButton.disabled = false; continueButton.disabled = true;"/>
       &nbsp;
       <input id="pauseButton" type="button" value="Pause" onclick="stop(); pauseButton.disabled = true; continueButton.disabled = false;"/>
       &nbsp;
       <input id="continueButton" type="button" value="Continue" onclick="start(); pauseButton.disabled = false; continueButton.disabled = true;"/>
       &nbsp;
       <input id="editTrackButton" type="button" value="Edit" onclick="window.location = 'editor.aspx?filename=' + tracksList.options[tracksList.selectedIndex].innerHTML"/>
       &nbsp;
       Track&nbsp;name: <span id="lblTrack"></span>
       &nbsp;
       Current&nbsp;location: <span id="lblCoord"></span>
</div>
       <div id="map"></div>

       <audio id="audio" loop>
           <source src="" type="audio/mpeg">
           Your browser does not support the audio element.
       </audio>

<!--style="background-color:#FFD700;width:25%;float:left;overflow:scroll;height:100%"-->
       <div id="textToReadArea0" class="ui-widget-content" style="border-width:2px;background-color:#AAAAAA;width:20%;height:20%;position:absolute;left:5%;top:75%">
<div id="textToReadArea" style="width:100%;height:100%;"></div>
       </div>

<!--style="background-color:#EEEEEE;width:75%;float:left;overflow:scroll;height:100%"-->
       <div id="imageDiv0" class="ui-widget-content" style="border-width:2px;background-color:#DDDDDD;width:65%;height:20%;position:absolute;left:30%;top:75%;overflow-x:hidden;overflow-y:hidden;white-space:nowrap;">
<div id="imageDiv" style="width:100%;height:100%"></div>
       </div>


  <script>
  $(function() {
    $("#imageDiv0").draggable().resizable();
    $("#textToReadArea0").draggable().resizable();
  });
  </script>

       <script language="JavaScript">

           var audio = document.getElementById("audio");
           var imageDiv = document.getElementById("imageDiv");
           var textToReadArea = document.getElementById("textToReadArea");
           var tracksList = document.getElementById("tracksList");
           var counter = 0;
           var markerSize = 50;
           var track;
           var map;
           var animatedMarker;
           var line;
           var markerStart;
           var markerFinish;

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

