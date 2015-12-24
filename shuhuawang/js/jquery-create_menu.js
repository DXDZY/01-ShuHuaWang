/**
 * Created by XiaoDong on 2015/12/24.
 */
(function ($) {
    $.widget('shw.menu', {
        options: {
            //offsetX: 10,
            //offsetY: 10,
            //effect: 'explode',
            //content: function () {
            //    return $(this).data('tooltip-text');
            //}
        },
        _create: function () {
            var html = '<div class="col-sm-12" id="menu-col">';
            html += '<div class="bs-example">';
            html += '<nav id="navbar-example" class="navbar navbar-default navbar-static">';
            html += '<div class="container-fluid">';
            html += '<div class="navbar-collapse bs-example-js-navbar-collapse collapse in" aria-expanded="true">';
            html += '<ul class="nav navbar-nav">';
            $.each(this.options.data, function (index, item) {
                if (item.child == '') {
                    html += '<li><a href="' + item.href + '">' + item.menu_cn_name + '</a></li>';
                }
                else if (item.child != '') {
                    html += '<li class="dropdown">';
                    html += '<a id="drop' + (index + 1) + '"  href="' + item.href + '" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">';
                    html += item.menu_cn_name;
                    html += '<span class="caret"></span>';
                    html += '</a>';
                    html += '<ul class="dropdown-menu" aria-labelledby="drop' + (index + 1) + '">'
                    $.each(item.child, function (childIndex, itemChild) {
                        html += '<li><a href="' + itemChild.href + '">' + itemChild.menu_cn_name + '</a></li>';
                    });
                    html += '</ul>';
                    html += '</li>';
                }
            });
            html += '</ul>';
            html += '</div>';
            html += '</div>';
            html += '</nav>';
            html += '</div>';
            html += '</div>';
            this.element.html(html);
        }
    });
})(jQuery);