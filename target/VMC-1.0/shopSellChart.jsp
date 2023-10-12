<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
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
		
		<style>
			#div1{
				height:300px;
			}
			</style>
	</head>
	<body>
		<div id="div1" class="container-fluid"></div>
		<script type="text/javascript" src="js/echarts.min.js"></script>
		<script>
			var myChart =echart.init(document.getElementById("div1"));
			var option = {
			        title: {
			          text: 'ECharts 入门示例'
			        },
			        tooltip: {},
			        legend: {
			          data: ['销量']
			        },
			        xAxis: {
			          data: ['衬衫', '羊毛衫', '雪纺衫', '裤子', '高跟鞋', '袜子']
			        },
			        yAxis: {},
			        series: [
			          {
			            name: '销量',
			            type: 'bar',
			            data: [5, 20, 36, 10, 10, 20]
			          }
			        ]
			      };
				  //使用刚指定配置项和数据显示图表。
				  myChart.set0ption(option);
				  myCharts("http://101.201.64.226:8080/sellPros/sellInfos/queryProTypeBarChart",myChart);
				function myCharts(url,myChart)
				  $.getJSON(url,function(returnVO){
					  var option =returnVO.content;
					  });
					  // 使用刚指定的配置项和数据显示图表。
					  myChart.setOption(option);

			    </script>
				
	</body>
</html>