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
	
     
  </div>
</div>

<a id="anchor-top"></a>
<div class="mdui-container ">
  <h1 class="doc-title mdui-text-color-theme">雨伞补充</h1>
  <div class="mdui-tab" mdui-tab>
  <a href="#example1-tab1" class="mdui-ripple">服务点雨伞配送</a>
  <a href="#example1-tab2" class="mdui-ripple">仓库雨伞补充</a>
</div>
<div id="example1-tab1" class="mdui-p-a-2">
<div class="mdui-textfield">
	<p class="mdui-typo-title">
	仓库:
	<select  id="storage1"  class="mdui-select">
		<option value="001">华理一仓</option>
		<option value="002">华理二仓</option>
	</select>
	</p>
	<p class="mdui-typo-title">
	服务点:
	<select id="service" class="mdui-select">
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
	</p>
	<p class="mdui-typo-title">
	配送公司:
	<select id="company" class="mdui-select">
		<option value="001">中通</option>
		<option value="002">韵达</option>
		<option value="003">顺丰</option>
		<option value="004">圆通</option>
	</select>
	</p>
  <input id="SPnumber" name="SPnumber" class="mdui-textfield-input" type="text" placeholder="Number"/>
  <p></p>
  <button  class="mdui-btn mdui-btn-raised mdui-ripple mdui-color-theme-accent" mdui-dialog="{target: '#ServicePoint'}" type="submit" id="ServicePointCheck">生成</button>
	<div class="mdui-dialog" id="ServicePoint">
		<div class="mdui-dialog-content">确定生成服务点配送单？</div>
		<div class="mdui-dialog-actions">
		<button class="mdui-btn mdui-ripple" mdui-dialog-close>取消</button>
		<button id="ServicePointPOST" class="mdui-btn mdui-ripple" mdui-dialog-confirm>确定</button>
		</div>
	</div>
	<p id="result1"></p>
</div>
</div>
<div id="example1-tab2" class="mdui-p-a-2">
<div class="mdui-textfield">
	<p class="mdui-typo-title">
	仓库:
	<select id="storage2" class="mdui-select">
		<option value="001">华理一仓</option>
		<option value="002">华理二仓</option>
	</select>
	</p>
	<p class="mdui-typo-title">
	供货商:
	<select id="supplier" class="mdui-select">
		<option value="001">天堂伞业</option>
		<option value="002">太阳城雨具</option>
	</select>
	</p>
  <input id="STnumber" name="STnumber" class="mdui-textfield-input"  type="text" placeholder="Number"/>
  <p></p>
	<button  class="mdui-btn mdui-btn-raised mdui-ripple mdui-color-theme-accent" mdui-dialog="{target: '#Storage'}" type="submit" id="StorageCheck">生成</button>
	<div class="mdui-dialog" id="Storage">
		<div class="mdui-dialog-content">确定生成仓库补充单？</div>
		<div class="mdui-dialog-actions">
		<button class="mdui-btn mdui-ripple" mdui-dialog-close>取消</button>
		<button style="float:right"id="StoragePOST" class="mdui-btn mdui-ripple" mdui-dialog-confirm>确定</button>
		</div>
	</div>
	<p id="result2"></p>
</div>
</div>

<div class="mdui-dialog" id="dialog1" >
	<div class="mdui-dialog-content">
	<p>服务点配送单成功生成！</p>
	</div>
</div>

<div class="mdui-dialog" id="dialog2" >
	<div class="mdui-dialog-content">
	<p>仓库补充单成功生成！</p>
	</div>
</div>
<!--<div class="mdui-table-fluid">
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
</div>-->


</div>


</body>
</html>

<script type="text/javascript">  
// Put event listeners into place  
window.addEventListener("DOMContentLoaded", function() {  

var inst1 = new mdui.Dialog('#dialog1');
var inst2 = new mdui.Dialog('#dialog2');
      
document.getElementById("ServicePointPOST")  
.addEventListener("click", function() {
servicepost();
});
function servicepost(){
			var post_data = {
				"StoreNo": $('#storage1 option:selected') .val(),
				"PlaceNo": $('#service option:selected') .val(),
				"Number": $("#SPnumber").val(),
				"CompNo": $('#company option:selected') .val()
            };

            $.ajax({
                url: "ServicePointSupply",
                type: "POST",
                data: post_data,
                success: function (data,textStatus) {
					var result = data.result;
					if (result == "success!"){
						inst1.open();
					}
                }
            });
};
document.getElementById("StoragePOST")  
.addEventListener("click", function() {
storagepost();
});
function storagepost(){
			var post_data = {
				"StoreNo": $('#storage2 option:selected') .val(),
				"SupplierNo": $('#supplier option:selected') .val(),
				"Number": $('#STnumber').val()
            };

            $.ajax({
                url: "StorageSupply",
                type: "POST",
                data: post_data,
                success: function (data,textStatus) {
					var result = data.result;
					if (result == "success!"){
						inst2.open();
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