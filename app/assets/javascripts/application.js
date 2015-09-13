// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require bootstrap
//= require_tree .
//= require turbolinks

$('#nav').affix({
      offset: {
        top: $('header').height()-$('#nav').height()
      }
});
$('.top_button').click(function(){
  $('body').animate({scrollTop : 0},"fast");
})
jQuery(function ($) {
    function init_map1() {
        var myLocation = new google.maps.LatLng(9.061595, 76.600127);
        var mapOptions = {
            center: myLocation,
            zoom: 15
        };
        var marker = new google.maps.Marker({
            position: myLocation,
            title: "Property Location"
        });
        var map = new google.maps.Map(document.getElementById("map1"),
            mapOptions);
        marker.setMap(map);
    }
    init_map1();
});
