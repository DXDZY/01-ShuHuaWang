<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index-zx.aspx.cs" Inherits="shuhuawang.index_zx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/jquery-ui.js"></script>
    <script type="text/javascript" src="js/jqPaginator.js"></script>
    <script type="text/javascript" src="js/myPage.js"></script>
    <script type="text/javascript" src="js/customer.js"></script>
    <script type="text/javascript" src="js/jquery-CreateDetailList.js"></script>

    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/normalize.css">
    <!--<link rel="stylesheet" href="css/menu.css">-->
    <link rel="stylesheet" href="css/customer.css">
    <link rel="stylesheet" href="css/myPage.css">
</head>
<body>
<%--登录和注册位置--%>
<div id="login-register"></div>
<!--页头-->
<div id="header"></div>
<div class="container">
    <div class="row">
        <div class="col-sm-3" style="padding-top: 30px;">
            <a href="#">
                <img src="images/title.png" class="img-responsive" title=""></a>
        </div>
    </div>
    <div class="row" id="menu">
    </div>
    <div class="row pager">
        <div class="col-sm-12">
            <div>
                <ul class="pagination" id="pagination">
                </ul>
                <input type="hidden" id="PageCount" runat="server" value="89" />
                <input type="hidden" id="PageSize" runat="server" value="8" />
                <input type="hidden" id="countindex" runat="server" value="10"/>
                <!--设置最多显示的页码数 可以手动设置 默认为7-->
                <input type="hidden" id="visiblePages" runat="server" value="6" />
            </div>
        </div>
    </div>
</div>
<%--页脚--%>
<div id="footer"></div>
</body>
</html>
