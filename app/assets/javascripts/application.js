// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.validate
//= require jquery.validate.additional-methods
//= require jquery.validate.localization/messages_pl
//= require owl.carousel
//= require gritter
//= require underscore
//= require gmaps/google
//= require blueimp-gallery-all
//= require bootstrap-sprockets
//= require_tree .

$(document).ready(function(){
    $(window).scroll(function() {
        if($(window).scrollTop() + $(window).height() > $(document).height() * 0.75) {
            $('#button_up').show().click(function(){
                $('html, body').scrollTop(0);
                return false;
            });
        }
        else {
            $('#button_up').hide();
        }
    });
    $('.gritter-item').css('font-size', '16px');
    handler = Gmaps.build('Google');
    handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
        markers = handler.addMarkers([
            {
                "lat": 50.4296549,
                "lng": 21.2828111,
                "picture": {
                    "image": "https://s3.eu-central-1.amazonaws.com/borkowski/layout/marker_google_maps.png",
                    "width":  36,
                    "height": 36,
                },
                "infowindow": "Krzysztof Borkowski ul. Kościuszki 35, 28-230 Połaniec",
            }
        ]);
        handler.bounds.extendWith(markers);
        handler.fitMapToBounds();
        handler.getMap().setZoom(18);
    });
    $(".fa-facebook-square").on("swiperight",function(){
        $('#facebook-container').animate({ right: '-310px' });
    });
});