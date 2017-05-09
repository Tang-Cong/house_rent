<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'listUsers.jsp' starting page</title>
    
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
        	
        }
        thead{
            background-color:lightblue;
        }
    </style>
	<link href="${ pageContext.request.contextPath }/bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">
	<script type="text/javascript" src="${ pageContext.request.contextPath }/jQuery/jquery-3.1.1.js"></script>
    <script src="${ pageContext.request.contextPath }/bootstrap/js/bootstrap.js"></script>
  </head>
  
<body>
<div class="panel">
	<p class="p">用户信息</p>
</div>

<div class="container">
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
<thead>
	<tr>
		<td align="center">编号</td>
		<td align="center">用户姓名</td>
		<td align="center">电话</td>
		<td align="center">身份证号</td>
		<s:if test="#session.existUsers.level==1">
			<td align="center">删除</td>
		</s:if>
		<s:else>
			<td align="center">编辑</td>
		</s:else>
	</tr>
</thead>
<tbody>
	<s:iterator value="list" var="u">
	<tr>
		<td align="center"><s:property value="#u.id"/> </td>
		<td align="center"><s:property value="#u.uname"/> </td>
		<td align="center"><s:property value="#u.tele"/> </td>
		<td align="center"><s:property value="#u.number"/> </td>
		<s:if test="#session.existUsers.level==1"><td align="center"><a href="${ pageContext.request.contextPath }/users_delete.action?id=<s:property value="#u.id"/>"><img src="${ pageContext.request.contextPath }/img/trash.gif"></a></td></s:if>
		<s:else><td align="center"><a href="${ pageContext.request.contextPath }/users_edit.action?id=<s:property value="#u.id"/>"><img src="${ pageContext.request.contextPath }/images/编辑.png"></a></td></s:else>	
	</tr>
	</s:iterator>
</tbody>
</table>
</div>
<br/>

<table border="0" cellspacing="0" cellpadding="0"  width="900px">
<tr>
<td align="right">
   <span><s:property value="currPage"/>/<s:property value="totalPage"/>页 </span>&nbsp;&nbsp;
   <span>总的记录数:<s:property value="totalCount"/>&nbsp;&nbsp;每页显示条数:<s:property value="pageSize"/></span>&nbsp;&nbsp;
   <span>
   <s:if test="currPage!=1">
       <a href="${ pageContext.request.contextPath }/users_findAll.action?currPage=1">[首页]</a>&nbsp;&nbsp;
       <a href="${ pageContext.request.contextPath }/users_findAll.action?currPage=<s:property value="currPage-1"/>">[上一页]</a>&nbsp;&nbsp;
   </s:if>
   <s:if test="currPage!=totalPage">
       <a href="${ pageContext.request.contextPath }/users_findAll.action?currPage=<s:property value="currPage+1"/>">[下一页]</a>&nbsp;&nbsp;
       <a href="${ pageContext.request.contextPath }/users_findAll.action?currPage=<s:property value="totalPage"/>">[尾页]</a>&nbsp;&nbsp;
   </s:if>
   </span>
</td>
</tr>
</table>
</body>
</html>
