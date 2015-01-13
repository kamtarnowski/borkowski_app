$ ->
  $("i.fa.fa-pencil-square-o").click ->
    $('.edit_slide').slideToggle()
  $('#new_opinion').validate
    rules: {
      'opinion[content]': { required: true, minlength: 50, maxlength: 140 },
    }