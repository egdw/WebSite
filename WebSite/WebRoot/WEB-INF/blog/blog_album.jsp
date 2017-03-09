<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>相册</title>
</head>
<body style="background-color: 	#FFFFF0">
<script type="text/javascript" color="255,0,0" opacity='0.7' zIndex="-2" count="200" src="<%=request.getContextPath()%>/js/canvas-nest.min.js"></script>
	<jsp:include page="/MyBlog_top.jsp"></jsp:include>
	<div class="row-fluid container" style="text-align: center">
		<hr>
			<c:forEach items="${requestScope.list}" var="index" varStatus="i">
				<div class="col-xs-3 col-md-3 col-lg-3">
					<c:if test="${!empty index.url}">
							<a href="<%=request.getContextPath()%>/${index.url}"
						class="thumbnail" data-lightbox="example-set"
						data-title="${index.title}">
						<img src="<%=request.getContextPath()%>/${index.url}" alt="..."
						height="180px" style="height: 180px">
					</a>
						</c:if>
						<c:if test="${empty index.url}">
						<div style="text-align: center;">
						<a href="<%=request.getContextPath()%>/images/noimg.jpeg"
						class="thumbnail" data-lightbox="example-set"
						data-title="${index.title}">
						<img src="<%=request.getContextPath()%>/images/noimg.jpeg" alt="..."
						height="180px" style="height: 180px">
					</a>
						</div>
						</c:if>
					
					<div class="caption">
						<div>
							<label>${index.title}</label>
						</div>
					</div>
				</div>
			</c:forEach>
	</div>

	<div class="row-fluid container" style="text-align: center">
		<hr>
			<!-- 分页开始 -->
			<nav style="text-align: center">

			<ul class="pagination">
				<c:forEach var="index" begin="1" end="${requestScope.pageCount}">
					<c:if test="${requestScope.currentPage==index}">
						<li><a style="color: #000000"
							href="<%=request.getContextPath()%>/blog/image?pageNum=${index-1}">${index}</a></li>
					</c:if>
					<c:if test="${requestScope.currentPage!=index}">
						<li><a
							href="<%=request.getContextPath()%>/blog/image?pageNum=${index-1}">${index}</a></li>
					</c:if>
				</c:forEach>
			</ul>
			</nav>
	</div>

	<script
		src="<%=request.getContextPath()%>/css/MyBlog_files/lightbox.js"></script>
	</div>
</body>
</html>