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
								<h1>Operator <small>Dashboard</small></h1>
							</div>

							<div class="row">

								<div class="col-lg-12">

									<ul class="nav nav-tabs" role="tablist">
										<li role="presentation" class="nothing col-md-4"><a href="#nothing" aria-controls="nothing" role="tab" data-toggle="tab">Active</a></li>
										<li role="presentation" class="issue col-md-4"><a href="#issue" aria-controls="issue" role="tab" data-toggle="tab">Issue</a></li>
										<li role="presentation" class="warning col-md-4"><a href="#warning" aria-controls="warning" role="tab" data-toggle="tab">Warning</a></li>
									</ul>

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
	
	<!-- this page specific scripts >
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
	<script src="assets/js/jquery.countTo.js"></script-->
	
	<!-- waypoints -->
	<script src="/securityDataDemo/src/main/webapp/WEB-INF/js/jquery.waypoints.js"></script>
	<script src="/securityDataDemo/src/main/webapp/WEB-INF/js/sticky.js"></script>
	
	<!-- theme scripts -->
	<script src="/securityDataDemo/src/main/webapp/WEB-INF/js/scripts.js"></script>
	<script src="/securityDataDemo/src/main/webapp/WEB-INF/js/pace.min.js"></script>
	
	
</body>
</html>