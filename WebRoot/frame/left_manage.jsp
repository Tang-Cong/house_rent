<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'left.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="${ pageContext.request.contextPath }/frame/dtree.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="${ pageContext.request.contextPath }/frame/dtree.js"></script>

  </head>
  
<body bgColor=#DDF0FB leftMargin=0 topMargin=0 marginwidth="0" marginheight="0">
<table width="90%" border="0" cellspacing="1" cellpadding="2" align="center">
<div class="dtree">
  <script type="text/javascript">
    d=new dTree('d');

    d.add('01','-1','房屋租赁');
    d.add('0101','01','管理员');
    d.add('010101','0101','用户','${ pageContext.request.contextPath }/users_findAll.action','','right');

    d.add('010102','0101','留言','${ pageContext.request.contextPath }/comment_findAll.action','','right');
    document.write(d);
  </script>
</div>
</table>

</body>
</html>
