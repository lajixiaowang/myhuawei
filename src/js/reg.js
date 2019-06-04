$(function() {
    var spanuser = $('<span style="margin-left:30px;"></span>');
    var spanpwd = $('<span style="margin-left:30px;"></span>');
    var spaneml = $('<span style="margin-left:30px;"></span>');
    var spansex = $('<span style="margin-left:30px;"></span>');
    var btn = $('.btn');
    var user = $('#username');
    var pwd = $('#password');
    var email = $('#email');
    var sex = $('#sex');
    var flag1 = false;
    var flag2 = false;
    var flag3 = false;
    var flag4 = false;
    var regpwd = /^\w{6,10}$/;
    var regeml = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
    var regsex = /^0|1$/;
    $('#username').after(spanuser);
    $('#password').after(spanpwd);
    $('#email').after(spaneml);
    $('#sex').after(spansex);

    $('#username').on('keyup', function() {
        $.ajax({
            type: "get",
            url: "../php/reg.php",
            data: {
                "username": $(this).val()
            },
            dataType: "json",
            success: function(data) {
                $('ul>li:first-of-type').css('margin-bottom', "30px ");
                if (data.has) {
                    flag1 = false;
                    spanuser.html(data.mes).css('color', 'red');
                } else {
                    flag1 = true;
                    //console.log(flag1);
                    spanuser.html(data.mes).css('color', 'green');
                }
            }
        });

    });
    $('#password').on('keyup', function() {
        if (!regpwd.test($(this).val())) {
            flag2 = false;
            $('ul>li:nth-of-type(2)').css('margin-bottom', "30px ");
            spanpwd.html('密码在6~8位，old iron').css('color', 'red');
        } else {
            flag2 = true;
            //console.log(flag2);
            spanpwd.html('good，密码设置成功').css('color', 'green');
        }
    });
    $('#email').on('keyup', function() {
        if (!regeml.test($(this).val())) {
            flag3 = false;
            $('ul>li:nth-of-type(3)').css('margin-bottom', "30px ");
            spaneml.html('输入正确的邮箱格式，old iron').css('color', 'red');
        } else {
            flag3 = true;
            //console.log(flag3);
            spaneml.html('邮箱设置ok了').css('color', 'green');
        }
    });
    $('#sex').on('focus', function() {
        $('ul>li:nth-of-type(4)').css({
            'margin-bottom': "30px ",
            'font-size': '16px'
        });
        spansex.html('BOY输入数字1;GRIL输入数字0').css('color', 'red');
    });

    $('#sex').on('blur', function() {
        if (regsex.test($(this).val())) {
            //console.log($(this).val());
            flag4 = true;
            //console.log(flag4);
            spansex.html('性别设置正确').css('color', 'green');
        } else {
            flag4 = false;
            spansex.html('性别输入错误').css('color', 'red');
        }
    })
    btn.on('click', function() {
        console.log(flag1, flag2, flag3, flag4);
        var flag = (flag4 == true && flag1 == true && flag2 == true && flag3 == true);
        //console.log(Boolean(flag4 && flag1 && flag2 && flag3));
        console.log(flag);
        if (flag == false) {
            btn.attr('disabled', 'disabled');
            var spanempty = $('<span></span>');
            btn.after(spanempty);
            spanempty.html('内容为空或格式不正确').css('color', 'red');
            console.log(11111);
        }

    });

    $('ul').on('blur', "li", function() {
        var flag = (flag4 == true && flag1 == true && flag2 == true && flag3 == true);
        if (flag == true) {
            btn.removeAttr('disabled');

        }
    })


});