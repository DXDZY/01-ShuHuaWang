<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu-back.aspx.cs" Inherits="shuhuawang.menu_back" %>

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
    <script type="text/javascript" src="js/bootstrapValidator.js"></script>
    <script type="text/javascript" src="js/bootstrapValidatorCustomer.js"></script>
    <script type="text/javascript" src="js/customer.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/jquery-ui.css"/>
    <link rel="stylesheet" href="css/normalize.css"/>
    <link rel="stylesheet" href="css/patch.css" />
    <link rel="stylesheet" href="css/docs.css" />
    <link rel="stylesheet" href="css/bootstrapValidator.css"/>
    <!--<link rel="stylesheet" href="css/menu.css">-->
    <link rel="stylesheet" href="css/customer.css"/>
    <link rel="icon" href="images/toubiao.png" />
</head>
<body>
    <div class="container">
        <div class="col-sm-12">
            <div class="bs-example" data-example-id="simple-horizontal-form">
                <form id="defaultForm" method="post" class="form-horizontal" action="handler/GetDataHandler.ashx">

                    <div class="form-group">
                        <label class="col-lg-3 control-label">一级菜单名称</label>
                        <div class="col-lg-5">
                            <input type="text" class="form-control" name="firstMenuName" />
                        </div>
                    </div>

                    

                    <div class="form-group">
                        <div class="col-lg-9 col-lg-offset-3">
                            <button type="submit" class="btn btn-primary" name="signup" value="Sign up">创建</button>
                            <button type="button" class="btn btn-info" id="resetBtn">重置</button>
                        </div>
                    </div>
                </form>
             </div>
        </div>
    </div>
</body>
</html>
