$ ->
  $('#new_opinion').validate
    rules: {
      'opinion[content]': { required: true, minlength: 50, maxlength: 140 },
    }