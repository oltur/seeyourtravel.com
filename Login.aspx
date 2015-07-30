<%@ Page Title="Please login to start" Language="C#" MasterPageFile="MasterPage.master" CodeFile="Login.aspx.cs" Inherits="Login"%>

<%@ Import Namespace="System.IO" %>

<asp:Content ID="headContent" ContentPlaceHolderID="HeadPlaceholder" runat="Server">
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

    <script>
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
  </script>

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
        <asp:Button ID="LoginButton" OnClientClick="$('#dialog-form').dialog('close');" runat="server" Text="Login" OnClick="LoginButton_Click" /> </p>
    <p>
        <asp:Label ID="InvalidCredentialsMessage" runat="server" ForeColor="Red" Text="Your username or password is invalid. Please try again."
            Visible="False"></asp:Label> </p>
    </div>
</asp:Content>
