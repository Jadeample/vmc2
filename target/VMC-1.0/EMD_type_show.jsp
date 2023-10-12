<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>浏览类别 - EMD分析系统</title>
<link rel="icon" href="favicon.ico" type="image/ico">
<meta name="keywords" content="LightYear,光年,后台模板,后台管理系统,光年HTML模板">
<meta name="description" content="LightYear是一个基于Bootstrap v3.3.7的后台管理系统的HTML模板。">
<meta name="author" content="yinqi">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/materialdesignicons.min.css" rel="stylesheet">
<link href="css/style.min.css" rel="stylesheet">
</head>
  
<body>
<div class="container-fluid p-t-15">
  
  <div class="row">
    <div class="col-lg-12">
      <div class="card">
        <div class="card-toolbar clearfix">
          <form class="pull-right search-bar" method="get" action="#!" role="form">
            <div class="input-group">
              <div class="input-group-btn">
                <input type="hidden" name="search_field" id="search-field" value="title">
                <button class="btn btn-default dropdown-toggle" id="search-btn" data-toggle="dropdown" type="button" aria-haspopup="true" aria-expanded="false">
                标题 <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                  <li> <a tabindex="-1" href="javascript:void(0)" data-field="title">标题</a> </li>
                  <li> <a tabindex="-1" href="javascript:void(0)" data-field="cat_name">栏目</a> </li>
                </ul>
              </div>
              <input type="text" class="form-control" value="" name="keyword" placeholder="请输入名称">
            </div>
          </form>
          <div class="toolbar-btn-action">
            <a class="btn btn-primary m-r-5" href="#!"><i class="mdi mdi-plus"></i> 新增</a>
            <a class="btn btn-success m-r-5" href="#!"><i class="mdi mdi-check"></i> 启用</a>
            <a class="btn btn-warning m-r-5" href="#!"><i class="mdi mdi-block-helper"></i> 禁用</a>
            <a class="btn btn-danger" href="#!"><i class="mdi mdi-window-close"></i> 删除</a>
          </div>
        </div>
        <div class="card-body">
          
          <div class="table-responsive">
            <table class="table table-bordered">
              <thead>
                <tr>
                  <th>车辆ID</th>
                  <th>车牌号</th>
				  <th>车辆品牌</th>
				  <th>车辆颜色</th>
				  <th>车辆图片</th>
				  <th>车辆座位数</th>
				  <th>车辆租赁价格</th>
				  <th>车型</th>
				  <th>车辆档位类型</th>
				  <th>车辆类型</th>
				  <th>车辆状态</th>
                  <th>操作</th>
                </tr>
              </thead>
              <tbody>
                <tr>
					<td>1</td>
					<td>清一色</td>
					<td>123456</td>
					<td><img src=""></td>
					<td>男</td>
					<td>100/天</td>
					<td>张三</td>
					<td>12345678987456123</td>
					<td>1597536458</td>
					<td>123@163.com</td>
					<td>中级</td>
					
					<td>
						<div class="btn-group">
							<a class="btn btn-xs btn-default" href="#!" title="编辑"
								data-toggle="tooltip"><i class="mdi mdi-pencil"></i></a>
							<a class="btn btn-xs btn-default" href="#!" title="删除"
								data-toggle="tooltip"><i class="mdi mdi-window-close"></i></a>
						</div>
					</td>
				</tr>
              </tbody>
            </table>
          </div>
          <ul class="pagination" id="pagination">
            <li class="disabled"><span>«</span></li>
            <li class="active"><span>1</span></li>
            <li><a href="#1">2</a></li>
            <li><a href="#1">3</a></li>
            <li><a href="#1">4</a></li>
            <li><a href="#1">5</a></li>
            <li><a href="#1">6</a></li>
            <li><a href="#1">7</a></li>
            <li><a href="#1">8</a></li>
            <li class="disabled"><span>...</span></li>
            <li><a href="#!">14452</a></li>
            <li><a href="#!">14453</a></li>
            <li><a href="#!">»</a></li>
          </ul>
 
        </div>
      </div>
    </div>
    
  </div>
  
