<%@ Page Language="C#"%>
<%@ Import Namespace="System.IO" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!--script src="libs/maps.googleapis.js"></script-->
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true&libraries=places"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="map2"></div>
    <div>

<script>
    function addMarkersNear(nearLat, nearLng, types) {
        var here = new google.maps.LatLng(nearLat, nearLng);

        var request = {
            location: here,
            radius: 5000,
            types: types
        };

        var service = new google.maps.places.PlacesService(map2);
        service.nearbySearch(request, callback);
    }

    function callback(results, status) {
        if (status == google.maps.places.PlacesServiceStatus.OK) {
            for (var i = 0; i < Math.min(results.length, 100) ; i++) {
                console.log(results[i]);
            }
        }
    }

    addMarkersNear(50.460107, 30.492657, ['lodging','restaurant']);
</script>    


    </div>
    </form>
</body>
</html>
