# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $(".owl-carousel").owlCarousel

    autoPlay: 5000,
    slideSpeed : 300,
    paginationSpeed : 400,
    singleItem: true,
    navigation: true,
    navigationText: [
      "<i class='fa fa-chevron-circle-left'></i>",
      "<i class='fa fa-chevron-circle-right'></i>"
    ]

  $(".owl-carousel_foot").owlCarousel

    autoPlay: 7000,
    slideSpeed : 300,
    paginationSpeed : 400,
    singleItem: true,
