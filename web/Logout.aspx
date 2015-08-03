<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage.master" CodeFile="Logout.aspx.cs" Inherits="Logout" %>

<asp:Content ID="headContent" ContentPlaceHolderID="HeadPlaceholder" runat="Server">
    <script>    

        function logout() {
            // User submits form, we need their location...
            if (typeof FB === "undefined") {
                setTimeout(function () { logout(); }, 100); // Retry after timeout
                return false;
            } else {
                FB.getLoginStatus(function(response){
                    try {
                        FB.logout(function (response) {
                        });
                    }
                    catch(err) {}
                    window.location = "index.aspx";
                });
            }
        }
        
        $(function () {
            logout();
        });
</script>
</asp:Content>

<asp:Content ID="bodyContent" ContentPlaceHolderID="BodyPlaceholder" runat="Server">

</asp:Content>