</div>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/main.min.js"></script>
<script type="text/javascript" src="js/pagination-comm.js"></script>
<script type="text/javascript">
	// 分页数据
	var pageVO = null;
	
	$(function(){
		$('.search-bar .dropdown-menu a').click(function() {
			var field = $(this).data('field') || '';
			$('#search-field').val(field);
			$('#search-btn').html($(this).text() + ' <span class="caret"></span>');
		});
		// 调用分页函数
		loadPageInfo("http://101.201.64.226:8080/sellPros/queryByPage");
		
		// $.getJSON("http://101.201.64.226:8080/sellPros/queryByPage?page=1&size=10",function(msg){
			
		// 	console.log("返回参数",msg);
		// 	if(msg.code!=1){
		// 		lightyear.notify('查询不到数据', 'danger', 100);
		// 	}
		// 	// 获取查询到的数据数组
		// 	var arr=msg.content.content;
		// 	console.log("第一个数据",arr);
		// 	/**
		// 	 * 遍历循环
		// 	 */
		// 	// for(var i=0;i<arr.length;i++){
		// 	// 	var content=arr[i];
		// 	// 	var tr=$(`<tr>
		// 	// 			  <td>${content.typeName}</td>
		// 	// 			  <td>${content.typeDesc}</td>
		// 	// 			  <td>
		// 	// 				<div class="btn-group">
		// 	// 				  <a class="btn btn-xs btn-default" href="#!" title="编辑" data-toggle="tooltip"><i class="mdi mdi-pencil"></i></a>
		// 	// 				  <a class="btn btn-xs btn-default" href="#!" title="查看" data-toggle="tooltip"><i class="mdi mdi-eye"></i></a>
		// 	// 				  <a class="btn btn-xs btn-default" href="#!" title="删除" data-toggle="tooltip"><i class="mdi mdi-window-close"></i></a>
		// 	// 				</div>
		// 	// 			  </td>
		// 	// 			</tr>`);
		// 	// 	$("tbody").append(tr);
		// 	// }
		// 	/**
		// 	 * 取元素循环for of
		// 	 */
		// 	for(var content of arr){
		// 		var tr=$(`<tr>
		// 				  <td>${content.typeName}</td>
		// 				  <td>${content.typeDesc}</td>
		// 				  <td>
		// 					<div class="btn-group">
		// 					  <a class="btn btn-xs btn-default" href="#!" title="编辑" data-toggle="tooltip"><i class="mdi mdi-pencil"></i></a>
		// 					  <a class="btn btn-xs btn-default" href="#!" title="查看" data-toggle="tooltip"><i class="mdi mdi-eye"></i></a>
		// 					  <a class="btn btn-xs btn-default" href="#!" title="删除" data-toggle="tooltip"><i class="mdi mdi-window-close"></i></a>
		// 					</div>
		// 				  </td>
		// 				</tr>`);
		// 		$("tbody").append(tr);
		// 	}
		// 	/**
		// 	 * foreach循环
		// 	 * for(Object 子元素名称:数组){}
		// 	 */
		// });
	});
	
	function showTableInfo(){
		// 清空之前数据
		$("tbody").empty();
		console.log("pageVO-",pageVO);
		for(var content of pageVO.content){
			var tr=$(`<tr>
					  <td>${content.typeName}</td>
					  <td>${content.typeDesc}</td>
					  <td>
						<div class="btn-group">
						  <a class="btn btn-xs btn-default" href="javascript.toUpdate" onclick="toupdate('${content.typeName}',)"title="编辑" data-toggle="tooltip"><i class="mdi mdi-pencil"></i></a>
						  <a class="btn btn-xs btn-default" href="#!" title="删除" data-toggle="tooltip"><i class="mdi mdi-window-close"></i></a>
						</div>
					  </td>
					</tr>`);
					/**
					 * 超链接调用函数方法：
					 * href="javascript:函数名（）"
					 * onclick="函数名（）"(注：用此方法时，href="#!"或 href="javascript:void(0)")
					 */
			$("tbody").append(tr);
		}
	}
	function ToUpdate(typename,typeDesc){
		var parm={
			"typeName":typeName,
			"typeDesc":typeDesc
		}
		sessionStorage.setItem("content",JSON.Stringfy(parm));
		location.href ="EMD_type_update.html";
			
	}
	//删除
	function del(typeId){
		$.getJSON("http://127.0.0.1:8/sellPros/addType",param,function(returnVO){})}
	
</script>
</body>
</html>