<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="${ pageContext.request.contextPath }/bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">
	<script type="text/javascript" src="${ pageContext.request.contextPath }/jQuery/jquery-3.1.1.js"></script>
  	<script src="${ pageContext.request.contextPath }/bootstrap/js/bootstrap.js"></script>
	<style type="text/css">     
        body{
        	background: url("${ pageContext.request.contextPath }/images/5.jpg") no-repeat;
        	background-size: 100% 100%;
        	background-attachment: fixed;
        }
        h1{
        	display: block;
        	width: 200px;
        	height: 70px;
        	line-height: 70px;
        	margin: 0 auto;
        	color: white;
        }
        p{
        	color: white;
        }
       .font_style {
			font-family: "Arial","Microsoft YaHei","黑体","宋体",sans-serif;
			font-size: 30px;
			height: 45px;
			line-height: 35px;
		}
		.label1{
			color: #fff;
		}

    </style>   
    <script type="text/javascript">
    	function Reg()
    	{
    		var reg=/^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/;
    		var number= document.getElementById('number').value;
    		var tele = document.getElementById('tele').value;
/*     		var uname= document.getElementById('uname').value;
    		var password= document.getElementById('password').value; */
    		if(!reg.test(number))
    		{
    			alert("身份证号有误，请重填");
    			return false; 
    		}
    		 else if(!(/^1[34578]\d{9}$/.test(tele)))
		    { 
		        alert("手机号码有误，请重填");  
		        return false; 
   			 } 
   			 else
   			 	alert('注册成功!');
    	}
    </script>
	 </head>
  
<body>
<div>
<h1>用户添加</h1>
<br/>

<s:form id="saveForm" action="save" method="post" namespace="/" theme="simple" cssClass="form-horizontal">
<%-- <table border='0' cellpadding="0"  cellspacing="10" align="center">

	<tr>
		<td><p>姓名：</p></td>
		<td><s:textfield name="uname"/> </td>
	</tr>
	<tr>
		<td><p>密码：</p></td>
		<td><s:password name="password"/> </td>
	</tr>
	
	<tr>
		<td><p>身份证：</p></td>
		<td><s:textfield name="number" id="number"/> </td>
	</tr>
	<tr>
		<td><p>电话：</p></td>
		<td><s:textfield name="tele" id="tele"/> </td>	
	</tr>
	<tr>
		<td><s:hidden name="level" value="0"/> </td>
	</tr>
	<tr>
		<td>
			<s:submit value="提交" onclick="return Reg();"/>
		</td>
		<td align="right" > 
			<a href="javascript:history.go(-1)"><input type="button" value="退回 "></a>
		</td>
	</tr>
	
</table> --%>
	<s:hidden name="level" value="0"/>
    <div class="form-group">
      <label for="uname" class="col-sm-2 col-sm-offset-2 control-label font_style label1">姓名：</label>
      <div class="col-sm-4">
        <s:textfield name="uname" cssClass="form-control font_style" id="uname" placeholder="uname" />
      </div>
    </div>

    <div class="form-group">
      <label for="password" class="col-sm-2 col-sm-offset-2 control-label font_style label1">密码：</label>
      <div class="col-sm-4">
        <s:password name="password" cssClass="form-control font_style" id="password" placeholder="password" />
      </div>
    </div>

    <div class="form-group">
      <label for="number" class="col-sm-2 col-sm-offset-2 control-label font_style label1">身份证：</label>
      <div class="col-sm-4">
        <s:textfield name="number" cssClass="form-control font_style" id="number" placeholder="number" />
      </div>
    </div>

    <div class="form-group">
      <label for="tele" class="col-sm-2 col-sm-offset-2 control-label font_style label1">手机号码：</label>
      <div class="col-sm-4">
        <s:textfield name="tele" cssClass="form-control font_style" id="tele" placeholder="tele" />
      </div>
    </div>
    
     <div class="form-group">
      <div class="col-sm-offset-4 col-sm-8 row">
        <button type="submit" class="btn btn-default btn-lg"  onclick="return Reg();">提交</button>
        <button type="reset" class="btn btn-default btn-lg col-sm-offset-2" onclick="javascript:history.go(-1);">退回</button>
      </div>
     </div>
</s:form>
</div>
</body>
</html>
