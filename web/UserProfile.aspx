<%@ Page Title="See Your Travel Profile" Language="C#" MasterPageFile="MasterPage.master" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" %>

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

    <div id="textToReadArea0" class="ui-widget-content" style="visibility: hidden; position: absolute; padding: 10px; z-index: 1001; top: 40px; right: 50px; width: 340px; height: 700px; background: rgba(255,255,255,0.8); border-radius: 12px; border: 0px solid #000;">
        <table border="0">
            <tr>
                <td class="big">Test:</td>
                <td>
                    <input id="name" name="name" type="text" value="New Track" /></td>
            </tr>
        </table>
    </div>

    <div id="imageDiv0" class="ui-widget-content" style="visibility: hidden;">
        <div id="imageDiv" class="innerScrollArea">
            <ul></ul>
        </div>
    </div>

    <div style="position: absolute; left: 10px; top: 50px; z-index: 101;">
        <div><%=Tools.GetUserName(this)%></div>
        <br />
        <br />
        <span class="i" data-i18n="TheTracks">The Tracks</span>
        <br />
        <select style="vertical-align: central; width: 200px;" id="tracksList" class="i" size="15"></select>
        <br />
        <br />
        <button type="button" id="buttonNew" class="i" data-i18n="[title]New;New">New</button>
        <button type="button" id="buttonEdit" class="i" data-i18n="[title]Edit;Edit">Edit</button>
        <button type="button" id="buttonDelete" class="i" data-i18n="[title]Delete;Delete">Delete</button>
        <br />
        <br />
        <a href="UserPhotos.aspx" class="i" data-i18n="[title]UserPhotos;UserPhotos">User Photos</a>
        <br />
        <br />
        <span class="i" data-i18n="SiteComponentHTML">Site component HTML:</span> 
        <br />
        <input type="text" id="frameUrl" value="" style="width: 600px" />
        <br />
        <br />
        <div id="divframe"></div>
    </div>
    <script>
        var tracksList;
        $(function () {

            tracksList = $("#tracksList");

            fillTracks();

            tracksList.change(function () {
                var s = '<iframe style="width: 500px; height: 300px;" src="' + '<%=Request.Url.GetLeftPart(UriPartial.Authority) + Request.ApplicationPath%>' + "frame.aspx?trackname=" + tracksList.val() + '"></iframe>'
                $("#frameUrl").val(s);
                $("#divframe").html(s);
            });
            $("#buttonNew").click(function () {
                window.location = "editor.aspx";
            });
            $("#buttonEdit").click(function () {
                window.location = "editor.aspx?trackname=" + tracksList.val();
            });
            $("#buttonDelete").click(function () {
                if (tracksList.val() != null) {
                    var url = "services/delete_trackbyfilename.aspx?fileName=" + tracksList.val();
                    $.ajax({
                        //                    dataType: "jsonp",
                        url: url,
                        success: function (data) {
                            toastr.info("Track is deleted", "", { timeOut: 5000, extendedTimeOut: 10000 });
                            fillTracks();
                            $("#frameUrl").val("");
                            $("#divframe").html("");
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            console.log("delete track error: " + textStatus); console.log("Error: " + errorThrown);
                            toastr.error(textStatus + "," + errorThrown, "ERROR", { timeOut: 5000, extendedTimeOut: 10000 });
                        }
                    });
                }
            });
        });

        function fillTracks() {
            var fileListString = $.ajax(
        {
            url: ('services/get_mytracks.aspx' + "?" + Math.random()),
            async: false,
            dataType: 'json'
        }
        ).responseText;

            var fileList = fileListString.split('\n');
            tracksList
                    .find('option')
                    .remove()
                    .end();
            for (var i = 0; i < fileList.length; i++) {
                var parts = fileList[i].split(';');
                tracksList.append('<option value="' + parts[0] + '">' + (parts[2] == 1 ? "*" : "") + parts[1] + '</option>');
            }
        }

    </script>
</asp:Content>
