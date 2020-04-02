$(document).on('turbolinks:load', ()=> {
  $("li.category-icon").hover(function() {
    $("ul.category1").toggle();
  });
  $("li.category-icon li ul").hide();
  $("li.category-icon li").hover(function() {
      $(">ul:not(:animated)", this).stop(true, true).slideDown(0);
      $(">a", this).addClass("active");
  }, function() {
      $(">ul:not(:animated)", this).stop(true, true).slideUp(0);
      $(">a", this).removeClass("active");
  });
});