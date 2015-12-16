<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dropdown-menu.aspx.cs" Inherits="shuhuawang.dropdown_menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head lang="en">
    <meta charset="UTF-8">
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css">
    <title></title>
    <style type="text/css">
        #menu-col{
            background-color: #398FC7;
        }
    </style>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-sm-12" id="menu-col">
<div class="bs-example">
    <nav id="navbar-example" class="navbar navbar-default navbar-static">
        <div class="container-fluid">
            <div class="navbar-header">
                <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".bs-example-js-navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.aspx">首页</a>
            </div>
            <div class="navbar-collapse bs-example-js-navbar-collapse collapse in" aria-expanded="true">
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a id="drop1" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                            新闻
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="drop1">
                            <li><a href="index-zx.aspx">展讯</a></li>
                            <li><a href="#">快讯</a></li>
                            <li><a href="#">国内</a></li>
                            <li><a href="#">国际</a></li>
                            <!--<li role="separator" class="divider"></li>-->
                        </ul>
                    </li>
                    <li><a href="#">展览</a></li>
                    <li class="dropdown">
                        <a id="drop2" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                            书画
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="drop2">
                            <li><a href="#">古代绘画</a></li>
                            <li><a href="#">古代书法</a></li>
                            <li><a href="#">近现代书画</a></li>
                            <li><a href="#">当代书画</a></li>
                            <li><a href="#">油画雕术</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="index-luntan.aspx">论坛</a></li>
                </ul>
            </div><!-- /.nav-collapse -->
        </div><!-- /.container-fluid -->
    </nav> <!-- /navbar-example -->
</div>
</div>
</div>
</div>
</body>
</html>
