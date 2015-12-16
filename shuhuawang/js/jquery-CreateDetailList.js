/**
 * Created by XiaoDong on 2015/12/9.
 */
(function($){
    $.widget('ljq.detaillist',{
//        options:{
//            href:'index-zx-detail.html',
//            src:'images/zx-01.png',
//            title:'宫粧御翠，梵花见深',
//            detail:'此件成化宫碗口沿微撇，弧腹，圈足;整体形制隽秀蕴藉。通体外壁以青花为雅饰，淡蓝宜漫抹，舒雅亦有致。外壁描绘缠枝宝相花纹，枝叶蜿蜒曲回，宝相花争相竞妍，柔瓣散舒，幽芳...',
//            date:'2015/11/26'
//        },
        _create:function(){
            this._row = $('<div></div>').addClass('row');
            this._col = $('<div></div>')
                .addClass('col-sm-12 zx-container');
            this._image = $('<div></div>')
                .addClass('zx-photo zx-image')
                .append(
                $('<a></a>')
                    .attr({
                    href:this.options.href
                })
                    .append($('<img>').attr({
                        src:this.options.src
                    }))
            );
            this._title = $('<div></div>')
                .addClass('zx-photo zx-title')
                .append(
                $('<a></a>')
                    .attr({
                        href:this.options.href
                    })
                    .text(this.options.title)
            );
            this._detail = $('<div></div>')
                .addClass('zx-photo zx-detail')
                .text(this.options.detail)
                .append(
                $('<a></a>')
                    .attr({
                        href:this.options.href
                    })
                    .text('[详情]')
            );
            this._date = $('<div></div>')
                .addClass('zx-photo zx-date')
                .text(this.options.date);
            this._col
                .append(this._image)
                .append(this._title)
                .append(this._detail)
                .append(this._date);
            this._row
                .append(this._col)
                .insertBefore(this.element);
        }
    });
})(jQuery);