<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>menu</title>
<style type="text/css">
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
	
	h1, h2, h3, h4, h5, h6, h7 {
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
		color: #6F9303;
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
		margin-bottom: 40px;
		font-size: 12px;
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
		padding: 50px 0 0 0;
		list-style: none;
	}
	#menu ul li {
		margin: 0;
		padding: 0px 0 0 0;
		float:left;
		line hight:10px;
		text-align: left;
		display: inline; /*菜单头排成一行*/
		position:relative;
	}
	#menu ul li ul{
		margin: 0;
		padding: 0px 0 0 0;
		float:none;
		border left:none;
		display:none;
		width:2px;
		margin-top:2px;
		text-align:center;
	}
	#menu ul li:hover ul{
		display: block;
	}
	#menu a {
		display: block; /*块*/
		float: left;
		height: 25px;
		padding: 10px 15px 0 15px;
		text-transform: lowercase; /*文本转换为小写字母*/
		text-decoration: none;
		font-size: 12px;
		font-weight: bold; /*黑体*/
		color: #FFFFFF;
	}
	
	#menu a:hover {
		background: #0C7AC7 url(images/img2.gif) repeat-x; /*横向平铺*/
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
		float: left;
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
		solid #FFFFFF;
	}
	
	#colOne li{
		border: none;
	}
	
	#colOne h3 {
		font-size: 20px;
	}
	
	/* ColTwo Content */
	#colTwo h7 {
		margin-left: auto;
		font-size: 13px;
	}
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
		font-size: 25px;
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
		font-family:"blackadder itc"
	}
	
	#welcome .image {
		float: left;
		padding: 0 17px 0 0;
	}
	
	#welcome p {
		margin-left: 126px;
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
<div id="header">
	<div id="menu">
		<ul>
			<li><a href="#" accesskey="1" title="">获奖员工名单</a>
			    <ul>
					<li><a href="#" accesskey="1" title="">2020</a></li>
				</ul>
			</li>
	
			<li><a href="#" accesskey="2" title="">企业风采</a>
			    <ul>
					<li><a href="#" accesskey="2" title="">公司环境</a></li>
				</ul>
			</li>
	
			<li><a href="#" accesskey="3" title="">关于我们</a>
			    <ul>
				    <li><a href="#" accesskey="3" title="">平台声明</a></li>
				</ul>
			</li>
			
			<li><a href="#" accesskey="4" title="">联系我们</a>
			<ul>
				<li><a href="#" accesskey="4" title="">投诉反馈</a></li><br>
				</ul>
			</li>
		</ul>
	</div>
	<div id="search">
		<form id="form1" method="get" action="">
			<div>
				<input type="text" name="textfield1" id="textfield1" />
				<input type="submit" name="submit1" id="submit1" value="Search" />
			</div>
		</form>
	</div>
</div>

