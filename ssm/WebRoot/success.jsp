<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'success.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

</head>

<body>
	<table>
		<c:forEach items="${requestScope.list}" var="index">
			<tr>
				<td>${index.id}</td>
				<td>${index.name}</td>
				<td><form action="queryTest" method="POST">
						<input type="hidden" name="_method" value="DELETE"> <input
							type="hidden" name="id" value="${index.id }"> <input
							type="submit" value="del">
					</form></td>
			</tr>
		</c:forEach>
	</table>
	<a href="queryTest">test</a>
	<h1>下面是测试的内容</h1>
	<h2>${testName}</h2>
	<h2>${test.id}</h2>
	<h2>${test.name}</h2>
	<h2>current Time ${date}</h2>
	
	<form action="dataFormat" method="post">
		date:<input type="text" name="date"/><br/>
		<input type="submit" name="commit"/>
	</form>
</body>
</html>
