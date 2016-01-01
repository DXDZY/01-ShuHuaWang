/**
 * Created by XiaoDong on 2015/11/25.
 */
//加载页面
(function($){
    $(document).ready(function(){

        //tab
        $(function() {
            $( "#tabs" ).tabs({
                event: "mouseover"
            });
        });
        ////初始化tooltip
        $(function () { $("[data-toggle='tooltip']").tooltip(); });
        //同步
        $.ajaxSetup({
            async : false
        });
        //加载导航条
        if ($('#menu').length > 0) {
            var url = 'handler/GetDataHandler.ashx';
            var requestData = {
                cmd : 'getMenu',
                userPower : '0'
            };
            $.get(url, requestData, function (data) {
                if (data.length > 0) {
                    var dataJson = $.parseJSON(data);
                    $('#menu').menu({
                        data: dataJson
                    });
                }
            });
            //$('#menu').load('dropdown-menu.aspx #menu-col');
        }

        //加载旋转木马
        if($('#carousel').length > 0){
            $('#carousel').load('index-carousel.aspx #carousel-example-generic');
        }
        //加载页头和页脚
        if ($('#header').length > 0) {
            $('#header').load('header-footer.aspx .header');
        }
        if ($('#footer').length > 0) {
            $('#footer').load('header-footer.aspx .footer');
        }
        //加载首页右侧标签
        if ($('#right-tab').length > 0) {
            $('#right-tab').load('index-tab.aspx #index-tabs');
        }
        //菜单后台一级菜单下拉值初始化
        if ($('#first-Menu-Drop-down').length > 0) {
            var url = 'handler/GetDataHandler.ashx';
            var requestData = {
                cmd: 'getMenu',
                userPower: '0'
            };
            $.get(url, requestData, function (data) {
                if (data.length > 0) {
                    var dataJson = $.parseJSON(data);
                    var html = '';
                    $.each(dataJson, function (index, item) {
                        if (index == 0) {
                            return true;
                        }
                        if (index == 1) {
                            html += '<div class="input-group"><div class="input-group-btn"><button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">';
                            html += item.menu_cn_name;
                            html += '<span class="caret"></span></button><ul class="dropdown-menu">';
                        }                        
                        html += '<li><a style="cursor:pointer;">' + item.menu_cn_name + '</a></li>';
                    });
                    html += '</ul></div><input type="text"class="form-control"name="firstMenuName"/></div>';
                }
                $('#first-Menu-Drop-down').html(html);
            });            
        }
    });
})(jQuery);

//添加事件,及页面加在后添加数据
(function ($) {
    $(document).ready(function () {
        //启动旋转木马
        $('.carousel').carousel();
        //点击登录、注册
        if ($('.header-login').length > 0) {
            $('.header-login').click(function (event) {
                var showModal = false;
                var currentHeaderClick = '';
                if (event.target.id == 'login') {
                    $.ajaxSetup({
                        async: false
                    });
                    $('#login-register').load('login.aspx #exampleModal-login');
                    showModal = true;
                    currentHeaderClick = 'login';
                } else if (event.target.id == 'register') {
                    $.ajaxSetup({
                        async: false
                    });
                    $('#login-register').load('register.aspx #exampleModal-register');
                    showModal = true;
                    currentHeaderClick = 'register'
                }
                if (showModal) {
                    $.getScript('js/bootstrapValidator.js');
                    $.getScript('js/bootstrapValidatorRemote.js');
                    //               $.getScript('css/bootstrap.css');
                    $.getScript('css/bootstrapValidator.css');
                    if (currentHeaderClick == 'login') {
                        $('#exampleModal-login').modal();
                    } else if (currentHeaderClick == 'register') {
                        $('#exampleModal-register').modal();
                    }
                }
            });
        }
        //获取详情列表
        if ($('.pager').length > 0) {
            $.getJSON('data/detail.json', function (data) {
                $.each(data, function (index, item) {
                    $('.pager').detaillist(item);
                });
            });
        }
        //论坛页面
        $('.lt-title-right a').click(function () {
            var $this = $(this);
            var $img = $(this).find('img');
            if ($img.hasClass('collapsed_no')) {
                $img
                    .attr({
                        src: 'images/collapsed_yes.gif.png'
                    })
                    .removeClass()
                    .addClass('collapsed_yes');
                $this.closest('.lt-container-class').find('.lt-content').hide();
            } else {
                $img
                    .attr({
                        src: 'images/collapsed_no.gif.png'
                    })
                    .removeClass()
                    .addClass('collapsed_no');
                $this.closest('.lt-container-class').find('.lt-content').show();
            }

        });
        $('.lt-container-class').each(function (index, item) {
            var $item = $(item);
            var $content = $(item).find('.lt-content');
            if ($content.length > 1) {
                $content.each(function (index, item1) {
                    if (index == ($content.length - 1)) {
                        return false;
                    }
                    $(item1).css({
                        'border-bottom': '1px dashed #CDCDCD'
                    });
                })
            }
        });
        //菜单后台一级菜单下拉点击事件
        $('.dropdown-menu').on('click', 'a', function (event) {
            var $this = $(this);
            var $text = $this.text();
            var html = $text;
            html += '<span class="caret"></span>'
            $this.closest('ul').prev().html(html);
            $this.closest('.input-group-btn').next().val($text).trigger('keydown').focus();
        });
        
    });
})(jQuery);