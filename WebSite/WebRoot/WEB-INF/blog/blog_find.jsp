<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>查找结果</title>
</head>

<body style="background-color: 	#FFFFF0">
<script type="text/javascript" color="255,0,0" opacity='0.7' zIndex="-2" count="200" src="<%=request.getContextPath()%>/js/canvas-nest.min.js"></script>
	<jsp:include page="/MyBlog_top.jsp"></jsp:include>
	<div class="container table_box">
		<span style="font-size: 16px"></span> <span style="font-size: 20px">最新</span>
		<hr style="border: 1px solid silver">
		<c:forEach items="${requestScope.list}" var="index">
			<!-- 这是一个div的内容的开始 -->
			<div class="inline">
				<a style="font-size:30px;text-decoration:none;"
					href="detail?pageId=${index.id}">${index.title}</a>
			</div>
			<div class="row"
				style="padding-top: 14px;font-size:12px;height: 200px;overflow: hidden;">
				<div class="col-lg-3 col-sm-3">
					<div style="text-align: center">
						<a href="<%=request.getContextPath()%>/${index.picUrl}"
							class="thumbnail" data-lightbox="example-1"><img
							src="<%=request.getContextPath()%>/${index.picUrl}"
							height="140px"></a>
					</div>
				</div>
				<div class="col-lg-9 col-sm-9" style="font-size: 14px;">
					<div>
						<p>${index.title}</p>

						<p>${index.content}</p>
					</div>
				</div>
			</div>
			<div style="text-align: right;padding-top: 20px">
				<label style="font-size: 13px"><fmt:formatDate value="${index.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label style="font-size: 15px"><span
					class="glyphicon glyphicon-eye-open" style="color: gray"
					aria-hidden="true"></span> <a style="text-decoration:none;"
					href="/blog/detail/86">阅读</a>(${index.clickTimes})</label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label style="font-size: 15px"><span
					class="glyphicon glyphicon-edit" style="color: gray"
					aria-hidden="true"></span> <a style="text-decoration:none;"
					href="/blog/detail/86#comment_id">评论</a>(${index.commentTimes})</label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label style="font-size: 15px"><span
					class="glyphicon glyphicon-thumbs-up" style="color: gray"
					aria-hidden="true"></span> 推荐(0)</label>
			</div>
			<hr />
			<!-- 这是一个表格内容的结束 -->
		</c:forEach>
	</div>
</body>
</html>
