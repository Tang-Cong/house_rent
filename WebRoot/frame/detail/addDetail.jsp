<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

  <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'editRent.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
         .panel{
        	text-align: center;
        }
        .panel p{
        	font-size: 30px;
        	color: red;
        	font-family: "Arial","Microsoft YaHei","黑体","宋体",sans-serif;
        	letter-spacing: 3px;
        }
    </style>
	<script language="JavaScript"> 
	function getDate()
	{
	var today = new Date(); 
	 var date; 
	date = (today.getFullYear()) +"-" + (today.getMonth() + 1 ) + "-" + today.getDate()+" "+ today.getHours()+":"+today.getMinutes()+":"+today.getSeconds();
	return date;
	}
	window.onload = function(){
	    document.getElementById('time').value = getDate();
	};
	</script> 
		<link href="${ pageContext.request.contextPath }/bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">
		<script type="text/javascript" src="${ pageContext.request.contextPath }/jQuery/jquery-3.1.1.js"></script>
    	<script src="${ pageContext.request.contextPath }/bootstrap/js/bootstrap.js"></script>
  </head> 
  
<body>
	<div class="container">
			<div class="panel">
				<p class="p">发布回复</p>
			</div>
	</div>
<%
	Date time=new Date();
	request.setAttribute("time", time);
 %>

<s:form id="saveForm" action="detail_save" method="post" namespace="/" theme="simple">
<div class="container">
	<div class="row">
		<s:hidden value="%{model.id}" name="cno"/>
		<div class="col-md-4">
			<label>姓名：
				<s:property value="#session.existUsers.uname"/>
				<input type="hidden" value="<s:property value="#session.existUsers.uname"/>" name="dname">
			</label>
		</div>
		<div class="col-md-4">
			<label>日期：
				<s:date name="#request.time" format="yyyy-MM-dd hh:mm:ss"/>
				<s:hidden name="time" id="time" value="#request.time"/>
			</label>
		</div>
	</div>
	<div class="form-group">
		<label>内容：</label>
		<textarea rows="10" cols="30" class="form-control" name="content"></textarea>
	</div>
	<div class="row">
		<div class="col-md-3 col-md-offset-2">
			<button type="submit" class="btn btn-primary btn-lg btn-block">s u b m i t</button>
		</div>
		<div class="col-md-3 col-md-offset-2">
			<button type="reset" class="btn btn-primary btn-lg btn-block">r e s e t</button>
		</div>
	</div>
</div>
</s:form>
</body>
</html>