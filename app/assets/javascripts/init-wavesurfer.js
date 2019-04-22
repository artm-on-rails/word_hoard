$(document).on("turbolinks:load", function() {
  var RegionsPlugin = WaveSurfer.regions;
  var currentRegion = null;

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
    })

    $(this).find("a[data-toggle=play]").on("click", function() {
      wavesurfer.playPause();
    });

    $(this).find("a[data-toggle=play-loop]").on("click", function() {
      playPauseLoop();
    });

    function playPauseLoop() {
      if (!currentRegion) {
        selectCurrentRegion();
      }

      if (!currentRegion) {
        console.log("no current region")
        return;
      }

      wavesurfer.playPause();
    }

    function selectCurrentRegion() {
      if (wavesurfer.regions.list.length) {
        console.log(wavesurfer.regions.list);
        console.log("pick a region under cursor if possible");
        return null;
      }
      console.log("add a region under cursor");
      currentRegion = wavesurfer.addRegion({
        start: 0,
        end: 2.0,
        loop: true,
        drag: false,
        resize: true
      });
    }
  });
});
