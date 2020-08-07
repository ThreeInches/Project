<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
	<base href="<%=basePath%>">
    <meta charset="UTF-8">
<title>login</title>
<style type="text/css">
#wrap {
	height: 719px;
	width: 100;
	background-color: #000000;
	background-repeat: no-repeat;
	background-position: center center;
	position: relative;
}
#head {
	height: 120px;
	width: 100;
	background: #252D37 url(images/img1.gif) repeat-x;
	text-align: center;
	position: relative;
}

#wrap .logGet {
	height: 490px;
	width: 368px;  
	position: absolute;
	background-color: #FFFFFF;
	top: 20%;
	right: 15%;
}
.logC a button {
	width: 100%;
	height: 45px;
	background-color: #ee7700;
	border: none;
	color: white;
	font-size: 18px;
}
.logGet .logD.logDtip .p1 {
	display: inline-block;
	font-size: 28px;
	margin-top: 30px;
	width: 86%;
}
#wrap .logGet .logD.logDtip {
	width: 86%;
	border-bottom: 1px solid #ee7700;
	margin-bottom: 60px;
	margin-top: 0px;
	margin-right: auto;
	margin-left: auto;
}
.logGet .lgD img {
	position: absolute;
	top: 12px;
	left: 8px;
}
.logGet .lgD input {
	width: 100%;
	height: 30px;
	text-indent: 2.5rem;
}
#wrap .logGet .lgD {
	width: 86%;
	position: relative;
	margin-bottom: 50px;
	margin-top: 0px;
	margin-right: auto;
	margin-left: auto;
}
#wrap .logGet .logC {
	width: 86%;
	margin-top: 10px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
}
 
 
.title {
	font-family: "宋体";
	color: #FFFFFF;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);  /* 使用css3的transform来实现 */
	font-size: 25px;
	height: 40px;
	width: 30%;
}

#wrap .logE {
	position: center;
	background-color: #FFFFFF;
	background-position: center center;
}

body {
	margin: 0;
	padding: 0;
	background: #252D37 url(images/img1.gif) repeat-x;
	font: normal 11px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color: #A4AFBD;
}

form {
	margin: 0;
	padding: 0;
}

h1, h2, h3, h4, h5, h6, h7{
	margin: 0;
	padding: 0;
	color: #FFFFFF;
}

h1 { font-size: 31px; }
h2 { font-size: 26px; }
h3 { font-size: 18px; }

p, ul, ol, blockquote {
	margin-top: 0;
	padding-top: 0;
	text-align: justify;
	line-height: 18px;
}

a {
	color: #95BA2E;
}

a:hover {
	text-decoration: none;
}

/* Boxed */

.boxed {
	margin: 0 0 20px 0;
	padding: 0 20px 20px 20px;
	background: url(images/img4.gif) repeat-x left bottom;
}

/* Post */

.post {
	margin: 0 0 20px 0;
	padding: 10px 20px 30px 20px;
	background: url(images/img4.gif) repeat-x left bottom;
}

.post h4 {
	margin-bottom: 20px;
	font-size: 11px;
	font-weight: normal;
}

.post h4 strong {
	font-weight: bold;
	color: #5B6F88;
}

/* Header */

#header {
	width: 904px;
	height: 140px;
	margin: 0 auto;
}

/* Menu */

#menu {
	float: left;
}

#menu ul {
	margin: 0;
	padding: 53px 0 0 0;
	list-style: none;
}

#menu li {
	display: inline;
}

#menu a {
	display: block;
	float: left;
	height: 25px;
	padding: 10px 15px 0 15px;
	text-transform: lowercase;
	text-decoration: none;
	font-size: 12px;
	font-weight: bold;
	color: #FFFFFF;
}

#menu a:hover {
	background: #0C7AC7 url(images/img2.gif) repeat-x;
}

/* Search */

#search {
	float: right;
	padding: 63px 0 0 0;
}

#textfield1 {
	width: 175px;
	background: #FFFFFF;
	border: none;
}

#submit1 {
	height: 19px;
	background: #6F9303;
	border: none;
	text-transform: lowercase;
	font-size: 10px;
	font-weight: bold;
	color: #FFFFFF;
}

