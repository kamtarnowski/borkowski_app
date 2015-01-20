# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#home_page_content').keyup ->
    $('#show_view').html($(this).val())

  $('#hide_button').click ->
    $('#carousel_content').toggle()

  $('.meta_button_home').click ->
    $('#meta_tags').toggle()