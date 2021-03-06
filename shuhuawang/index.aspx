﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="shuhuawang.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head lang="zh-CN">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title></title>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/jquery-ui.js"></script>
    <script type="text/javascript" src="js/jquery-create_menu.js"></script>
    <script type="text/javascript" src="js/customer.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/jquery-ui.css"/>
    <link rel="stylesheet" href="css/normalize.css"/>
    <!--<link rel="stylesheet" href="css/menu.css">-->
    <link rel="stylesheet" href="css/customer.css"/>
    <link rel="icon" href="images/toubiao.png" />
</head>
<body>
<%--登录和注册位置--%>
<div id="login-register"></div>
<!--页头-->
<div id="header"></div>
<div class="container">
    <!--第一行图片-->
    <div class="row">
        <div class="col-sm-12" id="header-pictrue">
            <img src="images-header/01.png" class="img-responsive img-rounded" title=""/>
<%--            <img src="images-header/02.png" class="img-responsive img-rounded" title="">--%>
        </div>
    </div>
    <!--菜单-->
    <div class="row" id="menu"></div>
    <!--旋转木马，新闻头条-->
    <div class="row">
        <!--旋转木马-->
        <div class="col-sm-8">
            <!--旋转木马-->
            <div id="carousel"></div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="news-container">
                        <div class="news-title">新闻头条</div>
                        <div class="news-content">
                            <a href="#"><h3>2015年秋季拍卖会将于12月4日举行</h3></a>
                            <p>蘇富比今秋继续聚焦京城，将于12月4至5日在国贸大酒店举行北京秋季拍卖会。「现当代中国艺术拍卖」将于12月5日举...</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--右侧标签-->
        <div class="col-sm-4" id="right-tab"></div>
    </div>
    <div class="row picture-show-title">
        <div class="col-sm-2 history-class">
            <a><h4>古代绘画</h4></a>
        </div>
        <div class="col-sm-4 col-sm-offset-6 history-country">
            <a href="#">隋唐|</a>
            <a href="#">五代|</a>
            <a href="#">辽.宋.金|</a>
            <a href="#">元代|</a>
            <a href="#">明代|</a>
            <a href="#">清代</a>
        </div>
    </div>
    <div class="row picture-show-container">
        <div class="col-sm-4">
            <div class="photo1">
                <div class="photo1-picture">
                    <img src="images/picture1.jpg">
                </div>
                <div class="details">
                    <a href="#">黄居寀 山鹧棘雀图</a>
                </div>
            </div>
            <div class="photo1">
                <div class="photo1-picture">
                    <img src="images/picture1.jpg">
                </div>
                <div class="details">
                    <a href="#">黄居寀 山鹧棘雀图</a>
                </div>
            </div>
            <div class="photo1">
                <div class="photo1-picture">
                    <img src="images/picture1.jpg">
                </div>
                <div class="details">
                    <a href="#">黄居寀 山鹧棘雀图</a>
                </div>
            </div>
            <div class="photo1">
                <div class="photo1-picture">
                    <img src="images/picture1.jpg">
                </div>
                <div class="details">
                    <a href="#">黄居寀 山鹧棘雀图</a>
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="photo2">
                <div class="photo1-picture">
                    <img src="images/picture2.png">
                </div>
                <div class="details">
                    <a href="#">黄居寀 山鹧棘雀图</a>
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="photo1">
                <div class="photo1-picture">
                    <img src="images/picture1.jpg">
                </div>
                <div class="details">
                    <a href="#">黄居寀 山鹧棘雀图</a>
                </div>
            </div>
            <div class="photo1">
                <div class="photo1-picture">
                    <img src="images/picture1.jpg">
                </div>
                <div class="details">
                    <a href="#">黄居寀 山鹧棘雀图</a>
                </div>
            </div>
            <div class="photo1">
                <div class="photo1-picture">
                    <img src="images/picture1.jpg">
                </div>
                <div class="details">
                    <a href="#">黄居寀 山鹧棘雀图</a>
                </div>
            </div>
            <div class="photo1">
                <div class="photo1-picture">
                    <img src="images/picture1.jpg">
                </div>
                <div class="details">
                    <a href="#">黄居寀 山鹧棘雀图</a>
                </div>
            </div>
        </div>
    </div>
    <div class="row picture-show-title">
        <div class="col-sm-2 history-class">
            <a><h4>古代书法</h4></a>
        </div>
        <div class="col-sm-4 col-sm-offset-6 history-country">
            <a href="#">魏晋南北朝|</a>
            <a href="#">隋唐|</a>
            <a href="#">宋·辽·金|</a>
            <a href="#">元代|</a>
            <a href="#">明代|</a>
            <a href="#">清代</a>
        </div>
    </div>
    <div class="row picture-show-container">
        <div class="col-sm-12">
            <div class="photo1-2">
            <div class="photo1-picture">
                <img src="images/picture3.jpg">
            </div>
            <div class="details">
                <a href="#">黄居寀 山鹧棘雀图</a>
            </div>
        </div>
            <div class="photo1-2">
                <div class="photo1-picture">
                    <img src="images/picture3.jpg">
                </div>
                <div class="details">
                    <a href="#">黄居寀 山鹧棘雀图</a>
                </div>
            </div>
            <div class="photo1-2">
                <div class="photo1-picture">
                    <img src="images/picture3.jpg">
                </div>
                <div class="details">
                    <a href="#">黄居寀 山鹧棘雀图</a>
                </div>
            </div>
            <div class="photo1-2">
                <div class="photo1-picture">
                    <img src="images/picture3.jpg">
                </div>
                <div class="details">
                    <a href="#">黄居寀 山鹧棘雀图</a>
                </div>
            </div>
            <div class="photo1-2">
                <div class="photo1-picture">
                    <img src="images/picture3.jpg">
                </div>
                <div class="details">
                    <a href="#">黄居寀 山鹧棘雀图</a>
                </div>
            </div>
            <div class="photo1-2">
                <div class="photo1-picture">
                    <img src="images/picture3.jpg">
                </div>
                <div class="details">
                    <a href="#">黄居寀 山鹧棘雀图</a>
                </div>
            </div>
            <div class="photo1-2">
                <div class="photo1-picture">
                    <img src="images/picture3.jpg">
                </div>
                <div class="details">
                    <a href="#">黄居寀 山鹧棘雀图</a>
                </div>
            </div>
            <div class="photo1-2">
                <div class="photo1-picture">
                    <img src="images/picture3.jpg">
                </div>
                <div class="details">
                    <a href="#">黄居寀 山鹧棘雀图</a>
                </div>
            </div>
            <div class="photo1-2">
                <div class="photo1-picture">
                    <img src="images/picture3.jpg">
                </div>
                <div class="details">
                    <a href="#">黄居寀 山鹧棘雀图</a>
                </div>
            </div>
            <div class="photo1-2">
                <div class="photo1-picture">
                    <img src="images/picture3.jpg">
                </div>
                <div class="details">
                    <a href="#">黄居寀 山鹧棘雀图</a>
                </div>
            </div>
        </div>
    </div>
</div>
<%--页脚--%>
<div id="footer"></div>
</body>
</html>