/* Content */

#content {
	width: 904px;
	margin: 0 auto;
}

#colOne {
	float: left;
	width: 238px;
}

#colTwo {
	float: right;
	width: 646px;
}

/* ColOne Content */

#colOne ul {
	margin-left: 0;
	padding-left: 0;
	list-style: none;
}

#colOne li {
	padding: 5px 0 7px 0;
	border-top: 1px solid #3B495A;
}

#colOne li.first {
	border: none;
}

#colOne h3 {
	font-size: 15px;
}

#colTwo h7{
	margin-left:auto;
	font-size:13px;
}

/* ColTwo Content */

/* Logo */

#logo {
	margin: 0 0 20px 0;
	padding: 0 0 40px 20px;
	background: url(images/img3.gif) repeat-x left bottom;
}

#logo h1 {
	text-transform: lowercase;
}

#logo h2 {
	text-transform: lowercase;
	font-size: 12px;
}

#logo a {
	text-decoration: none;
	color: #FFFFFF;
}

/* Welcome */

#welcome {
	padding: 5px 20px 20px 20px;
}

#welcome h2 {
	margin-bottom: 25px;
}

#welcome .image {
	float: left;
	padding: 0 17px 0 0;
}

#welcome p {
	margin-bottom: 25px;
}

/* Footer */

#footer {
	clear: both;
	width: 904px;
	margin: 0 auto;
	background: url(images/img6.gif) repeat-x left top;
}

#footer p {
	margin: 0;
	padding: 30px;
	text-align: center;
}
</style>
 </head>
<body>
<div class="header" id="head">
  <div class="title">帅辰工程设备租赁管理系统</div>
</div>
	
<div class="wrap" id="wrap">
	<div id="logE">
		<img src="images/LOGO.jpg" alt="" width="310" height="140" class="image" /><br>	
		 <marquee behavior="alternate"><br>
			<img src="images/img公司风貌1.jpg" alt="" width="310" height="230" class="image" />
		    <img src="images/img公司风貌2.jpg" alt="" width="310" height="230" class="image" />
		    <img src="images/img公司风貌3.jpg" alt="" width="310" height="230" class="image" />
		    <img src="images/img公司风貌4.jpg" alt="" width="310" height="230" class="image" />
		    <img src="images/img公司风貌5.jpg" alt="" width="310" height="230" class="image" /><br>
			<img src="images/img公司风貌6.jpg" alt="" width="310" height="230" class="image" />
			<img src="images/img公司风貌7.jpg" alt="" width="310" height="230" class="image" />
			<img src="images/img公司风貌8.jpg" alt="" width="310" height="230" class="image" />
			<img src="images/img公司风貌9.jpg" alt="" width="310" height="230" class="image" />
			<img src="images/img公司风貌10.jpg" alt="" width="310" height="230" class="image" /><br>
	     </marquee>
	</div>
	
	<div class="logGet">
			<!-- 头部提示信息 -->
			<div class="logD logDtip">
				<p class="p1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</nbsp>登录界面</p>
				
			</div>
			<!-- 输入框 -->
	        <form action="handle/login" name="myform" method="post"  class="form-horizontal" role="form" >
				<div class="lgD">
					<img src="images/user.png" width="20" height="20" alt=""/>
					<label><input type="text" class="form-control"placeholder="请输入您的用户名"name="uname"></label>
				</div>
				<div class="lgD">
					<img src="images/pwd.png" width="20" height="20" alt=""/>
					<label><input type="password" class="form-control"placeholder="请输入您的密码" name="upwd"></label>
				</div>
			    <div class="logC">
					<a href="meau.jsp" target="_self"><button>登 录</button></a>
				</div><br>
				<div class="logC">
					<a href="http://localhost:8080/" target="_self"><button>取 消</button></a>
				</div> 
				${erroMessage }  	
			</form>		
	</div>
</div>

<div id="footer">
	<P class = "texts">版权所有.帅辰工程设备租赁管理系统.2020.07.10 Designed By <a.herf="http://">shuaichen engineering equipment<strong></p>
</div>
</body>
</html>
