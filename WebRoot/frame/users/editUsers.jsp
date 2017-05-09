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
        .table1{
            border:1px solid #ddd;
            width:900px;
        }
        thead{
            background-color:lightblue;
        }
    </style>

  </head>
  
<body>
<table border="0" width="600px">
<tr>
<td align="center" style="font-size:24px; color:#666"> 出租用户编辑</td>
</tr>
<tr>
	<td align="right" > 
	<a href="javascript:document.getElementById('saveForm').submit()">保存</a> &nbsp;&nbsp;
	<a href="javascript:history.go(-1)">退回 </a>
	</td>
</tr>
</table>
<br/>

<s:form id="saveForm" action="users_update" method="post" namespace="/" theme="simple">
<s:hidden name="id" value="%{model.id}"/>
<s:hidden name="level" value="0"/>
<table border='0' cellpadding="0"  cellspacing="10">

	<tr>
		<td>姓名：</td>
		<td><s:textfield name="uname" value="%{model.uname}"/> </td>
		<td>密码：</td>
		<td><s:password name="password" value="%{model.password}" showPassword="true"/> </td>
	</tr>
		<tr>
		<td>电话：</td>
		<td><s:textfield name="tele" value="%{model.tele}"/> </td>
		<td>身份证号：</td>
		<td><s:textfield name="number" value="%{model.number}"/> </td>
	</tr>

</table>
</s:form>
</body>
</html>