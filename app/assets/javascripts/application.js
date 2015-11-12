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
//= require jquery_ujs
//= require_tree .
var map = L.map('map').setView([51.505, -0.09], 1);

L.tileLayer('https://api.tiles.mapbox.com/v4/lacewaves.o51k3fm5/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoibGFjZXdhdmVzIiwiYSI6ImNpZ3ZqeGt0dTByYjE0cG0zYjR4cmo5NXoifQ.UGhgkS0p-U6aUrop_2IY4w', {
    maxZoom: 18,
}).addTo(map);

var marker = L.marker([51.5, -0.09]).addTo(map);
