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
        <div class="col-sm-12" style="padding-top:20px;">
            <div class="bs-example" data-example-id="simple-horizontal-form">
                <form id="defaultForm" method="post" class="form-horizontal" action="handler/GetDataHandler.ashx">
                    <div class="form-group">
                        <label class="col-lg-3 control-label">一级菜单</label>
                        <div class="col-lg-5">
                            <div class="input-group">
                                <div class="input-group-btn">
                                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Action<span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                      <li><a href="#">Action</a></li>
                                      <li><a href="#">Another action</a></li>
                                      <li><a href="#">Something else here</a></li>
                                      <li role="separator" class="divider"></li>
                                      <li><a href="#">Separated link</a></li>
                                    </ul>
                                </div>
                                <input type="text" class="form-control" name="firstMenuName" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">二级级菜单</label>
                        <div class="col-lg-5">
                            <input type="text" class="form-control" name="secondMenuName" />
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
        <div class="col-sm-12">
             <div class="bs-example bs-example-1" data-example-id="simple-horizontal-form">
             </div>
        </div>
        <div class="col-sm-12">
            <div class="bs-example bs-example-2" data-example-id="simple-horizontal-form">
                <form id="defaultForm1" method="post" class="form-horizontal" action="handler/GetDataHandler.ashx">
                    <div class="form-group">
                        <label class="col-lg-3 control-label">一级菜单</label>
                        <div class="col-lg-5">
                            <div class="input-group">
                                <input type="text" class="form-control" name="firstMenuName" disabled  value="新闻"/>
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button" data-toggle="tooltip" data-placement="right" title="删除当前一级菜单" ><span class="glyphicon glyphicon-remove"></span></button>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">二级级菜单</label>
                        <div class="col-lg-5">
                            <div class="input-group">
                                <input type="text" class="form-control" name="secondMenuName"  disabled  value="展讯"/>
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button" data-toggle="tooltip" data-placement="right" title="删除当前二级菜单" ><span class="glyphicon glyphicon-remove"></span></button>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">链接地址</label>
                        <div class="col-lg-5">
                            <input type="text" class="form-control" name="menuURL"  value="index-zx.aspx"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-9 col-lg-offset-3">
                            <button type="submit" class="btn btn-primary" name="signup" value="Sign up">创建</button>
                            <button type="button" class="btn btn-info" id="resetBtn1">重置</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        /**
 * Created by XiaoDong on 2015/12/13.
 */
        $(document).ready(function () {
            // Generate a simple captcha
            function randomNumber(min, max) {
                return Math.floor(Math.random() * (max - min + 1) + min);
            };
            $('#captchaOperation').html([randomNumber(1, 100), '+', randomNumber(1, 200), '='].join(' '));

            $('#defaultForm1').bootstrapValidator({
                //        live: 'disabled',
                message: 'This value is not valid',
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {                   
                    menuURL: {
                        validators: {
                            notEmpty: {
                                message: '链接地址不能为空'
                            }
                        }
                    }
                }
            });

            // Validate the form manually
            $('#validateBtn1').click(function () {
                $('#defaultForm1').bootstrapValidator('validate');
            });

            $('#resetBtn1').click(function () {
                $('#defaultForm1').data('bootstrapValidator').resetForm(true);
            });

            //$('#validateBtn1').click(function () {
            //    $('#defaultForm1').bootstrapValidator('validate');
            //});

            //$('#resetBtn1').click(function () {
            //    $('#defaultForm1').data('bootstrapValidator').resetForm(true);
            //});
        });

    </script>
</body>
</html>
