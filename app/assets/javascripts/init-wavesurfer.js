$(document).on("turbolinks:load", function() {
  $("[data-wavesurfer]").each(function() {
    var wavesurfer = WaveSurfer.create({
      container: this,
      barWidth: 2,
      barGap:2
    });
    var url = $(this).data("wavesurfer");
    wavesurfer.load(url);
    wavesurfer.on("ready", function() {
      wavesurfer.zoom(5);
    })

    $(this).find("a[data-toggle=play]").on("click", function() {
      wavesurfer.playPause();
    })
  });
});
