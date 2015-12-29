/**
 * Created by XiaoDong on 2015/12/13.
 */
$(document).ready(function() {
    // Generate a simple captcha
    function randomNumber(min, max) {
        return Math.floor(Math.random() * (max - min + 1) + min);
    };
    $('#captchaOperation').html([randomNumber(1, 100), '+', randomNumber(1, 200), '='].join(' '));

    $('#defaultForm').bootstrapValidator({
        //        live: 'disabled',
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            firstName: {
                validators: {
                    notEmpty: {
                        message: 'The first name is required and cannot be empty'
                    }
                }
            },
            lastName: {
                validators: {
                    notEmpty: {
                        message: 'The last name is required and cannot be empty'
                    }
                }
            },
            username: {
                message: 'The username is not valid',
                validators: {
                    notEmpty: {
                        message: '用户名不能为空'
                    },
                    stringLength: {
                        min: 6,
                        max: 30,
                        message: '用户名必须在6到30个字符之间，以数字、字母或下划线开头'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_\.]+$/,
                        message: '用户名只能由字母、数字、点和下划线组成'
                    },
                    remote: {
                        url: 'handler/GetDataHandler.ashx',
                        type: 'post',
                        //async: 'false',
                        data: {
                            cmd: 'checkFirstMenuName',
                            menuName: function (validator) {
                                return $('#menuForm :input[name="FirstMenuName"]').val();

                            }
                        },
                        message: '菜单名称已经存在'
                    },
                    different: {
                        field: 'password',
                        message: '用户名和密码不能相同'
                    }
                }
            },
            email: {
                validators: {
                    emailAddress: {
                        message: '您输入的不是有效的电子邮件地址'
                    },
                    notEmpty:{
                        message: '邮箱不能为空'
                    }
                }
            },
            password: {
                validators: {
                    notEmpty: {
                        message: '密码不能为空'
                    },
                    identical: {
                        field: 'confirmPassword',
                        message: '密码和确认密码不一致'
                    },
                    different: {
                        field: 'username',
                        message: '密码和用户名不能相同'
                    }
                }
            },
            confirmPassword: {
                validators: {
                    notEmpty: {
                        message: '确认密码不能为空'
                    },
                    identical: {
                        field: 'password',
                        message: '密码和确认密码不一致'
                    },
                    different: {
                        field: 'username',
                        message: '密码和用户名不能相同'
                    }
                }
            },
            captcha: {
                validators: {
                    callback: {
                        message: '答案错误',
                        callback: function(value, validator) {
                            var items = $('#captchaOperation').html().split(' '), sum = parseInt(items[0]) + parseInt(items[2]);
                            return value == sum;
                        }
                    }
                }
            },
            firstMenuName: {
                validators: {
                    notEmpty: {
                        message: '一级菜单不能为空'
                    }
                    //remote: {
                    //    url: 'handler/GetDataHandler.ashx',
                    //    type: 'post',
                    //    async: 'false',
                    //    data: {
                    //        cmd: 'checkMenuName',
                    //        menuName: function (validator) {
                    //            return $('#menuForm :input[name="FirstMenuName"]').val();
                    //        }
                    //    },
                    //    //delay:2000,
                    //    message: '菜单名称已经存在'

                    //}
                }
            },
            secondMenuName: {
                validators: {
                    notEmpty: {
                        message: '二级菜单不能为空'
                    },
                    remote: {
                        url: 'handler/GetDataHandler.ashx',
                        type: 'post',
                        async: 'false',
                        data: {
                            cmd: 'checkMenuName',
                            menuName: function (validator) {
                                return $('#menuForm :input[name="secondMenuName"]').val();
                            }
                        },
                        //delay:2000,
                        message: '一级菜单下已存在该二级菜单'

                    }
                }
            },
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
    $('#validateBtn').click(function() {
        $('#defaultForm').bootstrapValidator('validate');
    });

    $('#resetBtn').click(function() {
        $('#defaultForm').data('bootstrapValidator').resetForm(true);
    });

    //$('#validateBtn1').click(function () {
    //    $('#defaultForm1').bootstrapValidator('validate');
    //});

    //$('#resetBtn1').click(function () {
    //    $('#defaultForm1').data('bootstrapValidator').resetForm(true);
    //});
});
