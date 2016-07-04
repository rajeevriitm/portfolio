$('document').ready(function(){
    $('.thumbnail').fancybox({
        beforeLoad: function() {
            this.title = $(this.element).attr('caption');
        },
        'transitionIn'  :   'elastic',
        'transitionOut' :   'elastic',
        'speedIn'       :   600,
        'speedOut'      :   200,
        'overlayShow'   :   false
    });


    $('.top_button').click(function(){
      $('body').animate({scrollTop : 0},"fast");
  });
});

