$(document).on('turbolinks:load', ()=> {
  $("li.category-icon").hover(function() {
    $("ul.category1").toggle();
  });
  $("li.category-icon li ul").hide();
  $("li.category-icon li").hover(function() {
      $(">ul:not(:animated)", this).stop(true, true).show();
      $(">a", this).addClass("active");
  }, function() {
      $(">ul:not(:animated)", this).stop(true, true).hide();
      $(">a", this).removeClass("active");
  });
});