<div id="content">
	<div id="colOne">
		<div id="logo">
			<h2><center>菜单导航</center></h2>
		</div>
		<div class="boxed">
			<h3><a href="/handle/selectAllRentByPage?currentPage=1" target=" target="_blank" title="转到租赁信息管理界面">租赁信息管理</a></h3>
			<circle>
				<li>录入租赁信息</li>
				<li>修改租赁信息</li>
				<li>查询租赁信息</li>
			</circle>
		</div>
		<div class="boxed">
			<h3><a href="/handle/selectAllDeviceByPage?currentPage=1" target="_blank" title="转到设备信息管理界面">设备信息管理</a></h3>
			<circle>
				<li>录入设备信息</li>
				<li>修改设备信息</li>
				<li>查询设备信息</li>
			</circle>
		</div>
		<div class="boxed">
			<h3><a href="/handle/selectAllRepairByPage?currentPage=1" target="_blank" title="转到维修信息管理界面">维修信息管理</a></h3>
			<circle>
				<li>录入维修记录</li>
				<li>查询维修记录</li>
			</circle>
		</div>
		<div class="boxed">
			<h3><a href="/handle/selectAllCustomByPage?currentPage=1" target="_blank" title="转到客户信息管理界面">客户信息管理</a></h3>
			<circle>
				<li>录入客户信息</li>
				<li>删除客户信息</li>
				<li>修改客户信息</li>
				<li>查询客户信息</li>
			</circle>
		</div>
		<div class="boxed">
			<h3><a href="/handle/selectAllMoneyByPage?currentPage=1" target="_blank" title="转到财务信息管理界面">财务信息管理</a></h3>
			<circle>
				<li>录入计费信息</li>
				<li>修改计费信息</li>
				<li>查询计费信息</li>
			</circle>
		</div>
		<div class="boxed">
			<h3><a href="/handle/selectAllUserByPage?currentPage=1" target="_blank" title="转到人事信息管理界面">企业人事管理</a></h3>
			<circle>
				<li>录入员工信息</li>
				<li>删除员工信息</li>
				<li>修改员工信息</li>
				<li>查询员工信息</li>
			</circle>
		</div>
	</div>
	<div id="colTwo">
		<div id="welcome">
			<h1> <center>欢迎来到帅辰工程设备租赁管理平台！</center></h1>
			<h2><div><center>Welcome to shuaichen engineering equipment leasing management platform!</center></h2>
			<img src="images/LOGO.jpg" alt="" width="620" height="280" class="image" />
		<div class="post">
			<h7><div><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;left Introduction to the platform：</strong>帅辰工程设备租赁公司成立于2020-6-29，为坚持“深化改革、市场导向、重点突破、引领行业”的科技发展战略，现已成为工程设备租赁重要供货商，深受多方好评。今后我们将本着创新发展，用户至上的原则把主营业务搞好，在信息时代我们还将积极利用新的经营方法如开展电子商务等。</div></h7>
			<h7><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;近年来平台为广大帅辰工程设备租赁平台的主营业务为：工程设备租赁。一直以稳定可靠的产品质量和良好的经营信誉，取得了广大客户的信任,如您对我们产品及服务有兴趣欢迎与我们来人、来电、来邮联系，我们期盼合作。</div></h7>
			<h7><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;若想进一步了解本单位的详细情况，请关注本单位的官微、官网。同时欢迎你到：陕西省西安市未央区帅辰工程设备租赁公司实地考察。</div></h7>	
		</div>
		<div class="post">
			<h3>本季租赁热榜店铺</h3>
			<h4><strong>2020.7.9</strong> | <a href="https://b2b.baidu.com/ss?q=%E5%B7%A5%E7%A8%8B%E8%AE%BE%E5%A4%87%E7%A7%9F%E8%B5%81%E5%B9%B3%E5%8F%B0&from=b2b_straight&srcid=5103&from_restype=product">热销产品店铺推荐，精彩不容错过！</a></h4>
			<img src="images/img洒水车.jpg" alt="" width="50" height="50" class="image" />
			<h7>此款洒水车耐用性极强，新款东风牌EQ5090GSSL型，6月份创销售新高，是洒水车之中的极品，报价￥8万元</h7>	
		</div>
		<div class="post">
			<img src="images/img起重机.jpg" alt="" width="50" height="50" class="image" />
		    <h7>此款型号QD 20/5t—22.5m A6的起重机拥有诸多优点，有“室外大力士”之美誉，在工程中会发挥其巨大作用，因此“机甲战士”店铺也因此榜上有名，成为仅此于洒水车销量的热销品牌，报价￥15万元<h7>
		</div>
		<div class="post">
		    <img src="images/img柴油发电机.jpg" alt="" width="50" height="50" class="image" />
		    <h7>此款发电机胜在灵活性与耐受性，租赁费用较低，损坏程度的比率相比其他产品更低风险，是工程设备租赁的不二选择，性价比之高使得其销量稳居第三，报价￥5万元<h7>
	    </div>
	</div>
		<div class="post">
			<h3>已成交订单</h3>
			<h4><strong>2020.7.9</strong> | <a href="https://www.bjhuizhu.com/">敬请期待...</a></h4>
		</div>
	</div>
</div>
        <div id="footer">
	<p>版权所有.帅辰工程设备租赁管理系统.2020.07.10 Designed By <a href="http://localhost:8080/">shuaichen engineering equipment<strong></strong></p>
</div>
</body>
</html>