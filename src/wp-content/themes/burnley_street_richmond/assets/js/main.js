(function ($) {
  ({
    init: function () {
      var self = this
       $(function () {
      //   self.setSmoothScroll()
        self.setUaClass()
         self.slider()
      //   self.accordion()
      //   self.topSlide()
      })
    },

    setUaClass: function () {
      var self = this
      var ua = navigator.userAgent
      var body = $('body')

      $(window).on('load resize', function () {
        if (typeof window.orientation !== 'undefined') {
          $.isMobile = true
          body.addClass('mobile')
        } else {
          body.addClass('pc');
        }
      });

      if (ua.indexOf('iPhone') > 0 || ua.indexOf('iPad') > 0) {
        body.addClass('ios')
      } else if (ua.indexOf('Android') > 0) {
        body.addClass('android')
      }
    },
    slider: function(){
      $('.sec-02_slick_content').slick({
          slidesToShow: 1,
          slidesToScroll: 1,
          arrows: true,
          fade: true,
        });
    }


  }.init())
})(jQuery)
