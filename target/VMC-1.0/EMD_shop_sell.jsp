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
			#bar,
			#line {
				height: 400px;
			}
		</style>
	</head>
	<body>
		<!-- 为 ECharts 准备一个定义了宽高的 DOM -->
		<div id="bar" class="container-fluid"></div>

		<div id="line" class="container-fluid"></div>

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
				chartBars();

				// 线形图
				chartLine();
			});

			// 柱状图
			function chartBars() {
				// 基于准备好的dom，初始化echarts实例
				var myChart = echarts.init(document.getElementById("bar"),'vintage');

				// 指定图表的配置项和数据
				var option = {
					title: {
						text: '某地区蒸发量和降水量',
						x: 'center'
					},
					tooltip: {
						trigger: 'axis'
					},
					legend: {
						y: '25px',
						data: ['蒸发量', '降水量']
					},
					calculable: true,
					xAxis: [{
						type: 'category',
						data: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月']
					}],
					yAxis: [{
						type: 'value'
					}],
					series: [{
							name: '蒸发量',
							type: 'bar',
							data: [2.0, 4.9, 7.0, 23.2, 25.6, 76.7, 135.6, 162.2, 32.6, 20.0, 6.4, 3.3],
							markPoint: {
								data: [{
										type: 'max',
										name: '最大值'
									},
									{
										type: 'min',
										name: '最小值'
									}
								]
							},
							markLine: {
								data: [{
									type: 'average',
									name: '平均值'
								}]
							}
						},
						{
							name: '降水量',
							type: 'bar',
							data: [2.6, 5.9, 9.0, 26.4, 28.7, 70.7, 175.6, 182.2, 48.7, 18.8, 6.0, 2.3],
							markPoint: {
								data: [{
										name: '年最高',
										value: 182.2,
										xAxis: 7,
										yAxis: 183,
										symbolSize: 18
									},
									{
										name: '年最低',
										value: 2.3,
										xAxis: 11,
										yAxis: 3
									}
								]
							},
							markLine: {
								data: [{
									type: 'average',
									name: '平均值'
								}]
							}
						}
					]
				};

				// 使用刚指定的配置项和数据显示图表。
				myChart.setOption(option);

				// 请求接口返回数据重新画图
				myChartsBar(myChart);
			}

			function myChartsBar(myChart) {
				$.getJSON("http://101.201.64.226:8080/sellPros/sellInfos/queryProTypeBarChart", function(returnVO) {
					if (returnVO.code != 1) {
						lightyear.notify(returnVO.msg, 'danger', 100)
					}
					var content = returnVO.content;
					console.log("optionBar:", content);
					var option = {
						title: {
							text: '企业七天汽车租赁分析柱状图'
						},
						xAxis: [{
							data: content.xAxis
						}],
						legend: {
							data: content.legend
						},
						series: content.series
					};
					// 使用刚指定的配置项和数据显示图表。
					myChart.setOption(option);
				});
			}

			//线形图
			function chartLine() {
				var myChart = echarts.init(document.getElementById("line"));

				var option = {
					title: {
						text: '未来一周气温变化',
						x: 'center'
					},
					tooltip: {
						trigger: 'axis'
					},
					legend: {
						y: '25px',
						data: ['最高气温', '最低气温']
					},
					calculable: true,
					xAxis: [{
						type: 'category',
						boundaryGap: false,
						data: ['周一', '周二', '周三', '周四', '周五', '周六', '周日']
					}],
					yAxis: [{
						type: 'value'
					}],
					series: [{
							name: '最高气温',
							type: 'line',
							data: [11, 11, 15, 13, 12, 13, 10],
							markPoint: {
								data: [{
										type: 'max',
										name: '最大值'
									},
									{
										type: 'min',
										name: '最小值'
									}
								]
							},
							markLine: {
								data: [{
									type: 'average',
									name: '平均值'
								}]
							}
						},
						{
							name: '最低气温',
							type: 'line',
							data: [1, -2, 2, 5, 3, 2, 0],
							markPoint: {
								data: [{
									name: '周最低',
									value: -2,
									xAxis: 1,
									yAxis: -1.5
								}]
							},
							markLine: {
								data: [{
									type: 'average',
									name: '平均值'
								}]
							}
						}
					]
				};

				myChart.setOption(option);
				
				myChartLine(myChart);
			}
			
			function myChartLine(myChart){
				$.getJSON("http://101.201.64.226:8080/sellPros/sellInfos/queryProTypeLineChart", function(returnVO) {
					if (returnVO.code != 1) {
						lightyear.notify(returnVO.msg, 'danger', 100)
					}
					var content = returnVO.content;
					console.log("optionLine:", content);
					var option = {
						title: {
							text: '企业七天商品销售分析趋势图'
						},
						xAxis: [{
							data: content.xAxis
						}],
						legend: {
							data: content.legend
						},
						series: content.series
					};
					// 使用刚指定的配置项和数据显示图表。
					myChart.setOption(option);
				});
			}
		</script>
	</body>
</html>