<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"
import = "com.mongodb.DB"
import = "com.mongodb.DBCollection"
import = "com.mongodb.DBCursor"
import = "com.mongodb.ServerAddress"
import = "com.mongodb.DBObject"
import = "com.mongodb.WriteConcern"
import = "com.mongodb.MongoException"
import = "com.mongodb.BasicDBObject"
import = "com.mongodb.MongoClient"
import = "java.util.Arrays"
import = "java.util.*"
%>

<% int go = 5; %>

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
	<link rel="stylesheet" href="/securityDataDemo/src/main/webapp/WEB-INF/css/compiled/test2.css" type="text/css" />
	
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
											<a href="index.jsp">
												Index
											</a>
										</li>
										<li>
											<a href="http://192.168.1.123:3700/interface">
												Video
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
						<div class="main-box" style="max-width: 980px">
						
							<div class="row">
                                <div class="col-md-12 h2-title">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <span class="number">1,159</span>
                                            <span class="tickets">Tickets</span>
                                        </div>
                                        <div class="col-md-5 ticket-nav">
                                        	<div class="ticket active"><i class="fa fa-circle"></i><span class="notification">3</span></div>
                                            <div class="ticket issue"><i class="fa fa-circle-thin"></i></div>
                                            <div class="ticket warning"><i class="fa fa-bullseye"></i><span class="notification">5</span></div>
                                        </div> 
                                    </div>
                                </div>
                                <div class="col-md-12 h2-content">
                                    <div class="row">
                                        <div class="col-md-6 h2-left">
                                            <div id="atm1" class="col-md-12 atm-info">
                                                <div class="row">
                                                    <div class="col-sm-5">
                                                        <span class="title">ATM 352994M</span>
                                                        <span class="address">128 Reform Street<br>Dundee</span>
                                                    </div>
                                                    <div class="col-sm-5 description">
                                                        <span class="warning"><i class="fa fa-bullseye"></i>Lost Communication</span>
                                                    </div>
                                                    <div class="col-sm-2 ticket">
                                                        <i class="fa fa-ticket"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="atm2" class="col-md-12 atm-info">
                                                <div class="row">
                                                    <div class="col-sm-5">
                                                        <span class="title">ATM 352995M</span>
                                                        <span class="address">47 Bell Street<br>Dundee</span>
                                                    </div>
                                                    <div class="col-sm-5 description">
                                                        <span class="warning"><i class="fa fa-bullseye"></i>UA Lost Communication</span>
                                                    </div>
                                                    <div class="col-sm-2 ticket">
                                                        <i class="fa fa-ticket"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="atm3" class="col-md-12 atm-info">
                                                <div class="row">
                                                    <div class="col-sm-5">
                                                        <span class="title">ATM 27831245</span>
                                                        <span class="address">52 Barrack Street<br>Dundee</span>
                                                    </div>
                                                    <div class="col-sm-5 description">
                                                        <span class="active"><i class="fa fa-circle"></i>Cash Low</span>
                                                    </div>
                                                    <div class="col-sm-2 ticket">
                                                        <i class="fa fa-ticket"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="atm4" class="col-md-12 atm-info">
                                                <div class="row">
                                                    <div class="col-sm-5">
                                                        <span class="title">ATM 00456792</span>
                                                        <span class="address">317 Candle Lane<br>Dundee</span>
                                                    </div>
                                                    <div class="col-sm-5 description">
                                                        <span class="active"><i class="fa fa-circle"></i>Receipt Paper Low</span>
                                                    </div>
                                                    <div class="col-sm-2 ticket">
                                                        <i class="fa fa-ticket"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="atm5" class="col-md-12 atm-info">
                                                <div class="row">
                                                    <div class="col-sm-5">
                                                        <span class="title">ATM 27831245</span>
                                                        <span class="address"><% out.print(go); %><br>Dundee</span>
                                                    </div>
                                                    <div class="col-sm-5 description">
                                                        <span class="warning"><i class="fa fa-bullseye"></i>Maintenance</span>
                                                    </div>
                                                    <div class="col-sm-2 ticket">
                                                        <i class="fa fa-ticket"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="atm6" class="col-md-12 atm-info">
                                                <div class="row">
                                                    <div class="col-sm-5">
                                                        <span class="title">ATM 00456792</span>
                                                        <span class="address">188 Dudhope Terrace<br>Dundee</span>
                                                    </div>
                                                    <div class="col-sm-5 description">
                                                        <span class="warning"><i class="fa fa-bullseye"></i>Lost Communication</span>
                                                    </div>
                                                    <div class="col-sm-2 ticket">
                                                        <i class="fa fa-ticket"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="atm7" class="col-md-12 atm-info">
                                                <div class="row">
                                                    <div class="col-sm-5">
                                                        <span class="title">ATM 27831245</span>
                                                        <span class="address">513 Dow Street<br>Dundee</span>
                                                    </div>
                                                    <div class="col-sm-5 description">
                                                        <span class="active"><i class="fa fa-circle"></i>Cash Low</span>
                                                    </div>
                                                    <div class="col-sm-2 ticket">
                                                        <i class="fa fa-ticket"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="atm8" class="col-md-12 atm-info">
                                                <div class="row">
                                                    <div class="col-sm-5">
                                                        <span class="title">ATM 00456792</span>
                                                        <span class="address">128 Princes Street<br>Dundee</span>
                                                    </div>
                                                    <div class="col-sm-5 description">
                                                        <span class="active"><i class="fa fa-circle"></i>Cash Low</span>
                                                    </div>
                                                    <div class="col-sm-2 ticket">
                                                        <i class="fa fa-ticket"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="atm9" class="col-md-12 atm-info">
                                                <div class="row">
                                                    <div class="col-sm-5">
                                                        <span class="title">ATM 27831245</span>
                                                        <span class="address">17 Hill Street<br>Dundee</span>
                                                    </div>
                                                    <div class="col-sm-5 description">
                                                        <span class="active"><i class="fa fa-circle"></i>Cash Low</span>
                                                    </div>
                                                    <div class="col-sm-2 ticket">
                                                        <i class="fa fa-ticket"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="atm10" class="col-md-12 atm-info">
                                                <div class="row">
                                                    <div class="col-sm-5">
                                                        <span class="title">ATM 00456792</span>
                                                        <span class="address">33 Alexander Street<br>Dundee</span>
                                                    </div>
                                                    <div class="col-sm-5 description">
                                                        <span class="warning"><i class="fa fa-bullseye"></i>Lost Communication</span>
                                                    </div>
                                                    <div class="col-sm-2 ticket">
                                                        <i class="fa fa-ticket"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 atm-info">
                                                <div class="row">
                                                    <div class="col-sm-5">
                                                        <span class="title">ATM 27831245</span>
                                                        <span class="address">222 Sutherland Place<br>Dundee</span>
                                                    </div>
                                                    <div class="col-sm-5 description">
                                                        <span class="active"><i class="fa fa-circle"></i>Cash Low</span>
                                                    </div>
                                                    <div class="col-sm-2 ticket">
                                                        <i class="fa fa-ticket"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 atm-info">
                                                <div class="row">
                                                    <div class="col-sm-5">
                                                        <span class="title">ATM 00456792</span>
                                                        <span class="address">3278 Broadway Ave, Suite 100<br>Charlotte, VA 25791</span>
                                                    </div>
                                                    <div class="col-sm-5 description">
                                                        <span class="active"><i class="fa fa-circle"></i>Receipt Paper Low</span>
                                                    </div>
                                                    <div class="col-sm-2 ticket">
                                                        <i class="fa fa-ticket"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 atm-info">
                                                <div class="row">
                                                    <div class="col-sm-5">
                                                        <span class="title">ATM 27831245</span>
                                                        <span class="address">1200 Freemont Blvd<br>Charlotte, VA 25798</span>
                                                    </div>
                                                    <div class="col-sm-5 description">
                                                        <span class="warning"><i class="fa fa-bullseye"></i>Maintenance</span>
                                                    </div>
                                                    <div class="col-sm-2 ticket">
                                                        <i class="fa fa-ticket"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 atm-info">
                                                <div class="row">
                                                    <div class="col-sm-5">
                                                        <span class="title">ATM 00456792</span>
                                                        <span class="address">3278 Broadway Ave, Suite 100<br>Charlotte, VA 25791</span>
                                                    </div>
                                                    <div class="col-sm-5 description">
                                                        <span class="warning"><i class="fa fa-bullseye"></i>Lost Communication</span>
                                                    </div>
                                                    <div class="col-sm-2 ticket">
                                                        <i class="fa fa-ticket"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 atm-info">
                                                <div class="row">
                                                    <div class="col-sm-5">
                                                        <span class="title">ATM 27831245</span>
                                                        <span class="address">1200 Freemont Blvd<br>Charlotte, VA 25798</span>
                                                    </div>
                                                    <div class="col-sm-5 description">
                                                        <span class="active"><i class="fa fa-circle"></i>Cash Low</span>
                                                    </div>
                                                    <div class="col-sm-2 ticket">
                                                        <i class="fa fa-ticket"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 atm-info">
                                                <div class="row">
                                                    <div class="col-sm-5">
                                                        <span class="title">ATM 00456792</span>
                                                        <span class="address">3278 Broadway Ave, Suite 100<br>Charlotte, VA 25791</span>
                                                    </div>
                                                    <div class="col-sm-5 description">
                                                        <span class="active"><i class="fa fa-circle"></i>Cash Low</span>
                                                    </div>
                                                    <div class="col-sm-2 ticket">
                                                        <i class="fa fa-ticket"></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                       
                                        
                                        <div class="col-md-6 h2-right">
                                        
                                        <!--
                                            <iframe width="100%" height="700" frameborder="0" style="border:0"
