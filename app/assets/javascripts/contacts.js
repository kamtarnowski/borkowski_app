$(document).ready(function(){
    handler = Gmaps.build('Google');
    handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
        markers = handler.addMarkers([
            {
                "lat": 50.4296549,
                "lng": 21.2828111,
                "picture": {
                    "image": "marker_google_maps.png",
                    "width":  36,
                    "height": 36,
                },
                "infowindow": "ul. Kościuszki 35, 28-230 Połaniec"
            }
        ]);
        handler.bounds.extendWith(markers);
        handler.fitMapToBounds();
        handler.getMap().setZoom(18);
    });
});