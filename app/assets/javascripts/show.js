$(document).on('turbolinks:load', function() {
  var thumbs = document.getElementsByClassName("show_img");
  for (var i = 0 ; i < thumbs.length; i++ ) {
    thumbs[i].onmouseover = function() {
      document.getElementById("show_img_main").src = $(this).data('imagesrc');
    };
  };
});

