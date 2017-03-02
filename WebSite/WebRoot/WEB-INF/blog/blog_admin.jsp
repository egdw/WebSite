<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://cksource.com/ckfinder" prefix="ckf"%>
<%@ taglib uri="http://ckeditor.com" prefix="ck"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="charset" content="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/admin_project_manager_files/dist/remodal.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/admin_project_manager_files/dist/remodal-default-theme.css">
<link
	href="<%=request.getContextPath()%>/css/MyBlog_files/bootstrap.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/css/MyBlog_files/bootstrap-theme.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/MyBlog_files/lightbox.css">
<title>项目管理</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<script
	src="<%=request.getContextPath()%>/css/admin_project_manager_files/jquery.min.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/admin_project_manager_files/bootstrap.min.css">
<script
	src="<%=request.getContextPath()%>/css/admin_project_manager_files/bootstrap.min.js"></script>
<style type="text/css">
body {
	font-family: "微软雅黑", "Microsoft YaHei";
	background: #eee;
}

.remodal-bg.with-red-theme.remodal-is-opening,.remodal-bg.with-red-theme.remodal-is-opened
	{
	filter: none;
}

.remodal-overlay.with-red-theme {
	background-color: #f44336;
}

.remodal.with-red-theme {
	background: #fff;
}
</style>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/css/admin_project_manager_files/js.js"></script>
<style type="text/css">
</style>
</head>
<body>
	<!-- nva begin -->
	<button class="btn btn-primary btn-lg" id="wabutton"
		style="display:none;" data-toggle="modal" data-target="#alert_modal"></button>
	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/css/admin_project_manager_files/ui.css">
	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/css/admin_project_manager_files/my.css">
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/css/admin_project_manager_files/my.js"></script>
	<div id="mok_bgimg"
		style="width:100%;height:100%;background-size:100% 100%;background-image:url(&#39;/az/hprichbg/rb/VenetianFortifications_ZH-CN11140565989_1920x1080.jpg&#39;);position:fixed;"></div>
	<style>
.container .nav>li>a {
	color: #FF3030
}

