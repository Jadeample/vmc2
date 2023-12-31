<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
		<title>滑块 - 光年(Light Year Admin)后台管理系统模板</title>
		<link rel="icon" href="favicon.ico" type="image/ico">
		<meta name="keywords" content="LightYear,光年,后台模板,后台管理系统,光年HTML模板">
		<meta name="description" content="LightYear是一个基于Bootstrap v3.3.7的后台管理系统的HTML模板。">
		<meta name="author" content="yinqi">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/materialdesignicons.min.css" rel="stylesheet">
		<!--滑块插件-->
		<link rel="stylesheet" href="js/ion-rangeslider/ion.rangeSlider.min.css">
		<link href="css/style.min.css" rel="stylesheet">
	</head>

	<body>
		<div class="container-fluid p-t-15">

			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">

							<form action="#!" method="post" class="row">
								<div class="form-group col-md-12">
									<label for="title">顾客姓名</label>
									<input type="text" class="form-control" id="title" name="title" value=""
										placeholder="请输入标题">
								</div>
								<div class="form-group col-md-12">
									<label for="seo_description">顾客描述</label>
									<textarea class="form-control" id="seo_description" name="seo_description" rows="5"
										value="" placeholder="描述"></textarea>
								</div>
								<div class="form-group col-md-12">
									<button type="submit" class="btn btn-primary ajax-post" target-form="add-form">确
										定</button>
									<button type="button" class="btn btn-default"
										onclick="javascript:history.back(-1);return false;">返 回</button>
								</div>
							</form>

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