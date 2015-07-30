<%@ Page Title="Thank you for your feedback!" Language="C#" MasterPageFile="MasterPage.master" %>
<!--
SeeYourTravel.com - Travel Experience Site
Copyright (c) 2014-2015, Oleksandr Turevskiy
All rights reserved.

GNU GENERAL PUBLIC LICENSE. Version 3, 29 June 2007.
Copyright (C) 2007 Free Software Foundation, Inc. <http://fsf.org/>
-->

<%@ Import Namespace="System.IO" %>

<asp:Content ID="headContent" ContentPlaceHolderID="HeadPlaceholder" runat="Server">
    <script>
        delayRedirect('.');
        function delayRedirect(url) {
            var Timeout = setTimeout("window.location='" + url + "'", 10000);
        }
    </script>
</asp:Content>

<asp:Content ID="bodyContent" ContentPlaceHolderID="BodyPlaceholder" runat="Server">


    <div class="mapheader">
        &nbsp;
       <a href="#">
           <img src="img/logosmall.png" style="height: 24px; width: 24px; vertical-align: middle;" /></a>
        &nbsp;
       Thank you for your feedback! You willl be back to <a href="index.aspx">Main page</a> in 10 seconds, or click the link.
        &nbsp;
    </div>
</asp:Content>
