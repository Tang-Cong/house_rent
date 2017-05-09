<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link type="text/css" rel="stylesheet" href="${ pageContext.request.contextPath }/style/reset.css">
	<link type="text/css" rel="stylesheet" href="${ pageContext.request.contextPath }/style/main.css">
	<script type="text/javascript" src="${ pageContext.request.contextPath }/jQuery/jquery-3.1.1.js"></script>
	<script type="text/javascript" src="${ pageContext.request.contextPath }/jQuery/jquery.validate-1.13.1.js"></script>
	<script type="text/javascript">
	var validator1;
    $(document).ready(function () {
        // $.validator.setDefaults({
        //      debug: true,   表单只检查不提交
        // });
        validator1 = $("#demoForm").validate({
            rules: {        //隐藏了depends属性
                uname: { //这里的username是根据input属性里的name值来取的，不是id！
                    required: true,
                    minlength: 2,
                    maxlength: 10,
                    //rangelength: [2,10]     //规定字符串长度在2到10之间
                    //email: true
                    //url: true
                    //date: true
                    //number: true
                    //digits: true
                },
                password: {
                    required: true,
                    minlength: 2,
                    maxlength: 16
                }
                // "confirm-password": {   //因为这个id有横杠，所以要加上双引号
                //     equalTo: "#password"
                // }
            },
            messages: {
                uname: {
                    required: '请输入用户名',
                    minlength: '用户名不能小于2个字符',
                    maxlength: '用户名不能超过10个字符',
                    rangelength: '用户名应该在2到10位',
                    remote: '用户名不存在',
                    email: '请输入合法的邮箱格式',
                    url: '请输入合法的url格式',
                    date: '请输入一个有效的日期',
                    number: '请输入一个正确的数字',
                    digits: '请输入一个正确的整数'
                },
                password: {
                    required: '请输入密码',
                    minlength: '密码不能小于2个字符',
                    maxlength: '密码不能超过16个字符'
                }
                // "confirm-password": {
                //     equalTo: "两次输入密码不一致"
                // }

            },

            highlight: function(element, errorClass, validClass) {
                $(element).addClass(errorClass).removeClass(validClass);
                $(element).fadeOut().fadeIn();
            },
            unhighlight: function(element, errorClass, validClass) {
                $(element).removeClass(errorClass).addClass(validClass);
            },
            groups:{
                login: "uname password"
            },
            errorPlacement:function(error,element){         //与groups一起，把错误信息显示到id为info的属性中
                error.insertBefore("#info");
            },
            // focusInvalid:true        此时提交表单错误时，焦点会显示在第一个框

            // ignore: "#username"      不再验证username
        });
        // $.validator.addClassRules({ 
        //     txt:{                表示类名为txt的属性添加一个required为true的规则
        //         required:true;
        //     }
        // });
        // $("#check").click(function () {
        //     console.log($("#demoForm").valid() ? "填写正确" : "填写不正确");
        // });
    });
	</script>
  </head>
  
<body>
<div class="headerBar">
	<div class="logoBar login_logo">
		<div class="comWidth">

			<h3 class="welcome_title" align="center">欢迎登陆</h3>
		</div>
	</div>
</div>
<s:form id="demoForm" action="login" method="post" namespace="/">
<div align="center"><p id="info"></p></div>
<div class="loginBox">
	<h3><s:actionerror/></h3>
	<div class="login_cont">
		<ul class="login">
			<li class="l_tit">用户名</li>
			<li class="mb_10"><input type="text" id="uname" name="uname" class="login_input user_icon"></li>
			<li class="l_tit">密码</li>
			<li class="mb_10"><input type="password" id="password" name="password" class="login_input user_icon"></li>
			<li><input type="submit" value="" class="login_btn"></li>
			<li><input type="button" value="" class="reg_link" onclick="window.location.href='${ pageContext.request.contextPath }/register.action'" style="margin-left: 100px"></li>
		</ul>
		<div class="login_partners">
			<p class="l_tit">使用合作方账号登陆网站</p>
			<ul class="login_list clearfix">
				<li><a href="#">QQ</a></li>
				<li><span>|</span></li>
				<li><a href="#">网易</a></li>
				<li><span>|</span></li>
				<li><a href="#">新浪微博</a></li>
				<li><span>|</span></li>
				<li><a href="#">腾讯微薄</a></li>
				<li><span>|</span></li>
				<li><a href="#">新浪微博</a></li>
				<li><span>|</span></li>
				<li><a href="#">腾讯微薄</a></li>
			</ul>
		</div>
	</div>
	
</div>
</s:form>

<div class="hr_25"></div>
<div class="footer">
	<p><a href="#">慕课简介</a><i>|</i><a href="#">慕课公告</a><i>|</i> <a href="#">招纳贤士</a><i>|</i><a href="#">联系我们</a><i>|</i>客服热线：400-675-1234</p>
	<p>Copyright &copy; 2006 - 2014 慕课版权所有&nbsp;&nbsp;&nbsp;京ICP备09037834号&nbsp;&nbsp;&nbsp;京ICP证B1034-8373号&nbsp;&nbsp;&nbsp;某市公安局XX分局备案编号：123456789123</p>
	<p class="web"><a href="#"><img src="${ pageContext.request.contextPath }/images/webLogo.jpg" alt="logo"></a><a href="#"><img src="${ pageContext.request.contextPath }/images/webLogo.jpg" alt="logo"></a><a href="#"><img src="${ pageContext.request.contextPath }/images/webLogo.jpg" alt="logo"></a><a href="#"><img src="${ pageContext.request.contextPath }/images/webLogo.jpg" alt="logo"></a></p>
</div>
</body>
</html>
