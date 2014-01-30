<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="http://maps.googleapis.com/maps/api/js?sensor=false&amp;libraries=places"></script>
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script type="text/jscript">

        function showmeJson(json) {
            createJSON(json);
        }
        // of Bondi Beach in Sydney, Australia
        var markers = [];
        var geo = [];
        var res;
        function clear(e) {
            var i;
            var lat, long;
            var lat2, long2;
            lat = e.latLng.e;
            long = e.latLng.d;
            res = document.getElementById('HiddenField1');
            res.value = long + "," + lat;
            var res1 = document.getElementById('HiddenField2');
            res1.value = e.Id;
            
            //         var l='';
            //         if (markers.length > 0) {
            //             for (var i = 0; i < markers.length; i++) {
            //                 lat2 = markers[i].position.e;
            //                 long2 = markers[i].position.d;
            //                 l=lat2 + "," + long2;                              

            //                 if (lat == lat2 && long ==  long2)
            //                 {
            //                 markers[i].setMap(null);
            //                 }
            // markerCluster.removeMarker(markers[i]);
            //             }
            //             markers = [];
            //     }

        }

        function Eliminar(a) {
            var i;
            var lat, long;
            var lat2, long2;
            res = document.getElementById('HiddenField1');
            var res1 = document.getElementById('HiddenField2');
            var cor = res.value.split(',');

            lat = cor[0]
            long = cor[1]

            var l = '';
            if (markers.length > 0) {
                for (var i = 0; i < markers.length; i++) {
                    long2 = markers[i].position.e;
                    lat2 = markers[i].position.d;
                    l = lat2 + "," + long2;

                    if (lat == lat2 && long == long2) {
                        markers[i].setMap(null);
                    }
                    // markerCluster.removeMarker(markers[i]);
                }
                //             markers = [];
            }
            res.value = "";
            res1.value = "";
        }

        function initialize(latitud, longitud) {

            var mapOptions = {
                zoom: 4,
                center: new google.maps.LatLng(23.634501, -102.55278)
            }
            var map = new google.maps.Map(document.getElementById('map-canvas'),
                                mapOptions);
            var i = 0;
            var image = 'images/11A.jpg';
            if ('<%=Session["Parametros"] %>' != "") {
                pm2 = '<%=Session["Parametros"] %>'.split('_');
                for (i; i < pm2.length; i++) {

                    if (pm2.length >= 1) {
                        pm3 = pm2[i].split(',');
                        latitud = pm3[0]
                        longitud = pm3[1]

                        var myLatLng = new google.maps.LatLng(latitud, longitud);
                        var marker1 = new google.maps.Marker({
                            position: myLatLng,
                            icon: image
                        });
                        google.maps.event.addListener(marker1, 'click', function (e) {
                            clear(e);
                        });
                        markers.push(marker1);
                        marker1.setMap(map);

                    }
                }
            }
            //         var image = 'images/11A.jpg';

            //         var session = '<%=Session["Parametros"] %>'.split('_');

            //         var myLatLng = new google.maps.LatLng(latitud, longitud);
            //         var marker1 = new google.maps.Marker({
            //             position: myLatLng,
            //             icon: image
            //         });
            //         google.maps.event.addListener(marker1, 'click', function (e) {
            //             clear(e);
            //         });
            //         markers.push(marker1);
            //         marker1.setMap(map);


        }


        //   google.maps.event.addDomListener(window, 'load', initialize);


        function addMarker(latitud, longitud) {
            var mapOptions = {
                zoom: 4,
                center: new google.maps.LatLng(23.634501, -102.55278)
            }
            var map = new google.maps.Map(document.getElementById('map-canvas'),
                                mapOptions);
            //    var map = new google.maps.Map(document.getElementById('map-canvas'));
            //       res = document.getElementById('HiddenField1');
            //       var url = location.href;
            //       var latitud, longitud;
            var image = 'images/11A.jpg';
            //       var pm1, pm2, pm3, i = 0;

            //       pm1 = url.split('#');

            //       var i = 0;
            //       if (pm1.length >= 2) {
            //           if ('<%=Session["Parametros"] %>' != "") {
            //               pm2 = '<%=Session["Parametros"] %>'.split('_');
            //               for (i; i < pm2.length; i++) {

            //                   if (pm2.length >= 1) {
            //                       pm3 = pm2[i].split(',');
            //                       latitud = pm3[0]
            //                       longitud = pm3[1]

            var myLatLng = new google.maps.LatLng(latitud, longitud);
            var marker1 = new google.maps.Marker({
                position: myLatLng,
                icon: image
            });
            google.maps.event.addListener(marker1, 'click', function (e) {
                clear(e);
            });
            markers.push(marker1);
            marker1.setMap(map);

            //                   }
            //               }
            //           }
            //           i = 0;
            //           pm2 = pm1[1].split('_');
            //           for (i; i < pm2.length; i++) {

            //               if (pm2.length >= 1) {
            //                   pm3 = pm2[i].split(',');
            //                   latitud = pm3[0]
            //                   longitud = pm3[1]

            //                   var myLatLng = new google.maps.LatLng(latitud, longitud);
            //                   var marker1 = new google.maps.Marker({
            //                       position: myLatLng,
            //                       icon: image
            //                   });
            //                   google.maps.event.addListener(marker1, 'click', function (e) {
            //                       clear(e);
            //                   });
            //                   markers.push(marker1);
            //                   marker1.setMap(map);

            //               }
            //           }


            //           var i;
            //           var lat, long;
            //           var lat2, long2;


            //           if (markers.length > 0) {
            //               for (var i = 0; i < markers.length; i++) {
            //                   lat2 = markers[i].position.d;
            //                   long2 = markers[i].position.e;
            //                   if (res.value == "") {
            //                       res.value = lat2 + "," + long2;
            //                   }
            //                   else {
            //                       res.value = res.value + "_" + lat2 + "," + long2;
            //                   }


            //               }
            //           }

            //       }
        }
        function createJSON(values) {
            var jsonObj = [];
            var mapOptions = {
                zoom: 4,
                center: new google.maps.LatLng(23.634501, -102.55278)
            }
            var map = new google.maps.Map(document.getElementById('map-canvas'),
                                mapOptions);
            $.each(values, function (index, ide) {
                var item = {};
                item["Geometry"] = {};
                item["Geometry"]["Latitude"] = ide.Latitude;
                item["Geometry"]["Longitude"] = ide.Longitude;
                item["Geometry"]["Id"] = ide.ID_MU;

                jsonObj.push(item);

            });
            var bounds = new window.google.maps.LatLngBounds();
            var marker;
            // extend bounds for each record
            jQuery.each(jsonObj, function (key, val) {
                var myLatlng = new window.google.maps.LatLng(val.Geometry.Latitude, val.Geometry.Longitude);
                bounds.extend(myLatlng);

                marker = new google.maps.Marker({
                    id: val.Geometry.Id,
                    position: new google.maps.LatLng(val.Geometry.Latitude, val.Geometry.Longitude),
                    map: map
                });
                google.maps.event.addListener(marker, 'click', function (e) {
                    clear(e);
                    ClearMap();
                    var idh = document.getElementById("HiddenField2");
                    idh.value = val.Geometry.Id;
                    var cirulo = new google.maps.Circle({
                        center: new google.maps.LatLng(val.Geometry.Latitude, val.Geometry.Longitude),
                        radius: 500,
                        strokeColor: '#99CC00',
                        strokeOpacity: 1,
                        fillColor: '#99CC00',
                        fillOpacity: 0.8,
                        map: map
                    });
                    geo.push(cirulo);
                });
                markers.push(marker);

            });
            map.fitBounds(bounds);
            console.log(jsonObj);
            //document.cookie = "jsonCookie=" + JSON.stringify(jsonObj);

        }
        function ClearMap() {

            if (geo.length > 0) {
                for (var i = 0; i <= geo.length - 1; i++) {
                    geo[i].setMap(null);
                }
                geo = [];
            }
        }

 
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div style="width: 1149px; height: 528px;">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Eliminar" />
                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Guardar" />
                <asp:Label ID="lblMap" runat="server" Text="Nombre del mapa" Visible="False"></asp:Label>
                <asp:TextBox ID="txtMap" runat="server" Visible="False"></asp:TextBox>
            </ContentTemplate>
        </asp:UpdatePanel>
        <div style="width: 1149px; height: 528px;">
            <div id="map-canvas" style="width: 100%; height: 100%">
            </div>
        </div>
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <asp:HiddenField ID="HiddenField2" runat="server" />
    </form>
</body>
</html>
