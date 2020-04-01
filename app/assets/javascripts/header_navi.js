$(document).on('turbolinks:load', ()=> {
  $("li.icon").hover(function() {
    $("ul.category1").toggle();
  });
  $("li.icon li ul").hide();
  $("li.icon li").hover(function() {
      $(">ul:not(:animated)", this).stop(true, true).slideDown(0);
      $(">a", this).addClass("active");
  }, function() {
      $(">ul:not(:animated)", this).stop(true, true).slideUp(0);
      $(">a", this).removeClass("active");
  });
});