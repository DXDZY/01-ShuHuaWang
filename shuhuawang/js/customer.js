/**
 * Created by XiaoDong on 2015/11/25.
 */
(function($){
    $(document).ready(function(){
        $('.carousel').carousel();
        //tab
        $(function() {
            $( "#tabs" ).tabs({
                event: "mouseover"
            });
        });
        $('.lt-title-right a').click(function(){
           var $this = $(this);
           var $img = $(this).find('img');
           if($img.hasClass('collapsed_no')){
               $img
                   .attr({
                   src:'images/collapsed_yes.gif.png'
               })
                   .removeClass()
                   .addClass('collapsed_yes');
               $this.closest('.lt-container-class').find('.lt-content').hide();
           }else{
               $img
                   .attr({
                       src:'images/collapsed_no.gif.png'
                   })
                   .removeClass()
                   .addClass('collapsed_no');
               $this.closest('.lt-container-class').find('.lt-content').show();
           }

        });

        $('.lt-container-class').each(function(index,item){
            var $item = $(item);
            var $content = $(item).find('.lt-content');
            if($content.length > 1){
                $content.each(function(index,item1){
                    if(index == ($content.length-1)){
                        return false;
                    }
                    $(item1).css({
                       'border-bottom':'1px dashed #CDCDCD'
                    });
                })
            }
        });

        //获取详情列表
        if($('.pager').length>0){
            $.getJSON('data/detail.json',function(data){
                $.each(data,function(index,item){
                   $('.pager').detaillist(item);
                });
            });
        }

        //点击登录、注册
        $('.header-login').click(function(event){
           var showModal = false;
           var currentHeaderClick = '';
           if(event.target.id=='login'){
               $.ajaxSetup({
                   async:false
               });
               $('#login-register').load('login.aspx #exampleModal-login');
               showModal = true;
               currentHeaderClick = 'login';
           }else if(event.target.id=='register'){
               $.ajaxSetup({
                   async:false
               });
               $('#login-register').load('register.aspx #exampleModal-register');
               showModal = true;
               currentHeaderClick ='register'
           }
           if(showModal){
               $.getScript('js/bootstrapValidator.js');
               $.getScript('js/bootstrapValidatorRemote.js');
//               $.getScript('css/bootstrap.css');
               $.getScript('css/bootstrapValidator.css');
               if(currentHeaderClick == 'login'){
                   $('#exampleModal-login').modal();
               }else if(currentHeaderClick == 'register'){
                   $('#exampleModal-register').modal();
               }
           }
        });

        //加载导航条
        if($('#menu').length>0){
            $('#menu').load('dropdown-menu.aspx #menu-col');
        }

        //加载旋转木马
        if($('#carousel').length > 0){
            $('#carousel').load('index-carousel.aspx #carousel-example-generic');
        }
    });
})(jQuery);