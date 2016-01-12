/**
 * Created by XiaoDong on 2015/12/24.
 */
(function ($) {
    $.widget('shw.menu', {
        //options: {
            //offsetX: 10,
            //offsetY: 10,
            //effect: 'explode',
            //content: function () {
            //    return $(this).data('tooltip-text');
            //}
        //},
        _create: function () {
            var html = '<div class="col-sm-12"id="menu-col"><div class="bs-example"><nav id="navbar-example"class="navbar navbar-default navbar-static"><div class="container-fluid"><div class="navbar-header"><button class="navbar-toggle collapsed"type="button"data-toggle="collapse"data-target=".bs-example-js-navbar-collapse"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a class="navbar-brand"href="index.aspx">首页</a></div><div class="navbar-collapse bs-example-js-navbar-collapse collapse in"aria-expanded="true"><ul class="nav navbar-nav">';
            $.each(this.options.data, function (index, item) {
                //冻结不拼
                if (item.freeze == '1') return true;
                if (item.menu_id == "-1") return true;
                if (item.child == '') {
                    html += '<li><a href="' + item.menu_url + '">' + item.menu_cn_name + '</a></li>';
                }
                else if (item.child != '') {
                    
                    html += '<li class="dropdown">';
                    html += '<a id="drop' + (index + 1) + '"  href="' + item.menu_url + '" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">';
                    html += item.menu_cn_name;
                    html += '<span class="caret"></span>';
                    html += '</a>';
                    html += '<ul class="dropdown-menu" aria-labelledby="drop' + (index + 1) + '">'
                    $.each(item.child, function (childIndex, itemChild) {
                        if (itemChild.freeze == "1") return true;
                        html += '<li><a href="' + itemChild.menu_url + '">' + itemChild.menu_cn_name + '</a></li>';                       
                    });
                    html += '</ul>';
                    html += '</li>';
                }
            });
            html += '</ul></div><!--/.nav-collapse--></div><!--/.container-fluid--></nav><!--/navbar-example--></div></div>';
            this.element.html(html);
        }
    });
})(jQuery);