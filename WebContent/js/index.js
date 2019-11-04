var h = window.innerHeight;
$('.page-overlay').css('height',h);

  $('.inside').hide();

  setTimeout(function(){
    $('.page-overlay').hide();
    $('.inside').show();
  },9000);