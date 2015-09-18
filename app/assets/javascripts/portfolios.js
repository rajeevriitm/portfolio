 $(document).ready(function(){
  $(".blue-anim").animate({top: "335px"}, 1500,'easeOutBounce');
  $(".red-anim").animate({top: "320px"}, 1500,'easeOutBounce');
  $('.blue-anim').mouseenter(function(){

    $('.blue-anim .moving_img').fadeOut(500, function(){
      $('#physics').show();
      $('.blue_figcaption').text("Physics").removeClass('blue_figcaption').addClass('new_caption');
    });
  }).mouseleave(function(){
    $('.blue-anim .moving_img').stop(false,true);
    $('#physics').hide();
    $('.blue-anim .moving_img').fadeIn(0, function(){
      $('.new_caption').text('Past').removeClass('new_caption').addClass('blue_figcaption');
    });
  });


  $('.red-anim').mouseenter(function(){

    $('.red-anim .moving_img').fadeOut(500, function(){
      $('#web').show();
      $('.red_figcaption').text("Web-Development").removeClass('red_figcaption').addClass('red_new_caption');
    });
  }).mouseleave(function(){
    $('.red-anim .moving_img').stop(false,true);
    $('#web').hide();
    $('.red-anim .moving_img').fadeIn(0, function(){
      $('.red_new_caption').text('Future').removeClass('red_new_caption').addClass('red_figcaption');
    });
  });



});


