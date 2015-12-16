<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="shuhuawang.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head lang="en">
    <meta charset="UTF-8">
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/bootstrapValidator.js"></script>
    <script type="text/javascript" src="js/bootstrapValidatorCustomer.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrapValidator.css">
    <title></title>
</head>
<body>
<button type="button" class="btn btn-primary btn-lg" id="showModal">
    Launch demo modal
</button>
<!--<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#exampleModal" id="showModal">-->
    <!--Launch demo modal-->
<!--</button>-->
<div class="modal fade bs-example-modal-lg" id="exampleModal-register" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="exampleModalLabel">立即注册</h4>
            </div>
            <div class="modal-body">
                <form id="defaultForm" method="post" class="form-horizontal" action="target.php">

                    <div class="form-group">
                        <label class="col-lg-3 control-label">用户名</label>
                        <div class="col-lg-5">
                            <input type="text" class="form-control" name="username" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label">邮箱</label>
                        <div class="col-lg-5">
                            <input type="text" class="form-control" name="email" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label">密码</label>
                        <div class="col-lg-5">
                            <input type="password" class="form-control" name="password" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label">确认密码</label>
                        <div class="col-lg-5">
                            <input type="password" class="form-control" name="confirmPassword" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label" id="captchaOperation"></label>
                        <div class="col-lg-2">
                            <input type="text" class="form-control" name="captcha" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-9 col-lg-offset-3">
                            <button type="submit" class="btn btn-primary" name="signup" value="Sign up">提交</button>
                            <button type="button" class="btn btn-info" id="resetBtn">重置</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <!--<button type="button" class="btn btn-primary">Send message</button>-->
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        //        $('#exampleModal').modal({
        //            'remote':'register.html #defaultForm',
        //            'show':false
        //        });
        $('#showModal').click(function (event) {
            $('#exampleModal-register').modal();
        });
    });
</script>
</body>
</html>
