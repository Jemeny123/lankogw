"use strict";function isTest(){return isUserName()&&isPass()}function isUserName(){if(""==$("#sjh").val())return!1;return!!/^[a-zA-Z_]\w{1,9}$/.test($("#sjh").val())}function isPass(){if(""==$("#mm").val())return!1;return!!/^\d{6,16}$/.test($("#mm").val())}var hasUser=!1;function hasUserBack(){$.get("checkUser.php",{username:$("#sjh").val()},function(s){hasUser="0"==s?($("#p1").html("亲，该用户名已经存在，请重新思考！"),$("#p1").css({color:"red"}),!0):($("#p1").html("亲，该用户名可以使用，赶紧注册吧！"),$("#p1").css({color:"green"}),!1)})}$(function(){$("#sjh").blur(function(){0!=isUserName()?hasUserBack():$("#p1").html("亲，用户名的格式不正确！")}),$("#mm").blur(function(){0!=isPass()?$("#p2").html("√"):$("#p2").html("亲，密码格式不正确\t！")}),$("#ljzc").click(function(){0!=isTest()?hasUser||$.post("addUser.php",{username:$("#sjh").val(),userpass:$("#mm").val()},function(s){"success"==s?($("#h3").css({color:"green"}),$("#h3").html("恭喜您，注册成功！2秒后跳转到<a href='denglu.html'>登录</a>页面"),setTimeout(function(){location.href="denglu.html"},2e3)):"fail"==s?($("#h3").css({color:"red"}),$("#h3").html("不好意思，注册失败!")):($("#h3").css({color:"red"}),$("#h3").html("不好意思，服务器出问题了!"))}):$("#h3").html("亲，您的信息输入不全")})});