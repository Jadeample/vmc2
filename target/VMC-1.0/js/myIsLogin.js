$(function(){
		// 获取到JSON字符串
		var users = sessionStorage.getItem("username");
		console.log("userSession:",users);
		
		if(users==null){
			// 添加确认对话框
			$.confirm({
			    title: '警告',
			    content: '用户未登录，请先登录!',
			    type: 'orange',
			    typeAnimated: false,
			    buttons: {
			        omg: {
			            text: '返回登录',
			            btnClass: 'btn-orange',
						action: function(){
							location.href="EMD_login.html"
						},
			        },
			        close: {
			            text: '关闭',
			        }
			    }
			});
		}
	});