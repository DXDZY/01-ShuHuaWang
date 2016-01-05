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
    <script type="text/javascript" src="js/customer.js"></script>
    <script type="text/javascript" src="js/bootstrapValidator.js"></script>
    <%--<script type="text/javascript" src="js/bootstrapValidatorCustomer.js"></script>--%>
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/jquery-ui.css"/>
    <%--<link rel="stylesheet" href="css/normalize.css"/>--%>
    <%--<link rel="stylesheet" href="css/patch.css" />--%>
    <%--<link rel="stylesheet" href="css/docs.css" />--%>
    <link rel="stylesheet" href="css/bootstrapValidator.css"/>
    <!--<link rel="stylesheet" href="css/menu.css">-->
    <link rel="stylesheet" href="css/customer.css"/>
    <link rel="icon" href="images/toubiao.png" />
      <style>
          /*ul { list-style-type: none; margin: 0; padding: 0; margin-bottom: 10px; }
          li { margin: 5px; padding: 5px; width: 150px; }*/
          .bs-example-3 ul{
            list-style-type:none;
          }
          .first-menu-container {
              padding-top:20px;
          }
      </style>
</head>
<body>
    <div class="container">
        <%--<div class="row" id="menu"></div>--%>
        <div class="row">
            <div class="col-sm-12">
                <div class="row" id="menu"></div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <%--<div class="bs-example" data-example-id="simple-horizontal-form">--%>
                <div class="alert alert-info" role="alert">操作一级菜单（增删改）</div>
                    <form id="defaultFormF" method="post" class="form-horizontal">
                        <div class="form-group">
                            <label class="col-lg-3 control-label">一级菜单</label>
                            <div class="col-lg-5">
                                <div id="first-Menu-Drop-down">
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label">用户权限</label>
                            <div class="col-lg-5">
                                <div class="input-group">
                                    <div class="input-group-btn">
                                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">游客 <span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">游客</a></li>
                                        <li><a href="#">管理员</a></li>
                                    </ul>
                                    </div><!-- /btn-group -->
                                    <input type="text" class="form-control" name="firstMenuPower" id="firstMenuPower"/>
                                </div><!-- /input-group -->
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label">链接地址</label>
                            <div class="col-lg-5">
                                <input type="text" class="form-control" name="firstMenuNameUrl" id="firstMenuNameUrl" value="index-zx.aspx" />
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-lg-9 col-lg-offset-3">
                                <button type="submit" class="btn btn-primary" name="signup" value="Sign up" id="defaultFormFSubmit">提交</button>
                                <button type="button" class="btn btn-info" id="defaultFormFresetBtn">重置</button>
                            </div>
                        </div>
                    </form>
                <div class="alert alert-success messageShow" role="alert" id="firstMenuSuccess">
                    <strong>操作成功！</strong>
                </div>
                <div class="alert alert-warning messageShow" role="alert" id="firstMenuFail">
                    <strong>操作失败！</strong>
                </div>
                 <%--</div>--%>
            </div>
            <div class="col-sm-4">
                <div class="bs-example bs-example-3" data-example-id="simple-horizontal-form">
                    <ul id="sortable">
                        <li class="ui-state-default">Item 1</li>
                        <li class="ui-state-default">Item 2</li>
                        <li class="ui-state-default">Item 3</li>
                        <li class="ui-state-default">Item 4</li>
                        <li class="ui-state-default">Item 5</li>
                    </ul>
                    <button type="button" class="btn btn-primary">保存</button>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                 <div class="bs-example bs-example-1" data-example-id="simple-horizontal-form">
                 </div>
            </div>
        </div>
        <div class="row">
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
    </div>
    <script type="text/javascript">
        /**
 * Created by XiaoDong on 2015/12/13.
 */
        $(document).ready(function () {
            $('#defaultFormF').bootstrapValidator({
                //        live: 'disabled',
                message: 'This value is not valid',
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                    firstMenuPower: {
                        validators: {
                            notEmpty: {
                                message: '用户权限不能为空'
                            },
                            regexp: {
                                regexp: /^游客$|^管理员$/,
                                message: '权限值只能是游客或管理员'
                            }
                        }
                    },
                    firstMenuName: {
                        validators: {
                            notEmpty: {
                                message: '一级菜单不能为空'
                            }
                        }
                    },
                    firstMenuNameUrl: {
                        validators: {
                        }
                    }
                }
            }).on('success.form.bv', function (event) {
                event.preventDefault();
                var url = 'handler/GetDataHandler.ashx';
                var $this = $(this);
                var form = $this.serialize();
                var requestData = {
                    cmd: 'firstMenuSave',
                    form:form
                };
                $.post(url, requestData, function (result) {
                    if (result == '1') {
                        $('#firstMenuSuccess').show('slow');
                        setTimeout('hideMessageSuccess()', 3000);
                    } else {
                        $('#firstMenuFail').show('slow');
                        setTimeout('hideMessageFail()', 3000);
                    }
                    $this.find('[type=submit]').removeAttr('disabled');
                    // ... process the result ...
                });
            });
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
            $('#validateBtn1').click(function () {
                $('#defaultForm1').bootstrapValidator('validate');
            });

            $('#resetBtn1').click(function () {
                $('#defaultForm').data('bootstrapValidator').resetForm(true);
            });
            $('#defaultFormFresetBtn').click(function () {
                $('#defaultFormF').data('bootstrapValidator').resetForm(true);
            });
            $("#sortable").sortable({
                revert: true
            });
            $("ul, li").disableSelection();
            //$('#validateBtn1').click(function () {
            //    $('#defaultForm1').bootstrapValidator('validate');
            //});

            //$('#resetBtn1').click(function () {
            //    $('#defaultForm1').data('bootstrapValidator').resetForm(true);
            //});
        });
        function hideMessageSuccess() {
            $('.alert-success').hide('slow');
        }
        function hideMessageFail() {
            $('.alert-danger').hide('slow');
        }
    </script>
</body>
</html>
