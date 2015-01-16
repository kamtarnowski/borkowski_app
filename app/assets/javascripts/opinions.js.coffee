$ ->
  $('#new_opinion').validate
    rules: {
      'opinion[content]': { required: true, minlength: 40, maxlength: 140 },
    }