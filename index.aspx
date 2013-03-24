<%@ Page Language="C#"%>
       <%@ Import Namespace="System.IO" %>
       <!DOCTYPE html>
       <html>
       <head>
           <title>Our travels</title>
           <link rel="stylesheet" href="http://cdn.leafletjs.com/leaflet-0.5/leaflet.css"/>
           <!--[if lte IE 8]>
           <link rel="stylesheet" href="http://cdn.leafletjs.com/leaflet-0.5/leaflet.ie.css"/>
           <![endif]-->
           <script src="http://code.jquery.com/jquery-latest.min.js"></script>
           <script src="http://cdn.leafletjs.com/leaflet-0.5/leaflet.js"></script>
           <script src="js/AnimatedMarker.js"></script>
           <script src="js/OurTravel.js"></script>
           <script type="text/javascript" src="js/get_text.js"></script>
           <link rel="stylesheet" href="styles/ourTravel.css"/>
       </head>
       <body>
       <a href="editor.aspx">Editor page</a>
       &nbsp;
       Tracks:&nbsp;<select id="tracksList">
       </select>
       &nbsp;
       <input id="startButton" type="button" value="Load and start" onclick="init('tracks/'+tracksList.options[tracksList.selectedIndex].innerHTML+'.js');start();pauseButton.disabled = false;continueButton.disabled = true;"/>
       &nbsp;
       <input id="pauseButton" type="button" value="Pause" onclick="stop();pauseButton.disabled = true;continueButton.disabled = false;"/>
       &nbsp;
       <input id="continueButton" type="button" value="Continue" onclick="start();pauseButton.disabled = false;continueButton.disabled = true;"/>
       &nbsp;
       Track: <span id="lblTrack"></span>
       &nbsp;
       Coord: <span id="lblCoord"></span>
       <br/>
       <div id="map"></div>
       <audio id="audio">
           <source src="" type="audio/mpeg">
           Your browser does not support the audio element.
       </audio>
       <br/>

       <div style="width:100%">
       <div id="textToRead" style="background-color:#FFD700;width:25%;float:left;overflow:scroll;height:100%">
       </div>
       <div id="imageDiv" style="background-color:#EEEEEE;width:75%;float:left;overflow:scroll;height:100%">
       </div>
       </div>

       <script language="JavaScript">

           var audio = document.getElementById("audio");
           var imageDiv = document.getElementById("imageDiv");
           var textToRead = document.getElementById("textToRead");
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
                       url:'tracks/filelist.aspx'+"?"+Math.random(),
                       async:false,
                       dataType:'json'
                   }
               ).responseText;
       var fileList=fileListString.split('\n');
       for(var i=0; i<fileList.length; i++)
       {
       	var option=document.createElement("option");
       	option.text=fileList[i];
       	tracksList.add(option,null);
       }

       </script>
       </body>
       </html>