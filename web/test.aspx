<%@ Page Title="Test" Language="C#" MasterPageFile="MasterPage.master" %>

<%@ Import Namespace="System.IO" %>

<asp:Content ID="headContent" ContentPlaceHolderID="HeadPlaceholder" runat="Server">
    <script>
 
    		$(document).ready(function()
		{
		    var url = "https://mw2.google.com/mw-panoramio/photos/medium/12634160.jpg";

		    //$.ajax({
		    //        dataType: "jsonp",
		    //        url: url,
		    //        success: function (data) {
		    //        },
		    //        error: function (XMLHttpRequest, textStatus, errorThrown) {
		    //            console.log("Status: " + textStatus); console.log("Error: " + errorThrown);
		    //        }
		    //});

		    getFromCacheOrServer(url, function (data) {
		        var i = $("#i");
		        i.attr("src", data);
		    });

		});
	</script>

</asp:Content>

<asp:Content ID="bodyContent" ContentPlaceHolderID="BodyPlaceholder" runat="Server">
<img id="i" src="http://www.html5rocks.com/static/images/profiles/mahemoff.png" />
</asp:Content>

