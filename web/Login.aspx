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

    <style>
        #loginform {
        width: 300px;
        height: 250px;

        position:absolute; /*it can be fixed too*/
        left:0; right:0;
        top:0; bottom:0;
        margin:auto;

        /*this to solve "the content will not be cut when the window is smaller than the content": */
        max-width:100%;
        max-height:100%;
        overflow:auto;
    }
    </style>
</asp:Content>

<asp:Content ID="bodyContent" ContentPlaceHolderID="BodyPlaceholder" runat="Server">


    <div class="mapheader">
        <span style="position: absolute; left: 0;">
            <a href="./corporate" target="_blank"><img src="img/logo3.png" style="height: 50px; width: 50px; vertical-align: middle;" /></a>
        </span>
        <span style="position: absolute; right: 0;"><a href="#"><img src="img/help.png" style="height:50px; width:50px" alt="Need assistance?" onclick="$('#helpPanel').toggle('fold', 1000);" /></a>&nbsp;</span>
        <span style="position: absolute; left: 70px;">
        </span>
    </div>
    <div id='pageContent' style='height: 100%'>
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
    </div>

<div id="loginform" title="Login" >

    <table>
        <tr>
            <td class="i" data-i18n="Username_">
                Username:
            </td>
            <td>
                <asp:TextBox ID="UserName" runat="server" class="i" data-i18n></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="i" data-i18n="Password_">
                Password:
            </td>
            <td>
                <asp:TextBox ID="Password" runat="server" TextMode="Password" class="i" data-i18n></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:CheckBox ID="RememberMe" runat="server"/>
                <span class="i" data-i18n="RememberMe">Remember Me</span>
                <asp:HiddenField ID="Token" runat="server"/>
                <asp:HiddenField ID="Data" runat="server"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="LoginButton"  runat="server" Text="Login" OnClick="LoginButton_Click" class="i" data-i18n="[value]Login;"/> 
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                <fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
                </fb:login-button>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td colspan="99">
                <asp:Label ID="Message" runat="server" ForeColor="Red" Text="" class="i" data-i18n></asp:Label> </p>
            </td>
            <td>
            </td>
        </tr>
    </table>
</div>
</asp:Content>
