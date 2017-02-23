<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="charset" content="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>个人设置</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<script src="<%=request.getContextPath()%>/js/jquery.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/admin_index/bootstrap.min.css">
<script src="<%=request.getContextPath()%>/css/admin_index/bootstrap.min.js"></script>
<style type="text/css">
body {
    font-family: "微软雅黑", "Microsoft YaHei";
    background: #eee;
}
</style>
<script type="text/javascript" src="<%=request.getContextPath()%>/css/admin_person_setting_files/js.js"></script>
<style type="text/css" adt="123"></style>
</style>
</head>
<body>
    <button class="btn btn-primary btn-lg" id="wabutton"
        style="display:none;" data-toggle="modal" data-target="#alert_modal"></button>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/admin_person_setting_files/ui.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/admin_person_setting_files/my.css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/css/admin_person_setting_files/my.js"></script>
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
                <span class="sr-only">个人设置</span> <span class="icon-bar"></span> <span
                    class="icon-bar"></span> <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<%=request.getContextPath()%>/login/manager">后台管理</a>
        </div>

        <div class="collapse navbar-collapse"
            id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="dropdown"><a
                    href="http://love.kfj.cc/index.php?mod=set#"
                    class="dropdown-toggle" data-toggle="dropdown"><span
                        class="glyphicon glyphicon-list-alt"></span> 功能菜单 <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li class=""><a href="<%=request.getContextPath()%>/login/manager"><span
                                class="glyphicon glyphicon-home"></span> 首页</a></li>
                        <li class="active"><a
                            href="http://love.kfj.cc/index.php?mod=set"><span
                                class="glyphicon glyphicon-wrench"></span> 个人设置</a></li>
                        <li class=""><a
                            href="http://love.kfj.cc/index.php?mod=baiduid"><span
                                class="glyphicon glyphicon-link"></span> 百度账号管理</a></li>
                        <li class=""><a
                            href="http://love.kfj.cc/index.php?mod=showtb"><span
                                class="glyphicon glyphicon-calendar"></span> 云签到设置和日志</a></li>
                        <li><a href="http://love.kfj.cc/index.php?plugin=mok_bduss"><span
                                class="glyphicon glyphicon-exclamation-sign"></span> Bduss有效性检测</a></li>
                        <li><a href="http://love.kfj.cc/index.php?plugin=wmzz_ban"><span
                                class="glyphicon glyphicon-ban-circle"></span> 循环封禁</a></li>
                        <li><a href="http://love.kfj.cc/index.php?plugin=wmzz_post"><span
                                class="glyphicon glyphicon-cloud-upload"></span> 帖子云灌水</a></li>
                    </ul></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="logout.do"><span
                        class="glyphicon glyphicon-off"></span> 退出登录</a></li>
            </ul>
            <ul class="nav navbar-nav">
                <li class="dropdown"><a
                    href="http://love.kfj.cc/index.php?mod=set#"
                    class="dropdown-toggle" data-toggle="dropdown"><span
                        class="glyphicon glyphicon-book"></span> 关于 <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="http://www.stusgame.com/" target="_blank">StusGame</a></li>
                        <li><a href="https://kenvix.com/" target="_blank">Kenvix's
                                Blog</a></li>
                    </ul></li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>

    <!-- 侧边导航，宽屏设备可见 -->
    <div class="container bs-docs-container">
        <div class="row">
            <div class="col-md-3">
                <div class="bs-sidebar hidden-print visible-lg visible-md"
                    role="complementary">
                    <ul class="nav bs-sidenav">
                        <li></li>
                        <li class=""><a href="<%=request.getContextPath()%>/login/manager"><span
                                class="glyphicon glyphicon-home"></span> 首页</a></li>
                        <li class="active"><a
                            href="http://love.kfj.cc/index.php?mod=set"><span
                                class="glyphicon glyphicon-wrench"></span> 个人设置</a></li>
                        <li class=""><a
                            href="http://love.kfj.cc/index.php?mod=baiduid"><span
                                class="glyphicon glyphicon-link"></span> 百度账号管理</a></li>
                        <li class=""><a
                            href="http://love.kfj.cc/index.php?mod=showtb"><span
                                class="glyphicon glyphicon-calendar"></span> 云签到设置和日志</a></li>
                        <li><a href="http://love.kfj.cc/index.php?plugin=mok_bduss"><span
                                class="glyphicon glyphicon-exclamation-sign"></span> Bduss有效性检测</a></li>
                        <li><a href="http://love.kfj.cc/index.php?plugin=wmzz_ban"><span
                                class="glyphicon glyphicon-ban-circle"></span> 循环封禁</a></li>
                        <li><a href="http://love.kfj.cc/index.php?plugin=wmzz_post"><span
                                class="glyphicon glyphicon-cloud-upload"></span> 帖子云灌水</a></li>

                    </ul>
                </div>
            </div>
            <div class="col-md-9" role="main">
                <form action="http://love.kfj.cc/setting.php?mod=set" method="post">
                    <div class="table-responsive">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th style="width:40%">参数</th>
                                    <th>值</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>头像设置<br>您的真实姓名
                                    </td>
                                    <td> <input
                                        type="text" name="face_baiduid" value="${requestScope.user.userName}"
                                        class="form-control"></td>
                                </tr>
                                <tr>
                                    <td>邮箱设置<br>更改你在本站设置的邮箱地址
                                    </td>
                                    <td><input type="text" name="mail"
                                        value="${requestScope.user.userEmail}" class="form-control" required="">
                                    </td>
                                </tr>
                                <tr>
                                    <td>手机设置<br>更改你在本站设置的手机号码
                                    </td>
                                    <td><input type="text" class="form-control"
                                       value="${requestScope.user.userPhone}" name="wmzz_chpwd_newpw"></td>
                                </tr>
                                <tr>
                                    <td>更改密码<br>留空表示不更改密码
                                    </td>
                                    <td><input type="password" class="form-control"
                                        name="wmzz_chpwd_newpw"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <input type="submit" class="btn btn-primary" value="提交更改">
                </form>
            </div>
        </div>
    </div>
</body>
</html>