src="https://www.google.com/maps/embed/v1/place?q=NCR%2C%20Fulton%20Road%2C%20Dundee%2C%20United%20Kingdom&key=AIzaSyDTvXIySHIZrS6lsoLjjg0SLRKzlSuQ5PU" allowfullscreen></iframe>
                                        
                                         --> 
                                         
                                         <div id="map_wrapper">
										    <div id="map_canvas" class="mapping"></div>
										</div>
										<div>
											<a href="http://192.168.1.123:3700/interface">
												Video
											</a>
											
											<a href="index.jsp">
												Index
											</a>
										</div>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>

						</div>				
					</div>
				</div>
				
			</section>
			
			<!-- Modal -->
<div class="modal fade" id="video" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">AXIS IP Camera</h4>
      </div>
      <div class="modal-body">
        <iframe src="http://192.168.1.123:3700/interface" class="video" width="500" height="300" frameborder="0"></iframe>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>


		</div>
	</div>

	
	<!-- global scripts -->
	<script src="/securityDataDemo/src/main/webapp/WEB-INF/js/demo-skin-changer.js"></script> <!-- only for demo -->
	
	<script src="/securityDataDemo/src/main/webapp/WEB-INF/js/jquery.js"></script>
	<script src="/securityDataDemo/src/main/webapp/WEB-INF/js/bootstrap.js"></script>
	<script src="/securityDataDemo/src/main/webapp/WEB-INF/js/jquery.nanoscroller.min.js"></script>
	<script src="/securityDataDemo/src/main/webapp/WEB-INF/js/map3.js"></script>
	
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
	
</body>
</html>