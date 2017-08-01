function main (){
  $('img').hide();
  $('img').fadeIn(1000);

  $('.boxes').hide();
  $('.boxes').fadeIn(1000);

}

$(document).ready(main);

$('a').click(function(){
  alert("You are leaving our page. Goodbye!");
});

$('.click').click(function(){
  $(this).toggleClass("clicked");
});