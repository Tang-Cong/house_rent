<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'listRent.jsp' starting page</title>
    
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
       .a1{
        	font-size: 20px;
        	
        }
        a{
        	font-family: "Arial","Microsoft YaHei","黑体","宋体",sans-serif;
        	letter-spacing: 3px;
        }
        td{
        	font-family: "Arial","Microsoft YaHei","黑体","宋体",sans-serif;
        	letter-spacing: 3px;
        }
    </style>
	<link href="${ pageContext.request.contextPath }/bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">
	<script type="text/javascript" src="${ pageContext.request.contextPath }/jQuery/jquery-3.1.1.js"></script>
    <script src="${ pageContext.request.contextPath }/bootstrap/js/bootstrap.js"></script>
  </head>
  
<body>
	<div class="panel">
	<p class="p">查询信息</p>
	</div>
<div class="container" align="center">
<table class="table table-striped table-bordered table-hover table-condensed table-responsive">
<thead>
	<tr>
		<td align="center">编号</td>
		<td align="center">用户姓名</td>
		<td align="center">电话</td>
		<td align="center">地址</td>
		<td align="center">面积</td>
		<td align="center">楼层</td>
		<td align="center">租金</td>
		<td align="center">区域</td>
		<td align="center">房型</td>
		<td align="center">方向</td>
		<td align="center">环境</td>
		<td align="center">装修</td>
		<td align="center">日期</td>
	</tr>
</thead>
<%-- <tbody>
	<tr>
		<td align="center"><s:property value="%{model.id}"/> </td>
		<td align="center"><s:property value="%{model.rname}"/> </td>
		<td align="center"><s:property value="%{model.tele}"/> </td>
		<td align="center"><s:property value="%{model.address}"/> </td>
		<td align="center"><s:property value="%{model.area}"/> </td>
		<td align="center"><s:property value="%{model.floor}"/> </td>
		<td align="center"><s:property value="%{model.money}"/> </td>
		<td align="center"><s:property value="%{model.district}"/> </td>
		<td align="center"><s:property value="%{model.type}"/> </td>
		<td align="center"><s:property value="%{model.direction}"/> </td>
		<td align="center"><s:property value="%{model.surround}"/> </td>
		<td align="center"><s:property value="%{model.decoration}"/> </td>
		<td align="center"><s:date name="%{model.day}" format="yyyy-MM-dd"/> </td>		
	</tr>
</tbody> --%>

<tbody>
	<s:iterator value="list" var="r">
	<tr>
		<td align="center"><s:property value="#r.id"/> </td>
		<td align="center"><s:property value="#r.rname"/> </td>
		<td align="center"><s:property value="#r.tele"/> </td>
		<td align="center"><s:property value="#r.address"/> </td>
		<td align="center"><s:property value="#r.area"/> </td>
		<td align="center"><s:property value="#r.floor"/> </td>
		<td align="center"><s:property value="#r.money"/> </td>
		<td align="center"><s:property value="#r.district"/> </td>
		<td align="center"><s:property value="#r.type"/> </td>
		<td align="center"><s:property value="#r.direction"/> </td>
		<td align="center"><s:property value="#r.surround"/> </td>
		<td align="center"><s:property value="#r.decoration"/> </td>
		<td align="center"><s:date name="#r.day" format="yyyy-MM-dd"/> </td>
	</tr>
	</s:iterator>
</tbody>

</table>
</div>
<br/>
		<div class="container col-md-offset-6" align="center">
			<a class="a1" href="javascript:history.go(-1)">退&nbsp;回</a>
		</div>

</body>
</html>
