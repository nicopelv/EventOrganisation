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
//= require bootstrap-sprockets
//= require jquery_ujs
//= require jquery-ui
//= require gmaps-auto-complete

$( document ).ready(function() {
    jQuery(function() {
      var completer;
    
      completer = new GmapsCompleter({
        inputField: '#gmaps-input-address',
        errorField: '#gmaps-error',
        positionOutputter: function(latLng) {
            $('#gmaps-output-latitude').val(latLng.lat());
            $('#gmaps-output-longitude').val(latLng.lng());
        }
      });
    
      completer.autoCompleteInit({region: 'FR', country: 'France'});
    });
});
