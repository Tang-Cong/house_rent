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
        thead{
            background-color:lightblue;
        }
    </style>
	<script language="JavaScript"> 
	function getDate()
	{
	var today = new Date(); 
	 var date; 
	date = (today.getFullYear()) +"-" + (today.getMonth() + 1 ) + "-" + today.getDate() + "-" + today.getHours()+ ":"+today.getMinutes()+":"+today.getSeconds();
	return date;
	}
	window.onload = function(){
	    document.getElementById('day').value = getDate();
	};
	</script> 
		<link href="${ pageContext.request.contextPath }/bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">
		<script type="text/javascript" src="${ pageContext.request.contextPath }/jQuery/jquery-3.1.1.js"></script>
    	<script src="${ pageContext.request.contextPath }/bootstrap/js/bootstrap.js"></script>
  </head>
  
<body>
	<div class="container">
			<div class="panel">
				<p class="p">编辑留言信息</p>
			</div>
	</div>
<%
	Date day=new Date();
	request.setAttribute("day", day);
 %>

<s:form id="saveForm" action="comment_update" method="post" namespace="/" theme="simple">

<%-- <table border='0' cellpadding="0"  cellspacing="10">

	<tr>
		<td>姓名：</td>
		<td><s:property value="%{model.cname}"/>
			<s:hidden name="cname" value="%{model.cname}"/></td>
		<td>电话：</td>
		<td><s:property value="%{model.tele}"/>
			<s:hidden name="tele" value="%{model.tele}"/></td>
	</tr>
	<tr>
		<td>内容：</td>
		<td><s:textarea name="content" value="%{model.content}" cols="30" rows="10"/> </td>
		<td>日期：</td>
		<td><s:date name="#request.day" format="yyyy-MM-dd hh:mm:ss"/></td>
		<td><s:hidden name="day" id="day" value="#request.day"/></td>
	</tr>

</table> --%>

<div class="container">
	<div class="row">
		<s:hidden name="id" value="%{model.id}"/>
		<div class="col-md-4">
			<label>姓名：
				<s:property value="%{model.cname}"/>
				<input type="hidden" value="<s:property value="%{model.cname}"/>" name="cname">
			</label>
		</div>
		<div class="col-md-4">
			<label>电话：
				<s:property value="%{model.tele}"/>
				<input type="hidden" value="<s:property value="%{model.tele}"/>" name="tele">
			</label>
		</div>
		<div class="col-md-4">
			<label>日期：
				<s:date name="#request.day" format="yyyy-MM-dd HH:mm:ss"/>
				<s:hidden name="day" id="day" value="#request.day"/>
			</label>
		</div>
	</div>
	<div class="form-group">
		<label>内容：</label>
		<s:textarea rows="10" cols="30" name="content"  value="%{model.content}" cssClass="form-control"></s:textarea>
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