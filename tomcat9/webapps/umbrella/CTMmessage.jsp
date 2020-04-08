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
        <a href="OrderDisplay" class="mdui-list-item mdui-ripple ">留言板块</a>
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
  <h1 class="doc-title mdui-text-color-theme">留言面板
  <button  style="float:right" id="display" class="mdui-btn mdui-btn-raised mdui-ripple mdui-color-theme-accent">Display</button>
  </h1>
  <div class="mdui-card">
  <div class="mdui-card-media" >
	<div class="mdui-textfield mdui-textfield-floating-label">
		<i class="mdui-icon material-icons">textsms</i>
		<label class="mdui-textfield-label">Message</label>
		<textarea id="message" class="mdui-textfield-input"></textarea>
	</div>
    
  </div>
  <div class="mdui-card-actions">
    <button style="float:right" id="send" class="mdui-btn mdui-btn-raised mdui-ripple mdui-color-theme-accent">send</button>
  </div>
</div>

<div class="mdui-dialog" id="dialog" >
	<div class="mdui-dialog-content">
	<p>留言成功！</p>
	</div>
</div>

<div class="mdui-table-fluid">
  <table class="mdui-table">
    <thead>
      <tr>
        <th>#</th>
		<th>Date</th>
        <th>Content</th>
		<th>Reply</th>
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

var inst = new mdui.Dialog('#dialog');     

document.getElementById("send")  
.addEventListener("click", function() {
sendmessage();
});
function sendmessage(){
			var post_data = {
                "Message": $("#message").val()	
            };

            $.ajax({
                url: "CTMmessage",
                type: "POST",
                data: post_data,
                success: function (data,textStatus) {
                    var result = data.result;

					if (result == "success!"){
						inst.open();
					}
                }
            });
};

document.getElementById("display")  
.addEventListener("click", function() {
displaymessage();
});
function displaymessage(){
			var post_data = {
            };

            $.ajax({
                url: "CTMmessageDisplay",
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
				html+="<td>"+data[i].Date+"</td>";
				html+="<td>"+data[i].Content+"</td>";
				html+="<td>"+data[i].Reply+"</td>";
				html+="</tr>";
            }
            $("#newcontent").html(html);//显示处理后的数据
}

	
}, false);  

</script>  