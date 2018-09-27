// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).on("turbolinks:load", function() {
  $('.flip a').on("click", function(e) {
    e.stopPropagation();
  });

  $('.flip > *').on("click", function() {
    $(this).toggleClass('flipped');
  });

  $("[data-play]").on("click", function() {
    $("#card_audio").get(0).play();
  });
});
