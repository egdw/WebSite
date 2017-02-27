<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>相册</title>
</head>
<body>
	<jsp:include page="/MyBlog_top.jsp"></jsp:include>
	<div class="row-fluid container" style="text-align: center">
		<hr>
			<div class="col-xs-3 col-md-3 col-lg-3">
				<a href="<%=request.getContextPath()%>/images/5880.gif"
					class="thumbnail" data-lightbox="example-set"
					data-title="&lt;div style=&#39;padding-top:5px;font-size: 16px&#39;&gt;牛排猪排双拼&lt;/div&gt;">
					<img src="<%=request.getContextPath()%>/images/5880.gif" alt="..."
					height="180px" style="height: 180px">
				</a>
				<div class="caption">
					<div>
						<label>牛排猪排双拼</label>
					</div>
				</div>
			</div>
			<div class="col-xs-3 col-md-3 col-lg-3">
				<a href="./album_files/21.jpg" class="thumbnail"
					data-lightbox="example-set"
					data-title="&lt;div style=&#39;padding-top:5px;font-size: 16px&#39;&gt;color run&lt;/div&gt;">
					<img src="./album_files/21.jpg" alt="..." height="180px"
					style="height: 180px">
				</a>
				<div class="caption">
					<div>
						<label>color run</label>
					</div>
				</div>
			</div>
			<div class="col-xs-3 col-md-3 col-lg-3">
				<a href="./album_files/20.jpg" class="thumbnail"
					data-lightbox="example-set"
					data-title="&lt;div style=&#39;padding-top:5px;font-size: 16px&#39;&gt;color run&lt;/div&gt;">
					<img src="./album_files/20.jpg" alt="..." height="180px"
					style="height: 180px">
				</a>
				<div class="caption">
					<div>
						<label>color run</label>
					</div>
				</div>
			</div>
			<div class="col-xs-3 col-md-3 col-lg-3">
				<a href="./album_files/19.jpg" class="thumbnail"
					data-lightbox="example-set"
					data-title="&lt;div style=&#39;padding-top:5px;font-size: 16px&#39;&gt;跟鑫弟在方所&lt;/div&gt;">
					<img src="./album_files/19.jpg" alt="..." height="180px"
					style="height: 180px">
				</a>
				<div class="caption">
					<div>
						<label>跟鑫弟在方所</label>
					</div>
				</div>
			</div>
	</div>

	<div class="row-fluid container" style="text-align: center">
		<hr>
			<!-- 分页 -->
			<nav style="text-align: center">

			<ul class="pagination">
				<li><a aria-label="Previous"> <span class="disabled"
						aria-hidden="true">«</span>
				</a></li>

				<li><a style="color: #000000">1</a></li>
				<li><a href="http://kkys.online/blog/album/albumHtml/2">2</a></li>
				<li></li>
				<li><a href="http://kkys.online/blog/album/albumHtml/2"
					aria-label="Next"> <span aria-hidden="true">»</span>
				</a></li>
			</ul>
			</nav>
	</div>

	<script
		src="<%=request.getContextPath()%>/css/MyBlog_files/lightbox.js"></script>
	<div id="lightboxOverlay" class="lightboxOverlay"
		style="display: none;"></div>
	<div id="lightbox" class="lightbox" style="display: none;">
		<div class="lb-outerContainer">
			<div class="lb-container">
				<img class="lb-image"
					src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw=="><div
						class="lb-nav">
						<a class="lb-prev" href="http://kkys.online/blog/album/albumHtml"></a><a
							class="lb-next" href="http://kkys.online/blog/album/albumHtml"></a>
					</div>
					<div class="lb-loader">
						<a class="lb-cancel"></a>
					</div>
			</div>
		</div>
		<div class="lb-dataContainer">
			<div class="lb-data">
				<div class="lb-details">
					<span class="lb-caption"></span><span class="lb-number"></span>
				</div>
				<div class="lb-closeContainer">
					<a class="lb-close"></a>
				</div>
			</div>
		</div>
	</div>



</body>
</html>