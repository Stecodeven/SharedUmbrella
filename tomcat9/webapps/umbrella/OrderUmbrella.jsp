<!--还没改 zzp -->
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
  <h1 class="doc-title mdui-text-color-theme">订/还伞服务</h1>
  


	<div class="mdui-card">
	<div class="mdui-card-actions">
		<select id="servicepoint" class="mdui-select" mdui-select="{position: 'bottom'}">
			<option value="001">一食堂</option>
			<option value="007">A教学楼</option>
			<option value="008">B教学楼</option>
			<option value="009">C教学楼</option>
			<option value="010">D教学楼</option>
			<option value="011">E教学楼</option>
			<option value="006">4号楼</option>
			<option value="012">田径场</option>
			<option value="020">图书馆</option>
		</select>
		&nbsp;&nbsp&nbsp;&nbsp;
    <button class="mdui-btn mdui-btn-raised mdui-ripple mdui-color-theme-accent" mdui-dialog="{target: '#borrow'}">borrow</button>
	<div class="mdui-dialog" id="borrow">
		<div class="mdui-dialog-content">确定订伞？</div>
		<div class="mdui-dialog-actions">
		<button class="mdui-btn mdui-ripple" mdui-dialog-close>取消</button>
		<button id="Borrowcheck" class="mdui-btn mdui-ripple" mdui-dialog-confirm>确定</button>
		</div>
	</div>
	&nbsp;&nbsp;
    <button class="mdui-btn mdui-btn-raised mdui-ripple mdui-color-theme-accent" mdui-dialog="{target: '#return'}">return</button>
		<div class="mdui-dialog" id="return">
			<div class="mdui-dialog-content">确定还伞？</div>
			<div class="mdui-dialog-actions">
			<button class="mdui-btn mdui-ripple" mdui-dialog-close>取消</button>
			<button id="Returncheck" class="mdui-btn mdui-ripple" mdui-dialog-confirm>确定</button>
			</div>
		</div>
	</div>
  <div class="mdui-card-media">
    <!-- <img src="images/card.jpg"/> -->
    <iframe   src="map.html" width="905" height="550"   frameborder="0"  name="iframemap"     scrolling="no">     
    </iframe> 
    <!-- <div class="mdui-card-media-covered mdui-card-media-covered-transparent mdui-card-media-covered-top"> -->
      <!-- <div class="mdui-card-primary"> -->
        <!-- <div class="mdui-card-primary-title">umbrella</div> -->
        <!-- <div class="mdui-card-primary-subtitle">ECUST</div> -->
      <!-- </div> -->
    <!-- </div> -->
  </div>
  
</div>
<div class="mdui-dialog" id="dialog1" >
	<div class="mdui-dialog-content">
	<p>借伞成功！</p>
	</div>
</div>
<div class="mdui-dialog" id="dialog2" >
	<div class="mdui-dialog-content">
	<p>您已借了一把伞！</p>
	</div>
</div>
<div class="mdui-dialog" id="dialog3" >
	<div class="mdui-dialog-content">
	<p>还伞成功！</p>
	</div>
</div>




</div>

 

</body>
</html>

<script type="text/javascript">  
// Put event listeners into place  
window.addEventListener("DOMContentLoaded", function() {  

$('#servicepoint option:selected') .val();

var inst1 = new mdui.Dialog('#dialog1');
var inst2 = new mdui.Dialog('#dialog2');
var inst3 = new mdui.Dialog('#dialog3');
      
document.getElementById("Borrowcheck")  
.addEventListener("click", function() {
borrowcheck();
});
function borrowcheck(){
			var post_data = {
				"PlaceNo": $('#servicepoint option:selected') .val()
				
            };

            $.ajax({
                url: "OrderUmbrella",
                type: "POST",
                data: post_data,
                success: function (data,textStatus) {
					var result = data.result;
					if (result == "success!"){
						inst1.open();
					}
					else if(result == "You have ordered an umbrella!"){
						inst2.open();
					}
                }
            });
};

document.getElementById("Returncheck")  
.addEventListener("click", function() {
returncheck();
});
function returncheck(){
			var post_data = {
				"PlaceNo": $('#servicepoint option:selected') .val()
            };

            $.ajax({
                url: "ReturnUmbrella",
                type: "POST",
                data: post_data,
                success: function (data,textStatus) {
					var result = data.result;
					if (result == "success!"){
						inst3.open();
					}
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