<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
		<title>商品销售分析 - EMD分析系统</title>
		<link rel="icon" href="favicon.ico" type="image/ico">
		<meta name="keywords" content="LightYear,光年,后台模板,后台管理系统,光年HTML模板">
		<meta name="description" content="LightYear是一个基于Bootstrap v3.3.7的后台管理系统的HTML模板。">
		<meta name="author" content="yinqi">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/materialdesignicons.min.css" rel="stylesheet">
		<link href="css/style.min.css" rel="stylesheet">
		<style>
			#userBar,
			#userCle {
				height: 400px;
			}
		</style>
	</head>
	<body>
		<!-- 为 ECharts 准备一个定义了宽高的 DOM -->
		<div id="userBar" class="container-fluid"></div>

		<div id="userCle" class="container-fluid"></div>

		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/main.min.js"></script>
		<script type="text/javascript" src="js/pagination-comm.js"></script>
		<script type="text/javascript" src="js/echarts.min.js"></script>
		<script type="text/javascript" src="js/vintage.js"></script>
		<!--消息提示-->
		<script src="js/bootstrap-notify.min.js"></script>
		<script type="text/javascript" src="js/lightyear.js"></script>
		<script>
			$(function() {
				// 柱状图
				// chartBars();

				// 环状图
				chartCle();
			});

			function chartCle() {
				// 基于准备好的dom，初始化echarts实例
				var myChart = echarts.init(document.getElementById("userCle"),'vintage');

				var option = {
					tooltip: {
						trigger: 'item',
						formatter: "{a} <br/>{b} : {c} ({d}%)"
					},
					legend: {
						orient: 'vertical',
						x: 'left',
						data: ['直接访问', '邮件营销', '联盟广告', '视频广告', '搜索引擎']
					},
					calculable: true,
					series: [{
						name: '访问来源',
						type: 'pie',
						radius: ['50%', '70%'],
						itemStyle: {
							normal: {
								label: {
									show: false
								},
								labelLine: {
									show: false
								}
							},
							emphasis: {
								label: {
									show: true,
									position: 'center',
									textStyle: {
										fontSize: '30',
										fontWeight: 'bold'
									}
								}
							}
						},
						data: [{
								value: 335,
								name: '直接访问'
							},
							{
								value: 310,
								name: '邮件营销'
							},
							{
								value: 234,
								name: '联盟广告'
							},
							{
								value: 135,
								name: '视频广告'
							},
							{
								value: 1548,
								name: '搜索引擎'
							}
						]
					}]
				};

				myChart.setOption(option);
				
				myChartCle(myChart);
			}

			function myChartCle(myChart) {
				$.getJSON("http://101.201.64.226:8080/sellPros/sellInfos/queryProUserPieChart", function(returnVO) {
					if (returnVO.code != 1) {
						lightyear.notify(returnVO.msg, 'danger', 100)
					}
					var content = returnVO.content;
					console.log("optionBar:", content);
					var option = {
						title: {
							text: '企业员工销售分析环状图',
							x:'center'
						},
						series: [{
							data: content
						}]
					};
					// 使用刚指定的配置项和数据显示图表。
					myChart.setOption(option);
				});
			}
		</script>
	</body>
</html>