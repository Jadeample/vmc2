<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>租车平台</title>
<link rel="icon" href="carimg/租车log.jpg" type="image/ico">
<meta name="author" content="yinqi">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/materialdesignicons.min.css" rel="stylesheet">
<link rel="stylesheet" href="js/bootstrap-multitabs/multitabs.min.css">
<link href="css/style.min.css" rel="stylesheet">
<!--对话框-->
<link rel="stylesheet" href="js/jconfirm/jquery-confirm.min.css">
</head>
  
<body>
<div class="lyear-layout-web">
  <div class="lyear-layout-container">
    <!--左侧导航-->
    <aside class="lyear-layout-sidebar">
      
      <!-- logo -->
      <div id="logo" class="sidebar-header">
        <a href="index.jsp"><img src="carimg/租车log.jpg" style="width: 80%;" title="LightYear" alt="LightYear" /></a>
      </div>
      <div class="lyear-layout-sidebar-scroll"> 
        
        <nav class="sidebar-main">
          <ul class="nav nav-drawer">
            <li class="nav-item active"> <a class="multitabs" href="EMD_main.jsp"><i class="mdi mdi-home"></i> <span>首页</span></a> </li>
            <li class="nav-item nav-item-has-subnav">
              <a href="javascript:void(0)"><i class="mdi mdi-video"></i> <span>监测与评估</span></a>
              <ul class="nav nav-subnav">
                <li> <a class="multitabs" href="EMD_shop_sell.jsp">车辆租赁分析</a> </li>
                <li> <a class="multitabs" href="EMD_user_sell.jsp">用户信息</a> </li>
              </ul>
            </li>
            <li class="nav-item nav-item-has-subnav">
              <a href="javascript:void(0)"><i class="mdi mdi-view-grid"></i> <span>订单信息表</span></a>
              <ul class="nav nav-subnav">
                <li> <a class="multitabs" href="ORDERS_show.jsp">浏览订单信息</a> </li>
                <li> <a class="multitabs" href="ORDERS_add.jsp">订单添加</a> </li>
              </ul>
            </li>
            <li class="nav-item nav-item-has-subnav">
              <a href="javascript:void(0)"><i class="mdi mdi-view-grid"></i> <span>车辆信息管理</span></a>
              <ul class="nav nav-subnav">
                <li> <a class="multitabs" href="EMD_type_show.jsp">浏览车辆</a> </li>
                <li> <a class="multitabs" href="EMD_type_add.jsp">添加车辆</a> </li>
              </ul>
            </li>
            <li class="nav-item nav-item-has-subnav">
              <a href="javascript:void(0)"><i class="mdi mdi-shopping"></i> <span>司机信息</span></a>
              <ul class="nav nav-subnav">
                <li> <a class="multitabs" href="driver?action=find">浏览司机</a> </li>
                <li> <a class="multitabs" href="EMD_shop_add.jsp">添加司机</a> </li>
              </ul>
            </li>
            <li class="nav-item nav-item-has-subnav">
              <a href="javascript:void(0)"><i class="mdi mdi-account-multiple"></i> <span>客户信息</span></a>
              <ul class="nav nav-subnav">
                <li> <a class="multitabs" href="EMD_user_show.jsp">浏览客户信息</a> </li>
                 <li> <a class="multitabs" href="EMD_user_add.jsp">添加客户信息</a> </li>
              </ul>
            </li>
            <li class="nav-item nav-item-has-subnav">
              <a href="javascript:void(0)"><i class="mdi mdi-chart-bar"></i> <span>管理员名单</span></a>
              <ul class="nav nav-subnav">
                <li> <a class="multitabs" href="EMD_sale_show.jsp">管理员清单</a> </li>
                <li> <a class="multitabs" href="EMD_sale_add.jsp">管理员申请</a> </li>
              </ul>
            </li>
          </ul>
        </nav>
        
        <div class="sidebar-footer">
          <p class="copyright">汽车租赁项目组</p>
        </div>
      </div>
      
    </aside>
    <!--End 左侧导航-->
    
    <!--头部信息-->
    <header class="lyear-layout-header">
      
      <nav class="navbar navbar-default">
        <div class="topbar">
          
          <div class="topbar-left">
            <div class="lyear-aside-toggler">
              <span class="lyear-toggler-bar"></span>
              <span class="lyear-toggler-bar"></span>
              <span class="lyear-toggler-bar"></span>
            </div>
          </div>
          
          <ul class="topbar-right">
            <li class="dropdown dropdown-profile">
              <a href="javascript:void(0)" data-toggle="dropdown">
                <img class="img-avatar img-avatar-48 m-r-10" src="images/海绵宝宝.jpg"  />
                <span id="username">管理员 </span><span class="caret"></span>
              </a>
              <ul class="dropdown-menu dropdown-menu-right">
                <li> <a class="multitabs" data-url="lyear_pages_profile.html" href="javascript:void(0)"><i class="mdi mdi-account"></i> 个人信息</a> </li>
                <li> <a class="multitabs" data-url="lyear_pages_edit_pwd.html" href="javascript:void(0)"><i class="mdi mdi-lock-outline"></i> 修改密码</a> </li>
                <li class="divider"></li>
                <li> <a onclick="exits()" href="#" ><i class="mdi mdi-logout-variant"></i> 退出登录</a> </li>
              </ul>
            </li>		
          </ul>
          
        </div>
      </nav>
      
    </header>
    <!--End 头部信息-->
    
    <!--页面主要内容-->
    <main class="lyear-layout-content">
      
      <div id="iframe-content"></div>
      
    </main>
    <!--End 页面主要内容-->
  </div>
</div>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="js/bootstrap-multitabs/multitabs.js"></script>
<script type="text/javascript" src="js/index.min.js"></script>

<!--对话框-->
<script src="js/jconfirm/jquery-confirm.min.js"></script>

<script src="js/myIsLogin.js"></script>
<script>
	$(function(){
		// 获取到JSON字符串
		var users = sessionStorage.getItem("username");
		console.log(users);
		// 转换成自定义对象
		var user = JSON.parse(users);
		console.log(user.userName);
		console.log(user.userPwd);
		var spanUser = $("#username").html(user.userName);
		console.log(spanUser);
	});
	
	// 退出登录
	function exits(){
		// 清除用户登录信息
		sessionStorage.removeItem("username");
		
		location.href="EMD_login.html";
	}
</script>
</body>
</html>