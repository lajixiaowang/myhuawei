 $(function() {
     var i = 0;
     var pic_all = $(".pic_all");
     var allimg = $(".pic_all li").length;


     function img_change() {
         var img_i = i * -1263.33 + "px";

         pic_all.animate({ opacity: .2 }, 140, function() {
             pic_all.css("left", img_i);
             pic_all.animate({
                 opacity: 1
             }, 140);
         })
     }

     function automatic() {
         i += 1;
         if (i >= allimg) {
             i = 0;
         }
         img_change();
     }
     change_self_time = setInterval(automatic, 3000);

     $(".btn-left").hover(function() {
         clearInterval(change_self_time);

     }, function() {
         change_self_time = setInterval(automatic, 3000);

     });
     $(".btn-right").hover(function() {
         clearInterval(change_self_time);

     }, function() {
         change_self_time = setInterval(automatic, 3000);

     });
     $(".btn-left").click(function() {
         i += 1;
         if (i >= allimg) {
             i = 0;
         }
         img_change();
     })
     $(".btn-right").click(function() {
         i -= 1;
         if (i <= 0) {
             i = allimg - 1;
         }
         img_change();
     })

 });
 //  $(function() {

 //      $('.inner-right ul li').hover(function() {
 //              $(this).animate({ 'width': '234', 'height': '294', }, 100)
 //          },
 //          function() {
 //              $(this).animate({ 'width': '230', height: '290' }, 100)
 //          })



 //  }());


 $(function() {
     $('.wrap-outer .inner-left').on({
         mouseenter: function() {
             $(this).css('width', '100px');
         },
         mouseleave: function() {
             $(this).css('background', '');
         }
     });
 })