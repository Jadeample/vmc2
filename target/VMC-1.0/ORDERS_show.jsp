<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
		<title>文档列表 - 光年(Light Year Admin)后台管理系统模板</title>
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
										<button class="btn btn-default dropdown-toggle" id="search-btn"
											data-toggle="dropdown" type="button" aria-haspopup="true"
											aria-expanded="false">
											标题 <span class="caret"></span>
										</button>
										<ul class="dropdown-menu">
											<li> <a tabindex="-1" href="javascript:void(0)" data-field="title">标题</a>
											</li>
											<li> <a tabindex="-1" href="javascript:void(0)" data-field="cat_name">栏目</a>
											</li>
										</ul>
									</div>
									<input type="text" class="form-control" value="" name="keyword" placeholder="请输入名称">
								</div>
							</form>
							<div class="toolbar-btn-action">
								<a class="btn btn-primary m-r-5" href="add_products.html"><i class="mdi mdi-plus"></i> 新增</a>
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
											<th>订单号</th>
											<th>租车用户</th>
											<th>车辆ID</th>
											<th>司机ID</th>
											<th>订单开始时间</th>
											<th>订单结束时间</th>
											<th>订单金额</th>
											<th>订单评价</th>
											<th>支付方式</th>
											<th>订单状态</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>清一色</td>
											<td>123456</td>
											<td>123456</td>
											<td><input type="date" name="date" id="date-input01"></td>
											<td><input type="date" name="date" id="date-input02"></td>
											<td>100</td>
											<td>好</td>
											<td>支付宝</td>
											<td>已支付</td>
											<td>
												<div class="btn-group">
													<a class="btn btn-xs btn-default" href="#!" title="编辑"
														data-toggle="tooltip"><i class="mdi mdi-pencil"></i></a>
													<a class="btn btn-xs btn-default" href="#!" title="删除"
														data-toggle="tooltip"><i class="mdi mdi-window-close"></i></a>
												</div>
											</td>
										</tr>
										<tr>
											<td>1</td>
											<td>清一色</td>
											<td>123456</td>
											<td>123456</td>
											<td><input type="date" name="date" id="date-input03"></td>
											<td><input type="date" name="date" id="date-input04"></td>
											<td>100</td>
											<td>好</td>
											<td>支付宝</td>
											<td>已支付</td>
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
							<ul class="pagination">
								<li class="disabled"><span>«</span></li>
								<li class="active"><span>1</span></li>
								<li><a href="#1">2</a></li>
								<li class="disabled"><span>...</span></li>
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
		<script type="text/javascript">
			$(function() {
				$('.search-bar .dropdown-menu a').click(function() {
					var field = $(this).data('field') || '';
					$('#search-field').val(field);
					$('#search-btn').html($(this).text() + ' <span class="caret"></span>');
				});
			});
		</script>
	</body>
</html>