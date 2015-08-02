<%@ Page Title="Please login to start" Language="C#" MasterPageFile="MasterPage.master" CodeFile="Login.aspx.cs" Inherits="Login"%>

<%@ Import Namespace="System.IO" %>

<asp:Content ID="headContent" ContentPlaceHolderID="HeadPlaceholder" runat="Server">
        <script>
            var messageId = "<%=Message.ClientID%>";
            // This is called with the results from from FB.getLoginStatus().
            function statusChangeCallback(response) {
                console.log('statusChangeCallback');
                console.log(response);
                // The response object is returned with a status field that lets the
                // app know the current login status of the person.
                // Full docs on the response object can be found in the documentation
                // for FB.getLoginStatus().
                if (response.status === 'connected') {
                    // Logged into your app and Facebook.
                    document.getElementById("<%=Token.ClientID%>").value = response.authResponse.accessToken;
                    FB.api('/me', function (response2) {
                        document.getElementById("<%=Data.ClientID%>").value = JSON.stringify(response2);
                        document.getElementById("<%=LoginButton.ClientID%>").click();
                    });
                    //testAPI();
                } else if (response.status === 'not_authorized') {
                    // The person is logged into Facebook, but not your app.
                    //document.getElementById(messageId).innerHTML = 'Please log ' +
                    //  'into this app.';
                } else {
                    // The person is not logged into Facebook, so we're not sure if
                    // they are logged into this app or not.
                //    document.getElementById(messageId).innerHTML = 'Please log ' +
                //      'into Facebook.';
                }
            }

            // This function is called when someone finishes with the Login
            // Button.  See the onlogin handler attached to it in the sample
            // code below.
            function checkLoginState() {
                FB.getLoginStatus(function (response) {
                    statusChangeCallback(response);
                });
            }

            window.fbAsyncInit = function () {
                FB.init({
                    appId: '1475574289425791',
                    cookie: true,  // enable cookies to allow the server to access 
                    // the session
                    xfbml: true,  // parse social plugins on this page
                    version: 'v2.2' // use version 2.2
                });

                // Now that we've initialized the JavaScript SDK, we call 
                // FB.getLoginStatus().  This function gets the state of the
                // person visiting this page and can return one of three states to
                // the callback you provide.  They can be:
                //
                // 1. Logged into your app ('connected')
                // 2. Logged into Facebook, but not your app ('not_authorized')
                // 3. Not logged into Facebook and can't tell if they are logged into
                //    your app or not.
                //
                // These three cases are handled in the callback function.

                $(function(){
                    FB.getLoginStatus(function (response) {
                        statusChangeCallback(response);
                    });
                });

            };

            // Load the SDK asynchronously
            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) return;
                js = d.createElement(s); js.id = id;
                js.src = "//connect.facebook.net/en_US/sdk.js";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));

            // Here we run a very simple test of the Graph API after login is
            // successful.  See statusChangeCallback() for when this call is made.
            //function testAPI() {
            //    console.log('Welcome!  Fetching your information.... ');
            //    FB.api('/me', function (response) {
            //        console.log('Successful login for: ' + response.name);
            //        document.getElementById(messageId).innerHTML =
            //          'Thanks for logging in, ' + response.name + '!';
            //    });
            //}
        </script>
</asp:Content>

<asp:Content ID="bodyContent" ContentPlaceHolderID="BodyPlaceholder" runat="Server">


    <div class="mapheader">
        <span style="position: absolute; left: 0;">
            <a href="#"><img src="img/logo3.png" style="height: 50px; width: 50px; vertical-align: middle;" /></a>
        </span>
        <span style="position: absolute; right: 0;"><a href="#"><img src="img/help.png" style="height:50px; width:50px" alt="Need assistance?" onclick="$('#helpPanel').toggle('fold', 1000);" /></a>&nbsp;</span>
        <span style="position: absolute; left: 70px;">
        <a href="./corporate" target="_blank">About us</a>
        </span>
    </div>
    <div id='pageContent' style='height: 100%'>
        <div id="helpPanel" style="display: none; position: absolute; z-index: 100; left: 69%; width: 30%; height: 90%; background: #eee; border: 1px solid #000;">
	    Here will be help...
    </div>
    </div>

<%--    <script>
        $(function () {
            $("#dialog-form").dialog({
                resizable: false,
 //               autoOpen: false,
//                height: 140,
//                modal: true,
                closeOnEscape: false,
                open: function(event, ui) { $(".ui-dialog-titlebar-close", ui.dialog | ui).hide(); }
//                ,buttons: {
//                    "Login":
//                        function () {
//                            //var t = $("#<%=LoginButton.UniqueID%>");
//                            $(this).dialog("close");
//                            __doPostBack('<%= LoginButton.UniqueID %>', "");
//        }
//        
                },
            });
            $("#dialog-form").dialog("show");
        });
  </script>--%>

<div id="dialog-form" title="Login" >

    <p>
        Username:
        <asp:TextBox ID="UserName" runat="server"></asp:TextBox></p>
    <p>
        Password:
        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox></p>
    <p>
        <asp:CheckBox ID="RememberMe" runat="server" Text="Remember Me" /> </p>
    <p>
        <asp:HiddenField ID="Token" runat="server"/>
        <asp:HiddenField ID="Data" runat="server"/>
        <asp:Button ID="LoginButton"  runat="server" Text="Login" OnClick="LoginButton_Click" /> <%--OnClientClick="$('#dialog-form').dialog('close');"--%>
        &nbsp;
        <fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
        </fb:login-button>
    </p>
    <p>
        <asp:Label ID="Message" runat="server" ForeColor="Red" Text=""></asp:Label> </p>
    </div>
</asp:Content>
