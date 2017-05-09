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
		body{
			padding-top: 70px;
		}
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
        .input1{
        	
        }
        .input1{
        	margin-top: 20px;
			width: 800px;
			height: 35px;
			line-height: 35px;
			border-radius: 3px;
			padding: 6px 12px;
			font-size: 15px;
			color: #555;
			background-color: #fff;
		  	background-image: none;
		  	border: 1px solid #ccc;
		  	border-radius: 8px;
		  	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
		          	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
		  	-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
		       	 -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
		          	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
		}
		.input1:focus {
		  border-color: #66afe9;
		  outline: 0;
		  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, .6);
		          box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, .6);
		}
    </style>
	<link href="${ pageContext.request.contextPath }/bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">
	<script type="text/javascript" src="${ pageContext.request.contextPath }/jQuery/jquery-3.1.1.js"></script>
    <script src="${ pageContext.request.contextPath }/bootstrap/js/bootstrap.js"></script>
  </head>
  
<body>
<div class="container">
		<s:form id="saveForm" cssClass="navbar-form navbar-left" action="rent_findByName" method="post" namespace="/" theme="simple">
			<nav class="navbar navbar-default navbar-fixed-top">	<!-- navbar-fixed-top会让导航条固定在顶部,还有navbar-fixed-bottom -->
				<div class="container">
					<input type="text" name="rname" class="input1" placeholder="search rname"/>
					<button type="submit" class="btn btn-primary">search</button>
				</div>
			</nav>
		</s:form>

	<div class="panel">
	<p class="p">出租信息</p>
	</div>


<div class="container">
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
		<s:if test="#session.existUsers.level==0"><td align="center">编辑</td></s:if>
		<s:if test="#session.existUsers.level==1"><td align="center">删除</td></s:if>
	</tr>
</thead>
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
		<s:if test="#session.existUsers.level==0"><td align="center"><a href="${ pageContext.request.contextPath }/rent_edit.action?id=<s:property value="#r.id"/>"><img src="${ pageContext.request.contextPath }/images/编辑.png"></a></td></s:if>
		<s:if test="#session.existUsers.level==1"><td align="center"><a href="${ pageContext.request.contextPath }/rent_delete.action?id=<s:property value="#r.id"/>"><img src="${ pageContext.request.contextPath }/img/trash.gif"></a></td></s:if>
	</tr>
	</s:iterator>
</tbody>
</table>
<br/>

<table border="0" cellspacing="0" cellpadding="0"  width="900px">
<tr>
<td align="right">
   <span><s:property value="currPage"/>/<s:property value="totalPage"/>页 </span>&nbsp;&nbsp;
   <span>总的记录数:<s:property value="totalCount"/>&nbsp;&nbsp;每页显示条数:<s:property value="pageSize"/></span>&nbsp;&nbsp;
   <span>
   <s:if test="currPage!=1">
       <a href="${ pageContext.request.contextPath }/rent_findAll.action?currPage=1">[首页]</a>&nbsp;&nbsp;
       <a href="${ pageContext.request.contextPath }/rent_findAll.action?currPage=<s:property value="currPage-1"/>">[上一页]</a>&nbsp;&nbsp;
   </s:if>
   <s:if test="currPage!=totalPage">
       <a href="${ pageContext.request.contextPath }/rent_findAll.action?currPage=<s:property value="currPage+1"/>">[下一页]</a>&nbsp;&nbsp;
       <a href="${ pageContext.request.contextPath }/rent_findAll.action?currPage=<s:property value="totalPage"/>">[尾页]</a>&nbsp;&nbsp;
   </s:if>
   </span>
</td>
</tr>
</table>
		<div class="container col-md-offset-6">
			<a class="a1" href="${ pageContext.request.contextPath }/rent_saveUI.action">添&nbsp;加</a>
		</div>
	
</div>
	</div>
</body>
</html>
