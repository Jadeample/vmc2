<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>添加类别 - EMD分析系统</title>
<link rel="icon" href="favicon.ico" type="image/ico">
<meta name="keywords" content="LightYear,光年,后台模板,后台管理系统,光年HTML模板">
<meta name="description" content="LightYear是一个基于Bootstrap v3.3.7的后台管理系统的HTML模板。">
<meta name="author" content="yinqi">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/materialdesignicons.min.css" rel="stylesheet">
<!--标签插件-->
<link rel="stylesheet" href="js/jquery-tags-input/jquery.tagsinput.min.css">
<link href="css/style.min.css" rel="stylesheet">
<!--对话框-->
<link rel="stylesheet" href="js/jconfirm/jquery-confirm.min.css">
</head>
  
<body>
<div class="container p-t-15">
  <div class="col-lg-12" style="height:50px;"></div>
  <div class="row">
	<div class="col-lg-2"></div>
    <div class="col-lg-8">
      <div class="card">
        <div class="card-body">
          
          <form action="#!" method="post" class="row">
            <div class="form-group col-md-12">
              <label for="type_name">类别名称</label>
              <input type="text" class="form-control" id="type_name" name="type_name" value="" placeholder="请输入类别名称" />
            </div>
			<div class="form-group col-md-12">
				<label for="type_name">类别名称</label>
				<input type="text" class="form-control" id="type_name" name="type_name" value="" placeholder="请输入类别名称" />
			  </div>
			  <div class="form-group col-md-12">
				<label for="type_name">类别名称</label>
				<input type="text" class="form-control" id="type_name" name="type_name" value="" placeholder="请输入类别名称" />
			  </div>
			  <div class="form-group col-md-12">
				<label for="type_name">类别名称</label>
				<input type="text" class="form-control" id="type_name" name="type_name" value="" placeholder="请输入类别名称" />
			  </div>
			  <div class="form-group col-md-12">
				<label for="type_name">类别名称</label>
				<input type="text" class="form-control" id="type_name" name="type_name" value="" placeholder="请输入类别名称" />
			  </div>
			  <div class="form-group col-md-12">
				<label for="type_name">类别名称</label>
				<input type="text" class="form-control" id="type_name" name="type_name" value="" placeholder="请输入类别名称" />
			  </div>
			  <div class="form-group col-md-12">
				<label for="type_name">类别名称</label>
				<input type="text" class="form-control" id="type_name" name="type_name" value="" placeholder="请输入类别名称" />
			  </div>
			  <div class="form-group col-md-12">
				<label for="type_name">类别名称</label>
				<input type="text" class="form-control" id="type_name" name="type_name" value="" placeholder="请输入类别名称" />
			  </div>
			  <div class="form-group col-md-12">
				<label for="type_name">类别名称</label>
				<input type="text" class="form-control" id="type_name" name="type_name" value="" placeholder="请输入类别名称" />
			  </div>
			  <div class="form-group col-md-12">
				<label for="type_name">类别名称</label>
				<input type="text" class="form-control" id="type_name" name="type_name" value="" placeholder="请输入类别名称" />
			  </div>
            <div class="form-group col-md-12">
              <label for="type_desc">类别描述</label>
              <textarea class="form-control" id="type_desc" name="type_desc" rows="5" value="" placeholder="请输入类别描述"></textarea>
            </div>
			<div class="col-md-3"></div>
            <div class="form-group col-md-3">
              <button type="button" class="btn btn-primary ajax-post" onclick="addType()" target-form="add-form">确 定</button>
			</div>
			<div class="col-md-1"></div>
            <div class="form-group col-md-3">
              <button type="button" class="btn btn-default" onclick="javascript:history.back(-1);return false;">返 回</button>
            </div>
          </form>
 
        </div>
      </div>
    </div>
    
  </div>
  
</div>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!--标签插件-->
<script src="js/jquery-tags-input/jquery.tagsinput.min.js"></script>
<script type="text/javascript" src="js/main.min.js"></script>
<!--消息提示-->
<script src="js/bootstrap-notify.min.js"></script>
<script type="text/javascript" src="js/lightyear.js"></script>
<!--对话框-->
<script src="js/jconfirm/jquery-confirm.min.js"></script>
<script>
	function addType(){
		// 获取类型名称
		var typeName=$("#type_name").val();
		// 获取类型描述
		var typeDesc=$("#type_desc").val();
		console.log("typeName",typeName);
		// 非空判断
		if(typeName=='' || typeDesc=='' || typeName==null || typeDesc==null){
			// 警示对话框
			$.confirm({
			    title: '警告',
			    content: '输入框不能为空',
			    type: 'orange',
			    typeAnimated: false,
			    buttons: {
			        omg: {
			            text: '重新输入',
			            btnClass: 'btn-orange'
			        }
			    }
			});
			return;
		}
		
		// 封装参数到自定义对象
		var param = {
			"typeName":typeName,
			"typeDesc":typeDesc
		}
		
			
			// 添加确认对话框
			$.confirm({
			    title: '提示',
			    content: '是否确认添加?',
			    buttons: {
			        confirm: {
			            text: '确认',
			            btnClass: 'btn-blue',
			            action: function(){
							// 请求接口地址
							$.getJSON("http://101.201.64.226:8080/sellPros/addType",param,function(returnVO){
								if(returnVO.code!=1){
									//消息提示
									lightyear.notify(returnVO.msg, 'denger', 100);
									return;
								}
								// 添加成功对话框
								$.confirm({
								    title: '成功',
								    content: '恭喜添加成功',
								    type: 'green',
								    buttons: {
								        omg: {
								            text: '跳转浏览页面',
								            btnClass: 'btn-green',
											action: function(){
												location.href="EMD_type_show.html";
											},
								        },
								        close: {
								            text: '关闭',
								        }
								    }
								});
							});
			            }
			        },
			        cancel: {
			            text: '关闭',
			            action: function(){}
			        }
			    }
			
			// 跳转回浏览页面
			// location.href="EMD_type_show.jsp";
		});
	}
</script>
</body>
</html>