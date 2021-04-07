$(document).on('turbolinks:load', function() {
  setTimeout(function() {
    $('.alert-success, .alert-danger').fadeOut();
  }, 2000);
})

