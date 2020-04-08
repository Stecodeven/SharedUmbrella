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
  <script src="js/jquery-3.2.1.min.js"></script>
</head>
<body class="mdui-drawer-body-left mdui-appbar-with-toolbar  mdui-theme-primary-indigo mdui-theme-accent-pink mdui-loaded">
<header class="mdui-appbar mdui-appbar-fixed">
  <div class="mdui-toolbar mdui-color-yellow-600">
    <span class="mdui-btn mdui-btn-icon mdui-ripple mdui-ripple-white" mdui-drawer="{target: '#main-drawer', swipe: true}"><i class="mdui-icon material-icons">menu</i></span>
		<a href="indexCustomer.jsp" class="mdui-typo-title">umbrella</a>
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
        <div class="mdui-list-item-content"><p class="mdui-typo-title">&nbsp;&nbsp;用户</p></div>
		<i class="mdui-collapse-item-arrow mdui-icon material-icons">keyboard_arrow_down</i>
      </div>
      <div class="mdui-collapse-item-body mdui-list">
        <a href="CTMdetailServlet" class="mdui-list-item mdui-ripple ">用户信息</a>
        <a href="CTMexpassword.jsp" class="mdui-list-item mdui-ripple ">密码修改</a>
      </div>
    </div>
	 
	
	<div class="mdui-collapse-item ">
      <div class="mdui-collapse-item-header mdui-list-item mdui-ripple">
        <i class="mdui-icon material-icons">beach_access</i>
        <div class="mdui-list-item-content"><p class="mdui-typo-title">&nbsp;&nbsp;共享雨伞管理</p></div>
	<i class="mdui-collapse-item-arrow mdui-icon material-icons">keyboard_arrow_down</i>
      </div>
      <div class="mdui-collapse-item-body mdui-list">
        <a href="OrderUmbrella.jsp" class="mdui-list-item mdui-ripple ">订/还伞</a>
        <a href="OrderDisplay" class="mdui-list-item mdui-ripple ">订单情况</a>
      </div>
    </div>
	
	<div class="mdui-collapse-item ">
      <div class="mdui-collapse-item-header mdui-list-item mdui-ripple">
        <i class="mdui-icon material-icons">work</i>
        <div class="mdui-list-item-content"><p class="mdui-typo-title">&nbsp;&nbsp;留言管理</p></div>
    <i class="mdui-collapse-item-arrow mdui-icon material-icons">keyboard_arrow_down</i>
      </div>
      <div class="mdui-collapse-item-body mdui-list">
        <a href="CTMmessage.jsp" class="mdui-list-item mdui-ripple ">留言板块</a>
      </div>
    </div>  

     
  </div>
</div>

<a id="anchor-top"></a>
<div class="mdui-container ">
<h1 class="doc-title mdui-text-color-theme">订单情况
<button  style="float:right" id="display" class="mdui-btn mdui-btn-raised mdui-ripple mdui-color-theme-accent">Display</button>
</h1>
<%
   String orderNo = (String)request.getAttribute("orderNo").toString();
   String orderTime = (String)request.getAttribute("orderTime").toString();
   String placeNo = (String)request.getAttribute( "placeNo").toString();
%>
<p id="orderNo" class="mdui-typo-title">订单号：<%=orderNo%></p> 
<p id="orderTime" class="mdui-typo-title">下单时间：<%=orderTime%></p> 
<p id="placeNo" class="mdui-typo-title">借伞地点号：<%=placeNo%></p> 


<div class="mdui-table-fluid">
  <table class="mdui-table">
    <thead>
      <tr>
        <th>#</th>
		<th>orderNo</th>
        <th>orderTime</th>
		<th>placeNo</th>
      </tr>
    </thead>
    <tbody id="newcontent">

    </tbody>
  </table>
</div>

</div>
</body>
</html>
<script type="text/javascript">  
// Put event listeners into place  
window.addEventListener("DOMContentLoaded", function() {  
      
document.getElementById("display")  
.addEventListener("click", function() {
checkpost();
});
function checkpost(){
		
            $.ajax({
                url: "OrderDisplayHistory",
                type: "POST",
                data: '',
                success: function (data,textStatus) {
                    display(data);
					
                }
            });
};	

function display(data){ 
            var html ="";
            for(i=0;i<data.length;i++){
				number=i+1;
				html+="<tr>";
				html+="<td>"+number+"</td>";
				html+="<td>"+data[i].orderNo+"</td>";
				html+="<td>"+data[i].orderTime+"</td>";
				html+="<td>"+data[i].placeNo+"</td>";
				html+="</tr>";
            }
            $("#newcontent").html(html);//显示处理后的数据
}

}, false);  

</script>  

	