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
          .colContainer {
              border-right:1px solid black;
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
            <div class="col-sm-6 bs-callout-info">
                <%--<div class="bs-example" data-example-id="simple-horizontal-form">--%>
                <div class="alert alert-info" role="alert">操作一级菜单（增删改）</div>
                    <form id="defaultFormF" method="post" class="form-horizontal">
                        <div class="form-group">
                            <label class="col-lg-3 control-label">一级菜单</label>
                            <div class="col-lg-5">
                                <div id="first-Menu-Drop-down" class="first-Menu-Drop-down">
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <button type="button" class="btn btn-danger" id="deleteFMenu">删除一级菜单</button>
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
                            <div class="checkbox col-lg-offset-3">
                                <label style="padding-left:35px;">
                                  <input type="checkbox" name="freezeMenu" id="freezeFirstMenu" /> 是否冻结
                                </label>
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
            <div class="col-sm-6 ">
                <div class="alert alert-info" role="alert">操作二级菜单（增删改）</div>
                <form id="defaultFormS" method="post" class="form-horizontal">
                    <div class="form-group">
                        <label class="col-lg-3 control-label">一级菜单</label>
                        <div class="col-lg-5">
                            <div id="second-Menu-Drop-down">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">二级菜单</label>
                        <div class="col-lg-5">
                            <div id="second-level-Drop-down">
                                <input type="text" class="form-control" name="secondMenuName" id="secondMenuName" />
                            </div>                          
                        </div>
                        <div class="col-lg-2">
                            <button type="button" class="btn btn-danger" id="deleteSMenu">删除二级菜单</button>
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
                                <input type="text" class="form-control" name="secondMenuPower" id="secondMenuPower"/>
                            </div><!-- /input-group -->
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">链接地址</label>
                        <div class="col-lg-5">
                            <input type="text" class="form-control" name="secondMenuNameUrl" id="secondMenuNameUrl" value="index-zx.aspx" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="checkbox col-lg-offset-3">
                            <label style="padding-left:35px;">
                                <input type="checkbox" name="freezeMenu" id="freezeSecondMenu" /> 是否冻结
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-9 col-lg-offset-3">
                            <button type="submit" class="btn btn-primary" name="signup" value="Sign up" id="Button1">提交</button>
                            <button type="button" class="btn btn-info" id="defaultFormSresetBtn">重置</button>
                        </div>
                    </div>
                </form>
                <div class="alert alert-success messageShow" role="alert" id="secondMenuSuccess">
                    <strong>操作成功！</strong>
                </div>
                <div class="alert alert-warning messageShow" role="alert" id="secondMenuFail">
                    <strong>操作失败！</strong>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 bs-callout-info-order" id="fMenuOrder">
                <div class="alert alert-info" role="alert">操作一级菜单（拖动排序）</div>
                <div class="col-lg-6 col-lg-offset-2 menuOrder">
                     <ul id="sortableF" class="sortable">
<%--                        <li class="ui-state-default">Item 1</li>
                        <li class="ui-state-default">Item 2</li>
                        <li class="ui-state-default">Item 3</li>
                        <li class="ui-state-default">Item 4</li>
                        <li class="ui-state-default">Item 5</li>--%>
                    </ul>
                    <div class="alert alert-success messageShow" role="alert" id="saveOrderFSuccess">
                        <strong>操作成功！</strong>
                    </div>
                    <div class="alert alert-warning messageShow" role="alert" id="saveOrderFFail">
                        <strong>操作失败！</strong>
                    </div>
                </div>
                <div class="col-lg-4">
                    <button type="button" class="btn btn-primary" id="saveOrderF">保存</button>
                </div>

            </div>
            <div class="col-sm-6" style="display:none;" id="sMenuOrder">
                <div class="alert alert-info" role="alert">操作二级菜单（拖动排序）</div>
                <div class="col-lg-6 col-lg-offset-2 menuOrder">
                     <ul id="sortableS" class="sortable">
<%--                        <li class="ui-state-default">Item 1</li>
                        <li class="ui-state-default">Item 2</li>
                        <li class="ui-state-default">Item 3</li>
                        <li class="ui-state-default">Item 4</li>
                        <li class="ui-state-default">Item 5</li>--%>
                    </ul>
                    <div class="alert alert-success messageShow" role="alert" id="saveOrderSSuccess">
                        <strong>操作成功！</strong>
                    </div>
                    <div class="alert alert-warning messageShow" role="alert" id="saveOrderSFail">
                        <strong>操作失败！</strong>
                    </div>
                </div>
                <div class="col-lg-4">
                    <button type="button" class="btn btn-primary" id="saveOrderS">保存</button>
                </div>

            </div>
        </div>
<%--        <div class="row" style="padding-bottom:20px;">
            <button type="button" class="btn btn-primary btn-lg btn-block" id="refresh">刷新页面</button>
        </div>--%>
        <%--弹出框--%>
        <div class="modal fade" role="dialog" aria-labelledby="gridSystemModalLabel" id="warningModal">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="gridSystemModalLabel">警告信息</h4>
              </div>
              <div class="modal-body">
                <div class="container-fluid">
                  
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-danger" id="deleteMenuTrue">确定删除</button>
              </div>
                <div class="alert alert-success messageShow" role="alert" id="deleteMenuSuccess">
                    <strong>操作成功！</strong>
                </div>
                <div class="alert alert-warning messageShow" role="alert" id="deleteMenuFail">
                    <strong>操作失败！</strong>
                </div>
            </div><!-- /.modal-content -->
          </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->          
    </div>
    <script type="text/javascript">
        /**
 * Created by XiaoDong on 2015/12/13.
 */
        $(document).ready(function () {
            //一级菜单校验
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
                    },
                    frezzMenu:{
                        validators: {
                        }
                    }
                }
            }).on('success.form.bv', firstSubmitFun);
            //二级菜单校验
            $('#defaultFormS').bootstrapValidator({
                //        live: 'disabled',
                message: 'This value is not valid',
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                    secondMenuPower: {
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
                    secondMenuLevelName: {
                        validators: {
                            notEmpty: {
                                message: '一级级菜单不能为空'
                            }
                        }
                    },
                    secondMenuName: {
                        validators: {
                            notEmpty: {
                                message: '二级级菜单不能为空'
                            }
                        }
                    },
                    secondMenuNameUrl: {
                        validators: {
                        }
                    }
                }
            }).on('success.form.bv', secondSubmitFun);


            //$('#validateBtn1').click(function () {
            //    $('#defaultForm1').bootstrapValidator('validate');
            //});

            //$('#resetBtn1').click(function () {
            //    $('#defaultForm').data('bootstrapValidator').resetForm(true);
            //});
            $('#defaultFormFresetBtn').click(function () {
                $('#defaultFormF').data('bootstrapValidator').resetForm(true);
            });
            $('#defaultFormSresetBtn').click(function () {
                $('#defaultFormS').data('bootstrapValidator').resetForm(true);
            });
            $(".sortable").sortable({
                revert: true
            });
            //$("ul, li").disableSelection();
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
