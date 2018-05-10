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
  <script src="js/jquery-3.2.1.min.js"></script>
  
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
        <div class="mdui-list-item-content"><p class="mdui-typo-title">&nbsp;&nbsp;供货商管理</p></div>
		<i class="mdui-collapse-item-arrow mdui-icon material-icons">keyboard_arrow_down</i>
      </div>
      <div class="mdui-collapse-item-body mdui-list">
        <a href="html/balance.html" class="mdui-list-item mdui-ripple ">采购单信息查询</a>
		<a href="html/balance.html" class="mdui-list-item mdui-ripple ">采购单增改</a>
      </div>
    </div>
	
	<div class="mdui-collapse-item ">
      <div class="mdui-collapse-item-header mdui-list-item mdui-ripple">
        <i class="mdui-icon material-icons">work</i>
        <div class="mdui-list-item-content"><p class="mdui-typo-title">&nbsp;&nbsp;物流管理</p></div>
		<i class="mdui-collapse-item-arrow mdui-icon material-icons">keyboard_arrow_down</i>
      </div>
      <div class="mdui-collapse-item-body mdui-list">
        <a href="html/balance.html" class="mdui-list-item mdui-ripple ">物流信息录入</a>
		<a href="html/balance.html" class="mdui-list-item mdui-ripple ">物流信息查询</a>
      </div>
    </div>
	
	<div class="mdui-collapse-item ">
      <div class="mdui-collapse-item-header mdui-list-item mdui-ripple">
        <i class="mdui-icon material-icons">work</i>
        <div class="mdui-list-item-content"><p class="mdui-typo-title">&nbsp;&nbsp;留言管理</p></div>
		<i class="mdui-collapse-item-arrow mdui-icon material-icons">keyboard_arrow_down</i>
      </div>
      <div class="mdui-collapse-item-body mdui-list">
		<a href="html/balance.html" class="mdui-list-item mdui-ripple ">留言回复</a>
      </div>
    </div>-->
     
  </div>
</div>


<a id="anchor-top"></a>
<div class="mdui-container ">
  <h1 class="doc-title mdui-text-color-theme">用户信息查询</h1>
  <div class="mdui-tab" mdui-tab>
  <a href="#example1-tab1" class="mdui-ripple">用户手机</a>
  <a href="#example1-tab2" class="mdui-ripple">用户姓名</a>
  <a href="#example1-tab3" class="mdui-ripple">用户性别</a>
</div>
<div id="example1-tab1" class="mdui-p-a-2">
<div class="mdui-textfield">

  <input id="phone" name="phone" class="mdui-textfield-input"  type="text" placeholder="Phone Search"/>
  <p></p>
  <button  class="mdui-btn mdui-btn-raised mdui-ripple mdui-color-theme-accent" type="submit" id="phonecheck">查询</button>

</div>
</div>
<div id="example1-tab2" class="mdui-p-a-2">
<div class="mdui-textfield" >

  <input id="name" name="name" class="mdui-textfield-input"  type="text" placeholder="Name Search"/>
  <p></p>
  <button  class="mdui-btn mdui-btn-raised mdui-ripple mdui-color-theme-accent" type="submit" id="namecheck">查询</button>

</div>
</div>
<div id="example1-tab3" class="mdui-p-a-2">
<div class="mdui-textfield">

  <input id="sex" name="sex" class="mdui-textfield-input"  type="text" placeholder="m or f"/>
  <p></p>
  <button  class="mdui-btn mdui-btn-raised mdui-ripple mdui-color-theme-accent" type="submit" id="sexcheck">查询</button>

</div>
</div>
<p id="result"></p>
<div class="mdui-table-fluid">
  <table class="mdui-table">
    <thead>
      <tr>
        <th>#</th>
        <th>Name</th>
        <th>Phone</th>
        <th>Sex</th>
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
      
document.getElementById("phonecheck")  
.addEventListener("click", function() {
checkpostphone();
});
function checkpostphone(){
			var post_data = {
				"phone": $("#phone").val()	
            };

            $.ajax({
                url: "SelPhone",
                type: "POST",
                data: post_data,
                success: function (data,textStatus) {
					display(data);
                }
            });
};	

document.getElementById("namecheck")  
.addEventListener("click", function() {
checkpostname();
});
function checkpostname(){
			var post_data = {
				"name": $("#name").val()	
            };

            $.ajax({
                url: "SelName",
                type: "POST",
                data: post_data,
                success: function (data,textStatus) {
                    display(data);
                }
            });
};	

document.getElementById("sexcheck")  
.addEventListener("click", function() {
checkpostsex();
});
function checkpostsex(){
			var post_data = {
				"sex": $("#sex").val()	
            };

            $.ajax({
                url: "SelSex",
                type: "POST",
                data: post_data,
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
				html+="<td>"+data[i].name+"</td>";
				html+="<td>"+data[i].phone+"</td>";
				html+="<td>"+data[i].sex+"</td>";
				html+="</tr>";
            }
            $("#newcontent").html(html);//显示处理后的数据
}

}, false);  

</script>  