# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#business_method_content').keyup ->
    $('#show_view').html($(this).val())

  $('.meta_button_bus').click ->
    $('#meta_tags').toggle()