$(document).on("turbolinks:load", function() {
  var RegionsPlugin = WaveSurfer.regions;

  $("[data-wavesurfer]").each(function() {
    var wavesurfer = WaveSurfer.create({
      container: this,
      barWidth: 3,
      plugins: [
        RegionsPlugin.create()
      ]
    });
    var url = $(this).data("wavesurfer");
    wavesurfer.load(url);
    wavesurfer.on("ready", function() {
      wavesurfer.zoom(50);
      wavesurfer.enableDragSelection({});
    })

    $(this).find("a[data-toggle=play]").on("click", function() {
      wavesurfer.playPause();
    })
  });
});
