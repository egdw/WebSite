<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8">
    <title>音乐搜索</title>
</head>
<link href="<%=request.getContextPath()%>/css/music_css/bootstrap.min.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/music_css/my.css" rel="stylesheet">
<body>
<jsp:include page="/music_top.jsp"></jsp:include>
<center>
    <form class="navbar-form navbar-center" action="search" method="post" accept-charset="utf-8">
        <div class="form-group">
            <input type="text" name="songsName" class="form-control" placeholder="请在这里进行搜索!">
        </div>
        <button type="submit" class="btn btn-default">查询</button>
    </form>
    <div class="list-group">
        <a href="#" class="list-group-item active">
            <h4 class="list-group-item-heading">我的最爱</h4>
            <p class="list-group-item-text">只推荐我喜欢的❤️</p>
        </a>
        <a href="#" class="list-group-item">邓紫棋</a>
        <a href="#" class="list-group-item">邓紫棋</a>
        <a href="#" class="list-group-item">邓紫棋</a>
        <a href="#" class="list-group-item">邓紫棋</a>
    </div>
    <div class="list-group">
        <a href="#" class="list-group-item active">
            <h4 class="list-group-item-heading">推荐神曲</h4>
            <p class="list-group-item-text">神奇的歌曲😯️</p>
        </a>
        <a href="#" class="list-group-item">lostrivers</a>
        <a href="#" class="list-group-item">lostrivers</a>
        <a href="#" class="list-group-item">lostrivers</a>
        <a href="#" class="list-group-item">lostrivers</a>
    </div>
    <div class="list-group">
        <a href="#" class="list-group-item active">
            <h4 class="list-group-item-heading">洗脑歌曲</h4>
            <p class="list-group-item-text">僵尸吃掉了你的脑子😱️</p>
        </a>
        <a href="#" class="list-group-item">lostrivers</a>
        <a href="#" class="list-group-item">lostrivers</a>
        <a href="#" class="list-group-item">lostrivers</a>
        <a href="#" class="list-group-item">lostrivers</a>
    </div>
</center>

</body>
<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
</html>