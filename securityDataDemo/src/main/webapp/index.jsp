<html>
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>NCR Dashboard</title>
	
	<!-- bootstrap -->
	<link rel="stylesheet" type="text/css" href="/securityDataDemo/src/main/webapp/WEB-INF/css/bootstrap/bootstrap.min.css" />
	
	<!-- RTL support - for demo only -->
	<script src="/securityDataDemo/src/main/webapp/WEB-INF/js/demo-rtl.js"></script>
	<!-- 
	If you need RTL support just include here RTL CSS file <link rel="stylesheet" type="text/css" href="assets/css/libs/bootstrap-rtl.min.css" />
	And add "rtl" class to <body> element - e.g. <body class="rtl"> 
	-->
	
	<!-- libraries -->
	<link rel="stylesheet" type="text/css" href="/securityDataDemo/src/main/webapp/WEB-INF/css/libs/font-awesome.css" />
	<link rel="stylesheet" type="text/css" href="/securityDataDemo/src/main/webapp/WEB-INF/css/libs/nanoscroller.css" />

	<!-- global styles -->
	<link rel="stylesheet" type="text/css" href="/securityDataDemo/src/main/webapp/WEB-INF/css/compiled/theme_styles.css" />

	<!-- this page specific styles -->
    <link rel="stylesheet" href="/securityDataDemo/src/main/webapp/WEB-INF/css/libs/fullcalendar.css" type="text/css" />
    <link rel="stylesheet" href="/securityDataDemo/src/main/webapp/WEB-INF/css/libs/fullcalendar.print.css" type="text/css" media="print" />
    <link rel="stylesheet" href="/securityDataDemo/src/main/webapp/WEB-INF/css/compiled/calendar.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="/securityDataDemo/src/main/webapp/WEB-INF/css/libs/morris.css" type="text/css" />
	<link rel="stylesheet" href="/securityDataDemo/src/main/webapp/WEB-INF/css/libs/daterangepicker.css" type="text/css" />
	<link rel="stylesheet" href="/securityDataDemo/src/main/webapp/WEB-INF/css/libs/jquery-jvectormap-1.2.2.css" type="text/css" />
	<link rel="stylesheet" href="/securityDataDemo/src/main/webapp/WEB-INF/css/compiled/test.css" type="text/css" />
	
	<!-- Favicon -->
	<link type="image/x-icon" href="/securityDataDemo/src/main/webapp/WEB-INF/favicon.png" rel="shortcut icon" />

	<!-- google font libraries -->
	<link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700,300|Titillium+Web:200,300,400" rel='stylesheet' type='text/css'>

	<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<div id="theme-wrapper">

		<div id="page-wrapper" class="container">

			<section id="nav-col">
				<div id="col-left" class="col-left-nano">
					<div id="col-left-inner" class="col-left-nano-content">
						
						<div class="collapse navbar-collapse navbar-ex1-collapse" id="sidebar-nav">	
							

							<div class="nav-brand">
								<div class="logo logo-1">
									<i class="fa fa-th-large"></i>
								</div>
								<div class="logo logo-2">
									<i class="">Vi</i> <span>Version 4.0 <br/> Nov. 23 10:32 PM</span>
								</div>
							</div>


							<ul class="nav nav-pills nav-stacked">
								<li class="active">
									<a href="#" class="dropdown-toggle">
										<i class="fa fa-dashboard"></i>
										<span>Dashboard</span>
									</a>
									<ul class="submenu">
										<li class="active">
											<a href="index.html">
												Index
											</a>
										</li>
										<li>
											<a href="#">
												Profile
											</a>
										</li>
										<li>
											<a href="#">
												Settings
											</a>
										</li>
										<li>
											<a href="#">
												Account
											</a>
										</li>
									</ul>
								</li>
								<li>
									<a href="#" class="dropdown-toggle">
										<i class="fa fa-table"></i>
										<span>Network</span>
									</a>
									<ul class="submenu">
										<li class="">
											<a href="http://www.google.co.uk/">
												Simple
											</a>
										</li>
										<li>
											<a href="#">
												Advanced
											</a>
										</li>
										<li>
											<a href="#">
												Users
											</a>
										</li>
									</ul>
								</li>
								<li>
									<a href="#" class="dropdown-toggle">
										<i class="fa fa-envelope"></i>
										<span>Analytics</span>
									</a>
									<ul class="submenu">
										<li>
											<a href="#">
												Inbox
											</a>
										</li>
										<li class="">
											<a href="#">
												Detail
											</a>
										</li>
										<li>
											<a href="#">
												Compose
											</a>
										</li>
									</ul>
								</li>
								<li>
									<a href="#" class="dropdown-toggle">
										<i class="fa fa-bar-chart-o"></i>
										<span>Inventory</span>
									</a>
									<ul class="submenu">
										<li>
											<a href="#">
												Morris &amp; Mixed
											</a>
										</li>
										<li>
											<a href="#">
												Flot
											</a>
										</li>
										<li>
											<a href="#">
												Dygraphs
											</a>
										</li>
										<li>
											<a href="#">
												xCharts
											</a>
										</li>
									</ul>
								</li>
								<li>
									<a href="#">
										<i class="fa fa-th-large"></i>
										<span>Contacts</span>
									</a>
								</li>
								<li>
									<a href="#" class="dropdown-toggle">
										<i class="fa fa-desktop"></i>
										<span>Reports</span>
									</a>
									<ul class="submenu">
										<li>
											<a href="#">
												Calendar
											</a>
										</li>
										<li>
											<a href="#">
												Gallery
											</a>
										</li>
										<li>
											<a href="#">
												Gallery v2
											</a>
										</li>
										<li>
											<a href="#">
												Pricing
											</a>
										</li>
										<li>
											<a href="#">
												Projects
											</a>
										</li>
										<li>
											<a href="#">
												Team Members
											</a>
										</li>
										<li>
											<a href="#">
												Timeline
											</a>
										</li>
										<li>
											<a href="#">
												Timeline Grid
											</a>
										</li>
										<li>
											<a href="#">
												User Profile
											</a>
										</li>
										<li>
											<a href="#">
												Search Results
											</a>
										</li>
										<li>
											<a href="#">
												Invoice
											</a>
										</li>
										<li>
											<a href="#">
												Tour Layout
											</a>
										</li>
									</ul>
								</li>
								<li>
									<a href="#" class="dropdown-toggle">
										<i class="fa fa-edit"></i>
										<span>Admin</span>
									</a>
									<ul class="submenu">
										<li>
											<a href="#">
												Elements
											</a>
										</li>
										<li>
											<a href="#">
												X-Editable
											</a>
										</li>
										<li>
											<a href="#">
												Wizard
											</a>
										</li>
										<li>
											<a href="#">
												Wizard popup
											</a>
										</li>
										<li>
											<a href="#">
												WYSIWYG
											</a>
										</li>
										<li>
											<a href="#">
												WYSIWYG Summernote
											</a>
										</li>
										<li>
											<a href="#">
												WYSIWYG CKEditor
											</a>
										</li>
										<li>
											<a href="#">
												Multiple File Upload
											</a>
										</li>
									</ul>
								</li>
								<li>
									<a href="#" class="dropdown-toggle">
										<i class="fa fa-desktop"></i>
										<span>Users</span>
									</a>
									<ul class="submenu">
										<li>
											<a href="#">
												Elements
											</a>
										</li>
										<li>
											<a href="#">
												Notifications &amp; Alerts
											</a>
										</li>
										<li>
											<a href="#">
												Modals
											</a>
										</li>
										<li>
											<a href="#">
												Video
											</a>
										</li>
										<li>
											<a href="#">
												Nestable List
											</a>
										</li>
										<li>
											<a href="#">
												Typography
											</a>
										</li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</section>
	
	

			<section id="content-wrapper">

				<div class="navbar" id="header-navbar">
					<div class="inner">					
						<ol class="breadcrumb">
							<li><a href="#">Home</a></li>
							<li class="active"><span>Dashboard</span></li>
						</ol>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12">
						<div class="main-box style="max-width:980px">
						
							<div class="page-header">
								<h1>Dashboard</h1>
							</div>
							
							<div class="row">

								<div class="col-lg-12">

									<div class="row">

										<div class="col-md-3">

											<span class="ticket-header-number">1502</span>
											<span class="ticket-header-title">Total</span>

										</div>

										<div class="col-md-9">

											<ul class="nav nav-justified" role="tablist" id="tickets">
												<li role="presentation" class="nothing"><a href="#nothing" aria-controls="nothing" role="tab" data-toggle="tab">
													<div class="ticket-box nothing-ticket">
														<span class="ticket-title">Active</span>
														<span class="ticket-number">1234</span>
														<span class="ticket-percent">50&#37;</span>
													</div>
												</a></li>
												<li role="presentation" class="issue"><a href="#issue" aria-controls="issue" role="tab" data-toggle="tab">
													<div class="ticket-box issue-ticket">
														<span class="ticket-title">Issue</span>
														<span class="ticket-number">234</span>
														<span class="ticket-percent">40&#37;</span>
													</div>
												</a></li>
												<li role="presentation" class="warning"><a href="#warning" aria-controls="warning" role="tab" data-toggle="tab">
													<div class="ticket-box warning-ticket">
														<span class="ticket-title">Warning</span>
														<span class="ticket-number">34</span>
														<span class="ticket-percent">10&#37;</span>
													</div>
												</a></li>
											</ul>

										</div>

									</div>

									<div class="tab-content">
										<div role="tabpanel" class="tab-pane" id="nothing">
											<table class="table table-bordered">
									            <tr class="success">
									              <td><strong>ATM ID</strong></td>
									              <td><strong>Location</strong></td> 
									              <td><strong>Days since last service</strong></td>
									            </tr>
									            <tr class="success">
									              <td>A47G52</td>
									              <td>Dundee</td> 
									              <td>178</td>
								                </tr>
								                <tr class="success">
								                  <td>BP98D34</td>
								                  <td>Dundee</td> 
								                  <td>212</td>
								                </tr>
								                <tr class="success">
								                  <td>CD44J19</td>
								                  <td>Glasgow</td> 
								                  <td>119</td>
								                </tr>
								                <tr class="success">
								                  <td>K99Y65</td>
								                  <td>Edinburgh</td> 
								                  <td>92</td>
								                </tr>
								                <tr class="success">
								                  <td>ME77J41</td>
								                  <td>Dundee</td> 
								                  <td>272</td>
								                </tr>
								            </table>
										</div>
										<div role="tabpanel" class="tab-pane" id="issue">
							              <table class="table table-bordered">
							                <tr class="warning">
							                  <td><strong>ATM ID</strong></td>
							                  <td><strong>Location</strong></td> 
							                  <td><strong>Days since last service</strong></td>
							                </tr>
							                <tr class="warning">
							                  <td><a href="atm1.jsp">JH7921</a></td>
							                  <td>Perth</td> 
							                  <td>15</td>
							                </tr>
							                <tr class="warning">
							                  <td><a href="atm2.jsp">GSD7SF</a></td>
							                  <td>London</td> 
							                  <td>146</td>
							                </tr>
							                <tr class="warning">
							                  <td>AKJAD7</td>
							                  <td>Manchester</td> 
							                  <td>78</td>
							                </tr>
							                <tr class="warning">
							                  <td>IQJL97</td>
							                  <td>London</td> 
							                  <td>313</td>
							                </tr>
							                <tr class="warning">
							                  <td>WSDH897</td>
							                  <td>London</td> 
							                  <td>185</td>
							                </tr>
							              </table>
          								</div>
										<div role="tabpanel" class="tab-pane" id="warning">
							                <table class="table table-bordered">
							                <tr class="danger">
							                  <td><strong>ATM ID</strong></td>
							                  <td><strong>Location</strong></td> 
							                  <td><strong>Days since last service</strong></td>
							                </tr>
							                <tr class="danger">
							                  <td>GYUSI44</td>
							                  <td>California</td> 
							                  <td>445</td>
							                </tr>
							                <tr class="danger">
							                  <td>SFG43E</td>
							                  <td>California</td> 
							                  <td>61</td>
							                </tr>
							                <tr class="danger">
							                  <td>TER4353</td>
							                  <td>London</td> 
							                  <td>510</td>
							                </tr>
							                <tr class="danger">
							                  <td>45TGVDC</td>
							                  <td>Texas</td> 
							                  <td>27</td>
							                </tr>
							                <tr class="danger">
							                  <td>45TDDVB</td>
							                  <td>California</td> 
							                  <td>127</td>
							                </tr>
							              </table>
							          	</div>
									</div>

								</div>

							</div>

							<div class="page-header">
								<h1>Percentage of Active ATMs</h1>
							</div>

							<div class="row">

								<div class="col-md-12">
									<img src="/securityDataDemo/src/main/webapp/WEB-INF/img/samples/stacking-flot100.png" alt="" class="madSkillz">
									<div class="main-box-body clearfix">
					
											
											<br/>
										</div>
										
									</div>

								</div>

							</div>

						</div>				
					</div>
				</div>
				
			</section>


		</div>
	</div>

	
	<!-- global scripts -->
	<script src="/securityDataDemo/src/main/webapp/WEB-INF/js/demo-skin-changer.js"></script> <!-- only for demo -->
	
	<script src="/securityDataDemo/src/main/webapp/WEB-INF/js/jquery.js"></script>
	<script src="/securityDataDemo/src/main/webapp/WEB-INF/js/bootstrap.js"></script>
	<script src="/securityDataDemo/src/main/webapp/WEB-INF/js/jquery.nanoscroller.min.js"></script>
	
	<script src="/securityDataDemo/src/main/webapp/WEB-INF/js/demo.js"></script> <!-- only for demo -->
	
	<!-- this page specific scripts -->
	<script src="assets/js/jquery-ui.custom.min.js"></script>
	<script src="assets/js/fullcalendar.min.js"></script>
	<script src="assets/js/jquery.slimscroll.min.js"></script>
	<script src="assets/js/raphael-min.js"></script>
	<script src="assets/js/morris.min.js"></script>
	<script src="assets/js/moment.min.js"></script>
	<script src="assets/js/daterangepicker.js"></script>
	<script src="assets/js/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="assets/js/jquery-jvectormap-world-merc-en.js"></script>
	<script src="assets/js/gdp-data.js"></script>
	<script src="assets/js/flot/jquery.flot.js"></script>
	<script src="assets/js/flot/jquery.flot.min.js"></script>
	<script src="assets/js/flot/jquery.flot.pie.min.js"></script>
	<script src="assets/js/flot/jquery.flot.stack.min.js"></script>
	<script src="assets/js/flot/jquery.flot.resize.min.js"></script>
	<script src="assets/js/flot/jquery.flot.time.min.js"></script>
	<script src="assets/js/flot/jquery.flot.threshold.js"></script>
	<script src="assets/js/jquery.countTo.js"></script>
	
	<!-- waypoints -->
	<script src="/securityDataDemo/src/main/webapp/WEB-INF/js/jquery.waypoints.js"></script>
	<script src="/securityDataDemo/src/main/webapp/WEB-INF/js/sticky.js"></script>
	
	<!-- theme scripts -->
	<script src="/securityDataDemo/src/main/webapp/WEB-INF/js/scripts.js"></script>
	<script src="/securityDataDemo/src/main/webapp/WEB-INF/js/pace.min.js"></script>
	
	<script>
	$(function() {
		
		// bar chart
		if ($('#graph-bar').length) {
			var db1 = [];
			for (var i = 0; i <= 10; i += 1) {
				db1.push([i, parseInt(Math.random() * 30)]);
			}

			var db2 = [];
			for (var i = 0; i <= 10; i += 1) {
				db2.push([i, parseInt(Math.random() * 30)]);
			}

			var db3 = [];
			for (var i = 0; i <= 10; i += 1) {
				db3.push([i, parseInt(Math.random() * 30)]);
			}
			
			var series = new Array();

			series.push({
				data : db1,
				bars : {
					show : true,
					barWidth : 0.2,
					order : 1,
					lineWidth: 1,
					fill: 1
				}
			});
			series.push({
				data : db2,
				bars : {
					show : true,
					barWidth : 0.2,
					order : 2,
					lineWidth: 1,
					fill: 1
				}
			});
			series.push({
				data : db3,
				bars : {
					show : true,
					barWidth : 0.2,
					order : 3,
					lineWidth: 1,
					fill: 1
				}
			}); 

			$.plot("#graph-bar", series, {
				colors: ['#e74c3c', '#f1c40f', '#2ecc71', '#3498db', '#9b59b6', '#95a5a6'],
				grid: {
					tickColor: "#ddd",
					borderWidth: 0
				},
				shadowSize: 0
			});
		}
		
		// bar chart - horizontal
		if ($('#graph-flot-bar-horizontal').length) {
			var db1 = [];
			for (var i = 0; i <= 4; i += 1) {
				db1.push([parseInt(Math.random() * 30), i]);
			}

			var db2 = [];
			for (var i = 0; i <= 4; i += 1) {
				db2.push([parseInt(Math.random() * 30), i]);
			}

			var db3 = [];
			for (var i = 0; i <= 4; i += 1) {
				db3.push([parseInt(Math.random() * 30), i]);
			}
			
			var series = new Array();

			series.push({
				data : db1,
				bars : {
					show : true,
					barWidth : 0.2,
					order : 1,
					lineWidth: 1,
					horizontal: true,
					fill: 1
				}
			});
			series.push({
				data : db2,
				bars : {
					show : true,
					barWidth : 0.2,
					order : 2,
					lineWidth: 1,
					horizontal: true,
					fill: 1
				}
			});
			series.push({
				data : db3,
				bars : {
					show : true,
					barWidth : 0.2,
					order : 3,
					lineWidth: 1,
					horizontal: true,
					fill: 1
				}
			}); 

			$.plot("#graph-flot-bar-horizontal", series, {
				colors: ['#e74c3c', '#f1c40f', '#2ecc71', '#3498db', '#9b59b6', '#95a5a6'],
				grid: {
					tickColor: "#ddd",
					borderWidth: 0
				},
				shadowSize: 0
			});
		}
		
		// graph with points - sin/cos example
		if ($('#graph-flot-sin').length) {
			var sin = [],
				cos = [];

			for (var i = 0; i < 14; i += 0.5) {
				sin.push([i, Math.sin(i)]);
				cos.push([i, Math.cos(i)]);
			}

			var plot = $.plot("#graph-flot-sin", [
				{ data: sin, label: "sin(x)"},
				{ data: cos, label: "cos(x)"}
			], {
				series: {
					lines: {
						show: true,
						lineWidth: 2
					},
					points: {
						show: true
					}
				},
				grid: {
					hoverable: true,
					clickable: true,
					tickColor: "#ddd",
					borderWidth: 0
				},
				yaxis: {
					min: -1.2,
					max: 1.2
				},
				colors: ['#e74c3c', '#2ecc71', '#f1c40f', '#3498db', '#9b59b6', '#95a5a6'],
				shadowSize: 0
			});

			function showTooltip(x, y, contents) {
				$("<div id='tooltip'>" + contents + "</div>").css({
					position: "absolute",
					display: "none",
					top: y + 5,
					left: x + 5,
					border: "1px solid #fdd",
					padding: "2px",
					"background-color": "#fee",
					opacity: 0.80
				}).appendTo("body").fadeIn(200);
			}

			var previousPoint = null;
			$("#graph-flot-sin").bind("plothover", function (event, pos, item) {

				if ($("#enablePosition:checked").length > 0) {
					var str = "(" + pos.x.toFixed(2) + ", " + pos.y.toFixed(2) + ")";
					$("#hoverdata").text(str);
				}

				if ($("#enableTooltip:checked").length > 0) {
					if (item) {
						if (previousPoint != item.dataIndex) {

							previousPoint = item.dataIndex;

							$("#tooltip").remove();
							var x = item.datapoint[0].toFixed(2),
							y = item.datapoint[1].toFixed(2);

							showTooltip(item.pageX, item.pageY,
							    item.series.label + " of " + x + " = " + y);
						}
					} else {
						$("#tooltip").remove();
						previousPoint = null;            
					}
				}
			});

			$("#graph-flot-sin").bind("plotclick", function (event, pos, item) {
				if (item) {
					$("#clickdata").text(" - click point " + item.dataIndex + " in " + item.series.label);
					plot.highlight(item.series, item.datapoint);
				}
			});
		}

		// stack graph
		if ($('#graph-flot-stacking').length) {
			var d1 = [];
			for (var i = 0; i <= 10; i += 1) {
				d1.push([i, parseInt(Math.random() * 30)]);
			}

			var d2 = [];
			for (var i = 0; i <= 10; i += 1) {
				d2.push([i, parseInt(Math.random() * 30)]);
			}

			var d3 = [];
			for (var i = 0; i <= 10; i += 1) {
				d3.push([i, parseInt(Math.random() * 30)]);
			}

			var stack = 0,
				bars = true,
				lines = false,
				steps = false;

			function plotWithOptions() {
				$.plot("#graph-flot-stacking", [ d1, d2, d3 ], {
					series: {
						stack: stack,
						lines: {
							show: lines,
							fill: true,
							steps: steps,
							lineWidth: 1,
							fill: 1
						},
						bars: {
							show: bars,
							barWidth: 0.3,
							lineWidth: 1,
							fill: 1
						}
					},
					colors: ['#e74c3c', '#f1c40f', '#2ecc71', '#3498db', '#9b59b6', '#95a5a6'],
					grid: {
						tickColor: "#ddd",
						borderWidth: 0
					},
					shadowSize: 0
				});
			}

			plotWithOptions();

			$(".stackControls button").click(function (e) {
				e.preventDefault();
				stack = $(this).text() == "With stacking" ? true : null;
				plotWithOptions();
			});

			$(".graphControls button").click(function (e) {
				e.preventDefault();
				bars = $(this).text().indexOf("Bars") != -1;
				lines = $(this).text().indexOf("Lines") != -1;
				steps = $(this).text().indexOf("steps") != -1;
				plotWithOptions();
			});
		}

		// donut chart
		if ($('#graph-flot-donut').length) {
			var dataDonut = [
				{ label: "Series1",  data: 10},
				{ label: "Series2",  data: 30},
				{ label: "Series3",  data: 90},
				{ label: "Series4",  data: 70},
				{ label: "Series5",  data: 80},
				{ label: "Series6",  data: 110}
			];
			
			$.plot('#graph-flot-donut', dataDonut, {
			    series: {
			        pie: {
			            show: true,
			            innerRadius: 0.5,
			            label: {
			                show: true,
			            }
			        }
			    },
				colors: ['#e74c3c', '#f1c40f', '#2ecc71', '#3498db', '#9b59b6', '#95a5a6'],
			    legend: {
			        show: false,
			    }
			});
		}

		// graph with points
		if ($('#graph-flot-points').length) {
			var likes = [[1, 5], [2, 10], [3, 15], [4, 20],[5, 25],[6, 30],[7, 35],[8, 40],[9, 45],[10, 50],[11, 55],[12, 60],[13, 65],[14, 70],[15, 75],[16, 80],[17, 85],[18, 90],[19, 85],[20, 80],[21, 75],[22, 80],[23, 75],[24, 70],[25, 65],[26, 75],[27,80],[28, 85],[29, 90], [30, 95]];

			var plot = $.plot($("#graph-flot-points"),
				   [ { data: likes, label: "Fans"} ], {
					   series: {
						   lines: { 
							   show: true,
								lineWidth: 2,
								fill: true, 
								fillColor: { colors: [ { opacity: 0.3 }, { opacity: 0.3 } ] }
						 	},
						   points: { show: true, 
									 lineWidth: 2 
								 },
						   shadowSize: 0
					   },
					   grid: { hoverable: true, 
							   clickable: true, 
							   tickColor: "#f9f9f9",
							   borderWidth: 0
							 },
					   colors: ["#3498db"],
						xaxis: {ticks:6, tickDecimals: 0},
						yaxis: {ticks:3, tickDecimals: 0},
					 });

			function showTooltip(x, y, contents) {
				$('<div id="tooltip">' + contents + '</div>').css( {
					position: 'absolute',
					display: 'none',
					top: y + 5,
					left: x + 5,
					border: '1px solid #fdd',
					padding: '2px',
					'background-color': '#dfeffc',
					opacity: 0.80
				}).appendTo("body").fadeIn(200);
			}

			var previousPoint = null;
			$("#graph-flot-points").bind("plothover", function (event, pos, item) {
				$("#x").text(pos.x.toFixed(2));
				$("#y").text(pos.y.toFixed(2));

					if (item) {
						if (previousPoint != item.dataIndex) {
							previousPoint = item.dataIndex;

							$("#tooltip").remove();
							var x = item.datapoint[0].toFixed(2),
								y = item.datapoint[1].toFixed(2);

							showTooltip(item.pageX, item.pageY,
										item.series.label + " of " + x + " = " + y);
						}
					}
					else {
						$("#tooltip").remove();
						previousPoint = null;
					}
			});
		}

		// graph real time
		if ($('#graph-flot-realtime').length) {
		
			var data = [],
				totalPoints = 300;

			function getRandomData() {

				if (data.length > 0)
					data = data.slice(1);

				// Do a random walk

				while (data.length < totalPoints) {

					var prev = data.length > 0 ? data[data.length - 1] : 50,
						y = prev + Math.random() * 10 - 5;

					if (y < 0) {
						y = 0;
					} else if (y > 100) {
						y = 100;
					}

					data.push(y);
				}

				// Zip the generated y values with the x values

				var res = [];
				for (var i = 0; i < data.length; ++i) {
					res.push([i, data[i]])
				}

				return res;
			}

			// Set up the control widget

			var updateInterval = 30;
			$("#updateInterval").val(updateInterval).change(function () {
				var v = $(this).val();
				if (v && !isNaN(+v)) {
					updateInterval = +v;
					if (updateInterval < 1) {
						updateInterval = 1;
					} else if (updateInterval > 2000) {
						updateInterval = 2000;
					}
					$(this).val("" + updateInterval);
				}
			});

			var plot = $.plot("#graph-flot-realtime", [ getRandomData() ], {
				series: {
					lines: { 
						show: true,
						lineWidth: 2,
						fill: true, 
						fillColor: { colors: [ { opacity: 0.3 }, { opacity: 0.3 } ] }
					},
					shadowSize: 0	// Drawing is faster without shadows
				},
				colors: ["#3FAE29"],
				yaxis: {
					min: 0,
					max: 100
				},
				xaxis: {
					show: false
				}
			});

			function update() {

				plot.setData([getRandomData()]);

				// Since the axes don't change, we don't need to call plot.setupGrid()

				plot.draw();
				setTimeout(update, updateInterval);
			}

			update();
		}
	});
	
	function labelFormatter(label, series) {
		return "<div style='font-size:8pt; text-align:center; padding:2px; color:white;'>" + label + "<br/>" + Math.round(series.percent) + "%</div>";
	}
	</script>
	<script>
	$('#tickets a').click(function (e) {
	    console.log('clicked '+this);
	    if($(this).parent('li').hasClass('active')){
	        var target_pane=$(this).attr('href');
	        console.log('pane: '+target_pane);
	        $( target_pane ).toggle( !$( target_pane ).is(":visible") );
	    }
	});
	</script>

	
	
</body>
</html>
