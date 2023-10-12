<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
		<title>日期选择器 - 光年(Light Year Admin)后台管理系统模板</title>
		<link rel="icon" href="favicon.ico" type="image/ico">
		<meta name="keywords" content="LightYear,光年,后台模板,后台管理系统,光年HTML模板">
		<meta name="description" content="LightYear是一个基于Bootstrap v3.3.7的后台管理系统的HTML模板。">
		<meta name="author" content="yinqi">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/materialdesignicons.min.css" rel="stylesheet">
		<!--时间选择插件-->
		<link rel="stylesheet" href="js/bootstrap-datetimepicker/bootstrap-datetimepicker.min.css">
		<!--日期选择插件-->
		<link rel="stylesheet" href="js/bootstrap-datepicker/bootstrap-datepicker3.min.css">
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
								<a class="btn btn-primary m-r-5" href="add_client.html"><i class="mdi mdi-plus"></i> 新增</a>
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
											<th>用户ID</th>
											<th>用户名</th>
											<th>密码</th>
											<th>用户性别</th>
											<th>用户姓名</th>
											<th>用户证件号</th>
											<th>用户联系电话</th>
											<th>用户邮箱</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>01</td>
											<td>我爱车</td>
											<td>123</td>
											<td>阿萨德</td>
											<td>男</td>
											<td>258963147896312</td>
											<td>12345678912</td>
											<td>123@163.com</td>
											<td>
												<div class="btn-group">
													<a class="btn btn-xs btn-default" href="#!" title=""
														data-toggle="tooltip" data-original-title="编辑"><i
															class="mdi mdi-pencil"></i></a>
													<a class="btn btn-xs btn-default" href="#!" title=""
														data-toggle="tooltip" data-original-title="删除"><i
															class="mdi mdi-window-close"></i></a>
												</div>
											</td>
										</tr>
										<tr>
											<td>柳林</td>
											<td>会员顾客</td>
											<td>123</td>
											<td>123</td>
											<td>123</td>
											<td>123</td>
											<td>123</td>
											<td>123</td>
											<td>
												<div class="btn-group">
													<a class="btn btn-xs btn-default" href="#!" title=""
														data-toggle="tooltip" data-original-title="编辑"><i
															class="mdi mdi-pencil"></i></a>
													<a class="btn btn-xs btn-default" href="#!" title=""
														data-toggle="tooltip" data-original-title="删除"><i
															class="mdi mdi-window-close"></i></a>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/main.min.js"></script>
	</body>
</html>