.navbar-default .navbar-nav>li>a,.navbar-default .navbar-brand {
	color: #EEAEEE !important
}
</style>
	<div class="navbar navbar-default" role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">后台管理</span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand"
				href="<%=request.getContextPath()%>/login/manager">后台管理</a>
		</div>

		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="dropdown"><a
					href="http://love.kfj.cc/index.php?mod=baiduid#"
					class="dropdown-toggle" data-toggle="dropdown"><span
						class="glyphicon glyphicon-list-alt"></span> 功能菜单 <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li class=""><a
							href="<%=request.getContextPath()%>/login/manager"><span
								class="glyphicon glyphicon-home"></span> 首页</a></li>
						<li class=""><a
							href="<%=request.getContextPath()%>/manager/manager_person_setting.do"><span
								class="glyphicon glyphicon-wrench"></span> 个人设置</a></li>
						<li class=""><a
							href="<%=request.getContextPath()%>/manager/manager_project_manager.do"><span
								class="glyphicon glyphicon-link"></span> 项目管理</a></li>
						<li class="active"><a
							href="http://love.kfj.cc/index.php?mod=showtb"><span
								class="glyphicon glyphicon-calendar"></span> 趣味管理</a></li>
						<li><a href="http://love.kfj.cc/index.php?plugin=mok_bduss"><span
								class="glyphicon glyphicon-exclamation-sign"></span> 临时管理</a></li>
						<li><a href="http://love.kfj.cc/index.php?plugin=wmzz_ban"><span
								class="glyphicon glyphicon-ban-circle"></span> 循环封禁</a></li>
						<li><a href="http://love.kfj.cc/index.php?plugin=wmzz_post"><span
								class="glyphicon glyphicon-cloud-upload"></span> 帖子云灌水</a></li>
					</ul></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="http://love.kfj.cc/index.php?mod=admin:logout"><span
						class="glyphicon glyphicon-off"></span> 退出登录</a></li>
			</ul>
			<ul class="nav navbar-nav">
				<li class="dropdown"><a
					href="http://love.kfj.cc/index.php?mod=baiduid#"
					class="dropdown-toggle" data-toggle="dropdown"><span
						class="glyphicon glyphicon-book"></span> 关于 <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="http://www.stusgame.com/" target="_blank">StusGame</a></li>
						<li><a href="https://kenvix.com/" target="_blank">Kenvix's
								Blog</a></li>
					</ul></li>
			</ul>
		</div>
	</div>

	<!-- 侧边导航，宽屏设备可见 -->
	<div class="container bs-docs-container">
		<div class="row">
			<div class="col-md-3">
				<div class="bs-sidebar hidden-print visible-lg visible-md"
					role="complementary">
					<ul class="nav bs-sidenav">
						<li></li>
						<li class=""><a
							href="<%=request.getContextPath()%>/login/manager"><span
								class="glyphicon glyphicon-home"></span> 首页</a></li>
						<li class=""><a
							href="<%=request.getContextPath()%>/manager/manager_person_setting.do"><span
								class="glyphicon glyphicon-wrench"></span> 个人设置</a></li>
						<li class=""><a
							href="<%=request.getContextPath()%>/manager/manager_project_manager.do"><span
								class="glyphicon glyphicon-link"></span> 项目管理</a></li>
						<li class=""><a
							href="http://love.kfj.cc/index.php?mod=showtb"><span
								class="glyphicon glyphicon-calendar"></span> 趣味管理</a></li>
						<li><a href="http://love.kfj.cc/index.php?plugin=mok_bduss"><span
								class="glyphicon glyphicon-exclamation-sign"></span> 临时管理</a></li>
						<li class="active"><a
							href="http://love.kfj.cc/index.php?plugin=wmzz_ban"><span
								class="glyphicon glyphicon-ban-circle"></span> 博客管理</a></li>
						<li><a href="http://love.kfj.cc/index.php?plugin=wmzz_post"><span
								class="glyphicon glyphicon-cloud-upload"></span> 待定</a></li>

					</ul>
				</div>
			</div>
			<div class="col-md-9" role="main">

				<!-- NAVI -->
				<ul class="nav nav-tabs" id="PageTab">
					<li class=""><a
						href="http://love.kfj.cc/index.php?mod=baiduid#adminid"
						data-toggle="tab"
						onclick="$(&#39;#newid2&#39;).css(&#39;display&#39;,&#39;none&#39;);$(&#39;#newid&#39;).css(&#39;display&#39;,&#39;none&#39;);$(&#39;#adminid&#39;).css(&#39;display&#39;,&#39;&#39;);"
						aria-expanded="false">相册</a></li>
					<li class="active"><a
						href="http://love.kfj.cc/index.php?mod=baiduid#newid"
						data-toggle="tab"
						onclick="$(&#39;#newid&#39;).css(&#39;display&#39;,&#39;&#39;);$(&#39;#adminid&#39;).css(&#39;display&#39;,&#39;none&#39;);$(&#39;#newid2&#39;).css(&#39;display&#39;,&#39;none&#39;);"
						aria-expanded="true">文章</a></li>
				</ul>
				<br>
				<!-- END NAVI -->
				<!-- 第一个分组界面 -->
				<div class="tab-pane fade" id="adminid" style="display: none;">

				</div>
				<!-- 第一个分组结束 -->
				<!-- 第二个分组界面 -->
				<div class="tab-pane fade active in" id="newid">
					<div style="padding-top: 10px">
						<a data-toggle="modal" data-target="#add-blog-modal"
							class="btn btn-info btn-sm">写文章</a>
						<table class="table table-hover" id="blog-table">
							<thead>
								<tr>
									<th>id</th>
									<th>标题</th>
									<th>图片</th>
									<th>编号</th>
									<th>阅读</th>
									<th>评论</th>
									<th>点赞</th>
									<th>创建时间</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${requestScope.list}" var="index"
									varStatus="i">
									<tr>
										<td>${i.index+1}</td>
										<td><a href="#" name="${i.index+1}" onclick="editInfo(this)">${index.title}</a></td>
										<td><a
											href="<%=request.getContextPath()%>/${index.picUrl}"
											class="thumbnail" data-lightbox="example-set"
											data-title="<div style='padding-top:5px;font-size: 16px'></div>">
												<img src="<%=request.getContextPath()%>/${index.picUrl}"
												height="30px" style="height: 30px">
										</a></td>
										<td>${index.id}</td>
										<td>${index.clickTimes}</td>
										<td>${index.commentTimes}</td>
										<td>${index.agreeWithTimes}</td>
										<td>${index.createTime}</td>
										<td>
											<div class="btn-group btn-group-xs">
												<button type="button" class="btn btn-success" name="${i.index+1}"
													onclick="editInfo(this)">修改</button>
												<a data-toggle="modal" data-target="#deleteBlogModel"
													type="button" class="btn btn-warning">删除</a>
											</div>
										</td>
										<!-- 信息删除确认 -->
										<div class="modal fade" id="deleteBlogModel">
											<div class="modal-dialog">
												<div class="modal-content message_align">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close">
															<span aria-hidden="true">×</span>
														</button>
														<h4 class="modal-title">提示信息</h4>
													</div>
													<div class="modal-body">
														<p>对不起，您没有此权限</p>
														<div class="modal-footer">
															<button type="button" class="btn btn-default"
																data-dismiss="modal">了解</button>
														</div>
													</div>
												</div>
												<!-- /.modal-content -->
											</div>
											<!-- /.modal-dialog -->
										</div>
										<!-- /.modal -->
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<!-- 分页开始 -->
						<nav style="text-align: center">

							<ul class="pagination">
								<li><a aria-label="Previous"> <span class="disabled"
										aria-hidden="true">&laquo;</span>
								</a></li>

								<li><a style="color: #000000">1</a></li>
								<li><a href="/blog/admin/2">2</a>
								<li>
								<li><a href="/blog/admin/2" aria-label="Next"> <span
										aria-hidden="true">&raquo;</span>
								</a></li>
							</ul>
						</nav>
						<!-- 分页结束 -->
					</div>
				</div>
				<!-- 第二个分组结束 -->
				<div class="container col-lg-2 col-md-1"></div>
				<!-- 隐藏窗体 -->
				<div class="modal fade" id="add-blog-modal" tabindex="-1"
					role="dialog" aria-labelledby="modal-label" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">
									<span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
								</button>
								<h4 class="modal-title">添加</h4>
							</div>

							<form id="addBlogForm"
								action="<%=request.getContextPath()%>/blog/add" method="post">
								<div class="modal-body">
									<div>
										<label style="font-size: 15px">标题:</label> <input
											style="display: inline;font-size:15px;width:250px;"
											name="title" type="text" class="form-control" />
									</div>
									<div style="padding-top: 5px">
										<label style="font-size: 15px">分类:</label> <select name="type"
											class="form-control"
											style="font-size:15px;width:250px;display: inline">
											<option value="0">学习</option>
											<option value="1">生活</option>
											<option value="2">随笔</option>
										</select>
									</div>
									<div id="pic_div" style="padding-top: 5px;">
										<label style="font-size: 15px">图片: </label>
										<div id="show"></div>
										<!-- 存储图片地址，并显示图片 -->
										<input type="hidden" name="pic_url" id="pictureSrc">
									</div>
									<img alt="" id="displayImg" width="100px" height="100px" src="">
									<div style="padding-top: 5px">
										<input type="file" name="image" id="imageFile">
									</div>
									<div style="padding-top: 5px">
										<button id="upload" onclick="return false;">上传</button>
									</div>
									<div style="padding-top: 8px">
										<textarea id="addBlogInput" name="content" class="ckeditor"></textarea>
										<ckf:setupCKEditor basePath="/WebSite/ckfinder/"
											editor="addBlogInput" />
										<ck:replace replace="addBlogInput"
											basePath="/WebSite/ckeditor"></ck:replace>
									</div>
								</div>
								<input type="hidden" name="userType" value="1">
								<div class="modal-footer">
									<button type="button" id="addBlogBtn" class="btn btn-success"
										onclick="return false;">添加</button>
									<button type="button" id="addBlogBtnCancle"
										class="btn btn-default" data-dismiss="modal">取消</button>
								</div>
							</form>
						</div>
					</div>
				</div>

				<div class="modal fade" id="update-blog-modal" tabindex="-1"
					role="dialog" aria-labelledby="modal-label" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">
									<span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
								</button>
								<h4 class="modal-title">查看</h4>
							</div>
							<form action="/blog/update" method="post">
								<div class="modal-body">
									<div>
										<label style="font-size: 15px">编号:</label> <input
											style="display: inline;font-size:15px;width:250px;" id="id"
											name="id" type="text" class="form-control" readonly />
									</div>
									<div style="padding-top: 5px">
										<label style="font-size: 15px">标题:</label> <input
											style="display: inline;font-size:15px;width:250px;"
											id="title" name="title" type="text" class="form-control" />
									</div>
									<div style="padding-top: 5px">
										<label style="font-size: 15px">分类:</label> <select name="type"
											id="blog.type" class="form-control"
											style="font-size:15px;width:250px;display: inline">
											<option value="0">学习</option>
											<option value="1">生活</option>
											<option value="2">随笔</option>
										</select>
									</div>

									<div style="padding-top: 5px;">
										<label style="font-size: 15px">图片: </label>
										<!-- 存储图片地址，并显示图片 -->
										<img height="140px" id="blog_update_image"> <input
											id="update_blog_image" type="hidden" name="blog.pic_url">
									</div>
									<div style="padding-top: 8px">
										<textarea id="update_content" cols="80" row="10" name="blog.content"
											class="ckeditor"></textarea>
											<ckf:setupCKEditor basePath="/WebSite/ckfinder/"
											editor="update_content" />
											<ck:replace replace="update_content"
											basePath="/WebSite/ckeditor"></ck:replace>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">了解</button>
								</div>
							</form>
						</div>
					</div>
				</div>
				<!-- 隐藏窗体结束 -->
				<script type="text/javascript"
					src="<%=request.getContextPath()%>/ckeditor/ckeditor.js"></script>
				<script type="text/javascript"
					src="<%=request.getContextPath()%>/ckfinder/ckfinder.js"></script>
				<script
					src="<%=request.getContextPath()%>/css/MyBlog_files/lightbox.js"></script>
				<script src="<%=request.getContextPath()%>/js/ajaxfileupload.js"></script>
				<script type="text/javascript">
					
				//编辑-查看信息
			    function editInfo(obj) {
			        var id = $(obj).attr("name");
			        //获取表格中的一行数据
			        var id_db = document.getElementById("blog-table").rows[id].cells[3].innerText;
			        //向模态框中传值
			        $('#id').val(id_db);
			        $.ajax({
			            type:'get',
			            url:'<%=request.getContextPath()%>/blog/get?id='+id_db,
			            cache:false,
			            dataType:'json',
			            success:function(data){
			                $('#title').val(data.title);
			                $('#type').val(data.type);
			                //放入img的src
			                $('#blog_update_image').attr('src','/WebSite/'+data.picUrl);
			                $('#update_blog_image').val(data.picUrl);
			                CKEDITOR.instances.update_content.setData(data.content);
			            },
			        });
			        $('#update-blog-modal').modal('show');
			    }

					$(document).ready(function(){
						$("#upload").click(function(){
							upload();
						});
						
						$("#addBlogBtn").click(function(){
							addBlog();
						});
					});
					
					function addBlog(){
						var v = CKEDITOR.instances.addBlogInput.getData();
						$("#addBlogInput").val(v);
						$.ajax({
							type:'post',
							url:'<%=request.getContextPath()%>/blog/add',
							data:$("#addBlogForm").serialize(),
							success:function(data){
								if(data =='success'){
									$("#addBlogBtnCancle").click();
									alert("提交成功");
								}else{
									$("#addBlogBtnCancle").click();
									alert("提交出错");
								}				
							},
							error:function(e){  
								$("#addBlogBtnCancle").click();
								alert("提交出错");
						    } 
						});
					}
					
					function upload() {
				        $.ajaxFileUpload(
				        {
				            url : '<%=request.getContextPath()%>/blog/imageUpload',  
				            secureuri: false,
				            fileElementId : 'imageFile', 
				            dataType : 'text',
				            success : function(data) {
				            	var obj = eval(data);
				            	if(obj!='null'){
									$('#displayImg').attr("src","/WebSite/"+obj);
									$('#pictureSrc').attr("value",obj);
				            	}else{
				            		$('#displayImg').attr("src","");
				            		$('#pictureSrc').attr("value","");
				            		alert("上传失败"+obj);
				            	}
				            },
				        	error: function (data, status, e){
	                       		alert("上传失败");
	                    	}
				        }
				        );
				    }
				</script>
</body>
</html>
