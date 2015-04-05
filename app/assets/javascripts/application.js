$(document).ready(function() {
  $('.js-compliment-reloader').click(function(e) {
    e.preventDefault;
    $.getJSON('/compliments/random.json', function(data) {
      $('.js-compliment-message').html(data.compliment.message);
      $('.js-compliment-share-url').attr('href', data.compliment.message_share_url);
    });
  });
});
