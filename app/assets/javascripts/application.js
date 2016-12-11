$(document).ready(function() {
  $('.js-compliment-reloader').click(function(e) {
    e.preventDefault;
    $.getJSON('/compliments/random.json', function(data) {
      $('.js-compliment-message').html(data.compliment.message);
      $('.js-compliment-share-url').attr('href', data.compliment.message_share_url);
    });
  });

  $('#organizations-link').click(function(e) {
    e.preventDefault;
    $('html, body').animate({
      scrollTop: $("#organizations").offset().top
    }, 500);
  });
});
