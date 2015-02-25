jQuery ->
  $('#join-war-submit').click ->
    window.location = "/wars/#{$('#code').val()}"
