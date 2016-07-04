$(document).ready(function(){
  $('#index').find('.comment').hide();
  $('.list-inline li button').click(function(){
    $(this).parents('.blog-content').find('.comment').show();
  });
  $('.read').click(function(){
    $('.comment').css('visibility','block');
    $(this).prev().hide().prev().css({'overflow':'visible','max-height':'none'}).parent().find('.comment').show();
    $(this).hide();
  });
$('#show').find('.read').hide().prev().hide().prev().css({'overflow':'visible','max-height':'none'}).parent().find('.comment').show();
var name=$('#show .blog-title a').text();
$('#show .blog-title').html(name);
})
