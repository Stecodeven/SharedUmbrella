<!-- jyh -->
<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=no"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  <title>umbrella</title>

  <link rel="stylesheet" href="css/mdui.css"> 
  <script src="js/mdui.js"></script>
  
</head>
<body class="mdui-drawer-body-left mdui-appbar-with-toolbar  mdui-theme-primary-indigo mdui-theme-accent-pink mdui-loaded">
<header class="mdui-appbar mdui-appbar-fixed">
  <div class="mdui-toolbar mdui-color-yellow-600">
    <span class="mdui-btn mdui-btn-icon mdui-ripple mdui-ripple-white" mdui-drawer="{target: '#main-drawer', swipe: true}"><i class="mdui-icon material-icons">menu</i></span>
		<a href="indexAdministrator.jsp" class="mdui-typo-title">umbrella</a>
		<p class="mdui-typo-title">共享雨伞</p>
		<div class="mdui-toolbar-spacer"></div>
		<a href="login.jsp" class="mdui-btn mdui-btn-icon mdui-ripple mdui-ripple-white" mdui-tooltip="{content: '注销'}"><i class="mdui-icon material-icons">transfer_within_a_station</i></a>
  </div>
</header>

<div class="mdui-drawer" id="main-drawer">
  <div class="mdui-list" mdui-collapse="{accordion: true}" style="margin-bottom: 76px;">
    <div class="mdui-collapse-item ">
      <div class="mdui-collapse-item-header mdui-list-item mdui-ripple">
        <i class="mdui-icon material-icons">account_circle</i>
        <div class="mdui-list-item-content"><p class="mdui-typo-title">&nbsp;&nbsp;管理员</p></div>
		<i class="mdui-collapse-item-arrow mdui-icon material-icons">keyboard_arrow_down</i>
      </div>
      <div class="mdui-collapse-item-body mdui-list">
        <a href="ADdetailServlet" class="mdui-list-item mdui-ripple ">管理员信息</a>
        <a href="ADexpassword.jsp" class="mdui-list-item mdui-ripple ">密码修改</a>
      </div>
    </div>
	 <div class="mdui-collapse-item ">
      <div class="mdui-collapse-item-header mdui-list-item mdui-ripple">
        <i class="mdui-icon material-icons">account_circle</i>
        <div class="mdui-list-item-content"><p class="mdui-typo-title">&nbsp;&nbsp;用户管理</p></div>
		<i class="mdui-collapse-item-arrow mdui-icon material-icons">keyboard_arrow_down</i>
      </div>
      <div class="mdui-collapse-item-body mdui-list">
		<a href="checkCustomer.jsp" class="mdui-list-item mdui-ripple ">用户信息查询</a>
      </div>
    </div>
	
	<div class="mdui-collapse-item ">
      <div class="mdui-collapse-item-header mdui-list-item mdui-ripple">
        <i class="mdui-icon material-icons">beach_access</i>
        <div class="mdui-list-item-content"><p class="mdui-typo-title">&nbsp;&nbsp;共享雨伞管理</p></div>
	<i class="mdui-collapse-item-arrow mdui-icon material-icons">keyboard_arrow_down</i>
      </div>
      <div class="mdui-collapse-item-body mdui-list">
        <a href="umbrellasupplement.jsp" class="mdui-list-item mdui-ripple ">雨伞补充</a>
		<a href="FinishedOrder.jsp" class="mdui-list-item mdui-ripple ">已完成订单查询</a>
		<a href="UnfinishedOrder.jsp" class="mdui-list-item mdui-ripple ">未完成订单查询</a>
      </div>
    </div>
	
	<div class="mdui-collapse-item ">
      <div class="mdui-collapse-item-header mdui-list-item mdui-ripple">
        <i class="mdui-icon material-icons">work</i>
        <div class="mdui-list-item-content"><p class="mdui-typo-title">&nbsp;&nbsp;留言管理</p></div>
		<i class="mdui-collapse-item-arrow mdui-icon material-icons">keyboard_arrow_down</i>
      </div>
      <div class="mdui-collapse-item-body mdui-list">
		<a href="ADmessageReply.jsp" class="mdui-list-item mdui-ripple ">留言回复</a>
      </div>
    </div>
	
	<!--<div class="mdui-collapse-item ">
      <div class="mdui-collapse-item-header mdui-list-item mdui-ripple">
        <i class="mdui-icon material-icons">work</i>
        <div class="mdui-list-item-content"><p class="mdui-typo-title">&nbsp;&nbsp;逾期处理</p></div>
		<i class="mdui-collapse-item-arrow mdui-icon material-icons">keyboard_arrow_down</i>
      </div>
      <div class="mdui-collapse-item-body mdui-list">
        <a href="html/balance.html" class="mdui-list-item mdui-ripple ">逾期人员名单</a>
      </div>
    </div>
	
	-->
     
  </div>
</div>

<a id="anchor-top"></a>

<div class="mdui-container ">

  <div class="mdui-card">

  <!-- 卡片头部，包含头像、标题、副标题 -->
  <div class="mdui-card-header">
    <img class="mdui-card-header-avatar" src="images/blackcat.jpg"/>
    <div class="mdui-card-header-title">Steven Zhang</div>
    <div class="mdui-card-header-subtitle">Administrator</div>
  </div>
  
  <!-- 卡片的媒体内容，可以包含图片、视频等媒体内容，以及标题、副标题 -->
  <div class="mdui-card-media">
    <img src="images/card.jpg"/>
    
    <!-- 卡片中可以包含一个或多个菜单按钮 -->
    <div class="mdui-card-menu">
      <button class="mdui-btn mdui-btn-icon mdui-text-color-white"><i class="mdui-icon material-icons">share</i></button>
    </div>
  </div>
  

  
  
</div>


</div>

  </div>
</div>
</body>
</html>