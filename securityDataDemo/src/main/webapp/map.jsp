<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" 
	import="com.mongodb.DB"
	import="com.mongodb.DBCollection" import="com.mongodb.DBCursor"
	import="com.mongodb.ServerAddress" import="com.mongodb.DBObject"
	import="com.mongodb.WriteConcern" import="com.mongodb.MongoException"
	import="com.mongodb.BasicDBObject" import="com.mongodb.MongoClient"
	import="java.util.Arrays" import="java.util.*" import="java.io.File"
	import="org.apache.commons.net.ftp.*"
%>
<%

MongoClient mongo = new MongoClient("localhost",27017);
DB db = mongo.getDB("WL");
DBCollection collection = db.getCollection("testCol");
BasicDBObject query = new BasicDBObject("Event", "Camera Covered");
DBCursor cursor = collection.find(query);
String cameraEvent = null; 
String computer = "NCR-352994MJ009";


try
{
	while (cursor.hasNext())
	{
		DBObject data = cursor.next();
		cameraEvent = data.get("Event").toString();		

	}
	}

	finally {
		cursor.close();
	}
//MongoClient mongo2 = new MongoClient("localhost",27017);
DB db2 = mongo.getDB("WL");
DBCollection collection2 = db.getCollection("testCol");
BasicDBObject query2 = new BasicDBObject("Computer","NCR-352994MJ009");
DBCursor cursor2 = collection.find(query2);
//BasicDBObject query2 = new BasicDBObject("Event ID", "3221232506");
//DBCursor cursor2 = collection.find(query2);
Boolean uaDisconnected = false;
Boolean atmDis = false;
Boolean usb = false;


try
{
	while (cursor2.hasNext())
	{
		DBObject data = cursor2.next();
		
		 if (data.get("Event ID").toString().compareTo("20001") == 0)
		 {
				usb = true;
		 }
		if (data.get("Event ID").toString().compareTo("3221232506") == 0)
		{
			uaDisconnected = true;
			
		}
		if(data.get("Event ID").toString().compareTo("2684616731") == 0)
		{
			atmDis = true;
			
		}
		
	}
}
	finally {
		cursor2.close();
		
	}



//cameraEvent = "cameraCovered";
%>


<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>NCR Dashboard</title>
<!-- bootstrap -->
<link rel="stylesheet" type="text/css"
	href="/securityDataDemo/src/main/webapp/WEB-INF/css/bootstrap/bootstrap.min.css" />

<!-- RTL support - for demo only -->
<script src="/securityDataDemo/src/main/webapp/WEB-INF/js/demo-rtl.js"></script>
<!-- 
	If you need RTL support just include here RTL CSS file <link rel="stylesheet" type="text/css" href="assets/css/libs/bootstrap-rtl.min.css" />
	And add "rtl" class to <body> element - e.g. <body class="rtl"> 
	-->

<!-- libraries -->
<link rel="stylesheet" type="text/css"
	href="/securityDataDemo/src/main/webapp/WEB-INF/css/libs/font-awesome.css" />
<link rel="stylesheet" type="text/css"
	href="/securityDataDemo/src/main/webapp/WEB-INF/css/libs/nanoscroller.css" />

<!-- global styles -->
<link rel="stylesheet" type="text/css"
	href="/securityDataDemo/src/main/webapp/WEB-INF/css/compiled/theme_styles.css" />

<!-- this page specific styles -->
<link rel="stylesheet"
	href="/securityDataDemo/src/main/webapp/WEB-INF/css/libs/fullcalendar.css"
	type="text/css" />
<link rel="stylesheet"
	href="/securityDataDemo/src/main/webapp/WEB-INF/css/libs/fullcalendar.print.css"
	type="text/css" media="print" />
<link rel="stylesheet"
	href="/securityDataDemo/src/main/webapp/WEB-INF/css/compiled/calendar.css"
	type="text/css" media="screen" />
<link rel="stylesheet"
	href="/securityDataDemo/src/main/webapp/WEB-INF/css/libs/morris.css"
	type="text/css" />
<link rel="stylesheet"
	href="/securityDataDemo/src/main/webapp/WEB-INF/css/libs/daterangepicker.css"
	type="text/css" />
<link rel="stylesheet"
	href="/securityDataDemo/src/main/webapp/WEB-INF/css/libs/jquery-jvectormap-1.2.2.css"
	type="text/css" />
<link rel="stylesheet"
	href="/securityDataDemo/src/main/webapp/WEB-INF/css/compiled/test5.css"
	type="text/css" />

<!-- Favicon -->
<link type="image/x-icon"
	href="/securityDataDemo/src/main/webapp/WEB-INF/favicon.png"
	rel="shortcut icon" />

<!-- google font libraries -->
<link
	href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700,300|Titillium+Web:200,300,400"
	rel='stylesheet' type='text/css'>

<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
	<![endif]-->

<style>
#map {
	height: 700px;
}

.ticket i {
	padding: 0;
}

.ticket .alert {
	color: #323332;
	padding-top: 5px;
}

.ticket .alert:hover {
	cursor: pointer;
	color: #fff;
}

</style>

</head>
<body>
	<div id="theme-wrapper">

		<div id="page-wrapper" class="container">

			<section id="nav-col">
				<div id="col-left" class="col-left-nano">
					<div id="col-left-inner" class="col-left-nano-content">

						<div class="collapse navbar-collapse navbar-ex1-collapse"
							id="sidebar-nav">


							<div class="nav-brand">
								<div class="logo logo-1">
									<i class="fa fa-th-large"></i>
								</div>
								<div class="logo logo-2">
									<i class="">Vi</i> <span>Version 4.0 <br /> Nov. 23
										10:32 PM
									</span>
								</div>
							</div>


							<ul class="nav nav-pills nav-stacked">
								<li class="active"><a href="#" class="dropdown-toggle">
										<i class="fa fa-dashboard"></i> <span>Dashboard</span>
								</a>
									<ul class="submenu">
										<li class="active"><a href="index.jsp"> Index </a></li>
										<li><a href="http://192.168.1.123:3700/interface">
												Video </a></li>
										<li><a href="#"> Settings </a></li>
										<li><a href="#"> Account </a></li>
									</ul></li>
								<li><a href="#" class="dropdown-toggle"> <i
										class="fa fa-table"></i> <span>Network</span>
								</a>
									<ul class="submenu">
										<li class=""><a href="http://www.google.co.uk/">
												Simple </a></li>
										<li><a href="#"> Advanced </a></li>
										<li><a href="#"> Users </a></li>
									</ul></li>
								<li><a href="#" class="dropdown-toggle"> <i
										class="fa fa-envelope"></i> <span>Analytics</span>
								</a>
									<ul class="submenu">
										<li><a href="#"> Inbox </a></li>
										<li class=""><a href="#"> Detail </a></li>
										<li><a href="#"> Compose </a></li>
									</ul></li>
								<li><a href="#" class="dropdown-toggle"> <i
										class="fa fa-bar-chart-o"></i> <span>Inventory</span>
								</a>
									<ul class="submenu">
										<li><a href="#"> Morris &amp; Mixed </a></li>
										<li><a href="#"> Flot </a></li>
										<li><a href="#"> Dygraphs </a></li>
										<li><a href="#"> xCharts </a></li>
									</ul></li>
								<li><a href="#"> <i class="fa fa-th-large"></i> <span>Contacts</span>
								</a></li>
								<li><a href="#" class="dropdown-toggle"> <i
										class="fa fa-desktop"></i> <span>Reports</span>
								</a>
									<ul class="submenu">
										<li><a href="#"> Calendar </a></li>
										<li><a href="#"> Gallery </a></li>
										<li><a href="#"> Gallery v2 </a></li>
										<li><a href="#"> Pricing </a></li>
										<li><a href="#"> Projects </a></li>
										<li><a href="#"> Team Members </a></li>
										<li><a href="#"> Timeline </a></li>
										<li><a href="#"> Timeline Grid </a></li>
										<li><a href="#"> User Profile </a></li>
										<li><a href="#"> Search Results </a></li>
										<li><a href="#"> Invoice </a></li>
										<li><a href="#"> Tour Layout </a></li>
									</ul></li>
								<li><a href="#" class="dropdown-toggle"> <i
										class="fa fa-edit"></i> <span>Admin</span>
								</a>
									<ul class="submenu">
										<li><a href="#"> Elements </a></li>
										<li><a href="#"> X-Editable </a></li>
										<li><a href="#"> Wizard </a></li>
										<li><a href="#"> Wizard popup </a></li>
										<li><a href="#"> WYSIWYG </a></li>
										<li><a href="#"> WYSIWYG Summernote </a></li>
										<li><a href="#"> WYSIWYG CKEditor </a></li>
										<li><a href="#"> Multiple File Upload </a></li>
									</ul></li>
								<li><a href="#" class="dropdown-toggle"> <i
										class="fa fa-desktop"></i> <span>Users</span>
								</a>
									<ul class="submenu">
										<li><a href="#"> Elements </a></li>
										<li><a href="#"> Notifications &amp; Alerts </a></li>
										<li><a href="#"> Modals </a></li>
										<li><a href="#"> Video </a></li>
										<li><a href="#"> Nestable List </a></li>
										<li><a href="#"> Typography </a></li>
									</ul></li>
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
									<div id="testy2" class="row">
										<div class="col-md-3">
											<span id="testy" class="number">1736</span> <span
												class="tickets">Tickets</span>
										</div>
										<div class="col-md-5 ticket-nav">
											<div class="ticket active">
												<i class="fa fa-circle"></i><span class="notification">3</span>
											</div>
											<div class="ticket issue">
												<i class="fa fa-circle-thin"></i>
											</div>
											<div class="ticket warning">
												<i class="fa fa-bullseye"></i><span class="notification">5</span>
											</div>
										</div>
										<div id="extCam">
											<iframe src="notification1.jsp" frameborder="0" height="230"></iframe>
										</div>
									</div>
								</div>
								<div class="col-md-12 h2-content">
									<div class="row">
										<div class="col-md-6 h2-left">
											<div id="atm3" class="col-md-12 atm-info aft-not">
												<div class="row">
													<div class="col-sm-5">
														<span class="title">ATM 27831245</span> <span
															class="address">52 Barrack Street<br>Dundee
														</span>
													</div>
													<div class="col-sm-5 description">
														<span class="warning"><i class="fa fa-bullseye"></i>Camera
															Covered</span>
													</div>
													<div class="col-sm-2 ticket">
														<i class="fa fa-check-circle alert reset"></i>
													</div>
												</div>
											</div>
											<div id="atm1" class="col-md-12 atm-info aft-not2">
												<div class="row">
													<div class="col-sm-5">
														<span class="title">ATM 352994M</span> <span
															class="address">128 Reform Street<br>Dundee
														</span>
													</div>
													<div class="col-sm-5 description">
														<span class="warning"><i class="fa fa-bullseye"></i>USB Inserted</span>
													</div>
													<div class="col-sm-2 ticket">
														<i class="fa fa-check-circle alert reset2"></i>
													</div>
												</div>
											</div>
											<div id="atm1" class="col-md-12 atm-info bef-not2">
												<div class="row">
													<div class="col-sm-5">
														<span class="title">ATM 352994M</span> <span
															class="address">128 Reform Street<br>Dundee
														</span>
													</div>
													<div class="col-sm-5 description">
														<span class="active"><i class="fa fa-circle"></i>Operational</span>
													</div>
													<div class="col-sm-2 ticket">
														
													</div>
												</div>
											</div>
											<div id="atm2" class="col-md-12 atm-info">
												<div class="row">
													<div class="col-sm-5">
														<span class="title">ATM 352995M</span> <span
															class="address">47 Bell Street<br>Dundee
														</span>
													</div>
													<div class="col-sm-5 description">
														<span class="active"><i class="fa fa-circle"></i>Operational</span>
													</div>
													<div class="col-sm-2 ticket">
														
													</div>
												</div>
											</div>
											<div id="atm3" class="col-md-12 atm-info bef-not">
												<div class="row">
													<div class="col-sm-5">
														<span class="title">ATM 27831245</span> <span
															class="address">52 Barrack Street<br>Dundee
														</span>
													</div>
													<div class="col-sm-5 description">
														<span class="active"><i class="fa fa-circle"></i>Operational</span>
													</div>
													<div class="col-sm-2 ticket">
														
													</div>
												</div>
											</div>
											<div id="atm4" class="col-md-12 atm-info">
												<div class="row">
													<div class="col-sm-5">
														<span class="title">ATM 00456792</span> <span
															class="address">317 Candle Lane<br>Dundee
														</span>
													</div>
													<div class="col-sm-5 description">
														<span class="active"><i class="fa fa-circle"></i>Operational</span>
													</div>
													<div class="col-sm-2 ticket">
														
													</div>
												</div>
											</div>
											<div id="atm5" class="col-md-12 atm-info">
												<div class="row">
													<div class="col-sm-5">
														<span class="title">ATM 27831245</span> <span
															class="address">440 Douglas Street<br>Dundee
														</span>
													</div>
													<div class="col-sm-5 description">
														<span class="active"><i class="fa fa-circle"></i>Operational</span>
													</div>
													<div class="col-sm-2 ticket">
														
													</div>
												</div>
											</div>
											<div id="atm6" class="col-md-12 atm-info">
												<div class="row">
													<div class="col-sm-5">
														<span class="title">ATM 00456792</span> <span
															class="address">188 Dudhope Terrace<br>Dundee
														</span>
													</div>
													<div class="col-sm-5 description">
														<span class="active"><i class="fa fa-circle"></i>Operational</span>
													</div>
													<div class="col-sm-2 ticket">
														
													</div>
												</div>
											</div>
											<div id="atm7" class="col-md-12 atm-info">
												<div class="row">
													<div class="col-sm-5">
														<span class="title">ATM 27831245</span> <span
															class="address">513 Dow Street<br>Dundee
														</span>
													</div>
													<div class="col-sm-5 description">
														<span class="active"><i class="fa fa-circle"></i>Operational</span>
													</div>
													<div class="col-sm-2 ticket">
														
													</div>
												</div>
											</div>
											<div id="atm8" class="col-md-12 atm-info">
												<div class="row">
													<div class="col-sm-5">
														<span class="title">ATM 00456792</span> <span
															class="address">128 Princes Street<br>Dundee
														</span>
													</div>
													<div class="col-sm-5 description">
														<span class="active"><i class="fa fa-circle"></i>Operational</span>
													</div>
													<div class="col-sm-2 ticket">
														
													</div>
												</div>
											</div>
											<div id="atm9" class="col-md-12 atm-info">
												<div class="row">
													<div class="col-sm-5">
														<span class="title">ATM 27831245</span> <span
															class="address">17 Hill Street<br>Dundee
														</span>
													</div>
													<div class="col-sm-5 description">
														<span class="active"><i class="fa fa-circle"></i>Operational</span>
													</div>
													<div class="col-sm-2 ticket">
														
													</div>
												</div>
											</div>
											<div id="atm10" class="col-md-12 atm-info">
												<div class="row">
													<div class="col-sm-5">
														<span class="title">ATM 00456792</span> <span
															class="address">33 Alexander Street<br>Dundee
														</span>
													</div>
													<div class="col-sm-5 description">
														<span class="active"><i class="fa fa-circle"></i>Operational</span>
													</div>
													<div class="col-sm-2 ticket">
														
													</div>
												</div>
											</div>
											<div class="col-md-12 atm-info">
												<div class="row">
													<div class="col-sm-5">
														<span class="title">ATM 27831245</span> <span
															class="address">222 Sutherland Place<br>Dundee
														</span>
													</div>
													<div class="col-sm-5 description">
														<span class="active"><i class="fa fa-circle"></i>Operational</span>
													</div>
													<div class="col-sm-2 ticket">
														
													</div>
												</div>
											</div>
											<div class="col-md-12 atm-info">
												<div class="row">
													<div class="col-sm-5">
														<span class="title">ATM 00456792</span> <span
															class="address">3278 Broadway Ave, Suite 100<br>Charlotte,
															VA 25791
														</span>
													</div>
													<div class="col-sm-5 description">
														<span class="active"><i class="fa fa-circle"></i>Operational</span>
													</div>
													<div class="col-sm-2 ticket">
														
													</div>
												</div>
											</div>
											<div class="col-md-12 atm-info">
												<div class="row">
													<div class="col-sm-5">
														<span class="title">ATM 27831245</span> <span
															class="address">1200 Freemont Blvd<br>Charlotte,
															VA 25798
														</span>
													</div>
													<div class="col-sm-5 description">
														<span class="active"><i class="fa fa-circle"></i>Operational</span>
													</div>
													<div class="col-sm-2 ticket">
														
													</div>
												</div>
											</div>
											<div class="col-md-12 atm-info">
												<div class="row">
													<div class="col-sm-5">
														<span class="title">ATM 00456792</span> <span
															class="address">3278 Broadway Ave, Suite 100<br>Charlotte,
															VA 25791
														</span>
													</div>
													<div class="col-sm-5 description">
														<span class="active"><i class="fa fa-circle"></i>Operational</span>
													</div>
													<div class="col-sm-2 ticket">
														
													</div>
												</div>
											</div>
											<div class="col-md-12 atm-info">
												<div class="row">
													<div class="col-sm-5">
														<span class="title">ATM 27831245</span> <span
															class="address">1200 Freemont Blvd<br>Charlotte,
															VA 25798
														</span>
													</div>
													<div class="col-sm-5 description">
														<span class="active"><i class="fa fa-circle"></i>Operational</span>
													</div>
													<div class="col-sm-2 ticket">
														
													</div>
												</div>
											</div>
											<div class="col-md-12 atm-info">
												<div class="row">
													<div class="col-sm-5">
														<span class="title">ATM 00456792</span> <span
															class="address">3278 Broadway Ave, Suite 100<br>Charlotte,
															VA 25791
														</span>
													</div>
													<div class="col-sm-5 description">
														<span class="active"><i class="fa fa-circle"></i>Operational</span>
													</div>
													<div class="col-sm-2 ticket">
														
													</div>
												</div>
											</div>
										</div>


										<div class="col-md-6 h2-right">
											<div id="map"></div>
										</div>

									</div>
								</div>
							</div>

						</div>
					</div>
				</div>

			</section>

			<!-- Modal -->
			<div class="modal fade" id="video" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">AXIS IP Camera</h4>
						</div>
						<div class="modal-body">
							<iframe src="http://192.168.1.118:3700/interface" class="video"
								width="500" height="300" frameborder="0"></iframe>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary"
								data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>


		</div>
	</div>


	<!-- global scripts -->
	<script
		src="/securityDataDemo/src/main/webapp/WEB-INF/js/demo-skin-changer.js"></script>
	<!-- only for demo -->

	<script src="/securityDataDemo/src/main/webapp/WEB-INF/js/jquery.js"></script>
	<script src="/securityDataDemo/src/main/webapp/WEB-INF/js/bootstrap.js"></script>
	<script
		src="/securityDataDemo/src/main/webapp/WEB-INF/js/jquery.nanoscroller.min.js"></script>
	<!-- script src="/securityDataDemo/src/main/webapp/WEB-INF/js/map4.js"></script-->

	<script src="/securityDataDemo/src/main/webapp/WEB-INF/js/demo.js"></script>
	<!-- only for demo -->

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
	<script
		src="/securityDataDemo/src/main/webapp/WEB-INF/js/jquery.waypoints.js"></script>
	<script src="/securityDataDemo/src/main/webapp/WEB-INF/js/sticky.js"></script>

	<!-- theme scripts -->
	<script src="/securityDataDemo/src/main/webapp/WEB-INF/js/scripts.js"></script>
	<script src="/securityDataDemo/src/main/webapp/WEB-INF/js/pace.min.js"></script>

	<!-- Google Maps Settings -->
	<script>
		var map;
		function initMap() {
			map = new google.maps.Map(document.getElementById('map'), {
				center: {lat: 56.463285, lng: -2.9731235},
				zoom: 14
			});
			
			setMarkers(map);
		}
		
		// List of ATMs on map
		var atm2;
		var atm1;
		
		var videoList_js2= "<%=cameraEvent%>";
		if (videoList_js2 != "null") {
			atm2 = 2;
		} else {
			atm2 = 0;
		}
		
		var usbDetector = "<%=usb%>";
		if (usbDetector != null){
			atm1 = 2;
		}else{
			atm1 = 0;	
		}
		
		
		$('.reset').click(function() {
			$('.aft-not').css("-webkit-animation-name", "zero");
			$('.aft-not').css("border", "3px solid transparent");
			$('.reset').css("display", "none");
			$('.bef-not').css("display", "block");
			$('.aft-not').css("display", "none");
			ATMs[1][3] = 0;
			 
			initMap();
		});
		$('.reset2').click(function() {
			$('.aft-not2').css("-webkit-animation-name", "zero");
			$('.aft-not2').css("border", "3px solid transparent");
			$('.reset2').css("display", "none");
			$('.bef-not2').css("display", "block");
			$('.aft-not2').css("display", "none");
			ATMs[0][3] = 0;
			 
			initMap();
		});
		
		var ATMs = [
			['ATM 1', 56.4611962, -2.9706048, atm1],
			['ATM 2', 56.463285, -2.9731235, atm2],
			['ATM 3', 56.4612505, -2.9737877, 0],
			['ATM 4', 56.4621971, -2.9661633, 0],
			['ATM 5', 56.4626629, -2.9840888, 0],
			['ATM 6', 56.4656217, -2.9868374, 0],
			['ATM 7', 56.4575219, -2.9860769, 0],
			['ATM 8', 56.4662291, -2.9607497, 0],
			['ATM 9', 56.471109, -2.9800962, 0],
			['ATM 10', 56.4695347, -2.9688852, 0]
		];
		
		// List of ATM info messages
		var infoWindowContent = [
			['<div class="info_content">' + '<iframe src="atm1.jsp" frameborder="0" height="230"></iframe><br><a class="cursor" data-toggle="modal" data-target="#video">Request Video</a>' + '</div>'],
			['<div class="info_content">' + '<iframe src="atm2.jsp" frameborder="0" height="230"></iframe><br><a class="cursor" data-toggle="modal" data-target="#video">Request Video</a>' + '</div>'],
			['<div class="info_content">' + '<h3>ATM ID: 7893727 </h3>' + '<iframe src="ftp://192.168.1.113/BackofATM/" frameborder="0" height="230"></iframe><br><a class="cursor" data-toggle="modal" data-target="#video">Request Video</a>' + '</div>'],
			['<div class="info_content">' + '<h3>ATM ID: 2537874 </h3>' + '<p>Location: Dundee <br> ATM Status: Receipt Paper Low</p>' + '</div>'],
			['<div class="info_content">' + '<h3>ATM ID: 0983855 </h3>' + '<p>Location: Dundee <br> ATM Status: Maintenance Required</p>' + '</div>'],
			['<div class="info_content">' + '<h3>ATM ID: 7893727 </h3>' + '<p>Location: Dundee <br> ATM Status: Cash Low</p>' + '</div>'],
			['<div class="info_content">' + '<h3>ATM ID: 2537874 </h3>' + '<p>Location: Dundee <br> ATM Status: Receipt Paper Low</p>' + '</div>'],
			['<div class="info_content">' + '<h3>ATM ID: 0983855 </h3>' + '<p>Location: Dundee <br> ATM Status: Maintenance Required</p>' + '</div>'],
			['<div class="info_content">' + '<h3>ATM ID: 2537874 </h3>' + '<p>Location: Dundee <br> ATM Status: Receipt Paper Low</p>' + '</div>'],
			['<div class="info_content">' + '<h3>ATM ID: 0983855 </h3>' + '<p>Location: Dundee <br> ATM Status: Maintenance Required</p>' + '</div>']
		];
		
		// List of marker images
		var images = [
			['WEB-INF/img/green-marker-small.png'],
			['WEB-INF/img/amber-marker-small.png'],
			['WEB-INF/img/red-marker-small.png']
		];
			
		function setMarkers(map) {
			
			var infoWindow = new google.maps.InfoWindow(), marker, i;
			
			for (var i = 0; i < ATMs.length; i++) {
				var ATM = ATMs[i];
				var imageNo = ATM[3];
				var image = images[imageNo];
				var marker = new google.maps.Marker({
					position: {lat: ATM[1], lng: ATM[2]},
					map: map,
					icon: image[0],
					title: ATM[0],
					zIndex: ATM[3]
				});
				
				google.maps.event.addListener(marker, 'click',(function(marker,i){
					return function(){
						infoWindow.setContent(infoWindowContent[i][0]);
						infoWindow.open(map,marker);
					}
				})(marker,i));
			}
			var boundsListener = google.maps.event.addListener((map), 'bounds_changed', function(event) {
				this.setZoom(14);
				google.maps.event.removeListener(boundsListener);
			});
			$('#atm1').on('click', function(event) {
				event.preventDefault();
				map.panTo(new google.maps.LatLng(56.4611962,-2.9706048));
			});
			$('#atm2').on('click', function(event) {
				event.preventDefault();
				map.panTo(new google.maps.LatLng(56.463285,-2.9731235));
			});
			$('#atm3').on('click', function(event) {
				event.preventDefault();
				map.panTo(new google.maps.LatLng(56.4612505,-2.9737877));
			});
			$('#atm4').on('click', function(event) {
				event.preventDefault();
				map.panTo(new google.maps.LatLng(56.4621971,-2.9661633));
			});
			$('#atm5').on('click', function(event) {
				event.preventDefault();
				map.panTo(new google.maps.LatLng(56.4626629,-2.9840888));
			});
			$('#atm6').on('click', function(event) {
				event.preventDefault();
				map.panTo(new google.maps.LatLng(56.4656217,-2.9868374));
			});
			$('#atm7').on('click', function(event) {
				event.preventDefault();
				map.panTo(new google.maps.LatLng(56.4575219,-2.9860769));
			});
			$('#atm8').on('click', function(event) {
				event.preventDefault();
				map.panTo(new google.maps.LatLng(56.4662291,-2.9607497));
			});
			$('#atm9').on('click', function(event) {
				event.preventDefault();
				map.panTo(new google.maps.LatLng(56.471109,-2.9800962));
			});
			$('#atm10').on('click', function(event) {
				event.preventDefault();
				map.panTo(new google.maps.LatLng(56.4695347,-2.9688852));
			});
		}
		
	</script>
	<script src="http://maps.googleapis.com/maps/api/js?callback=initMap"
		async defer></script>


	<script language="javascript"> 
	
	var refreshIntervalId = setInterval(function(){
	var videoList_js= "<%=cameraEvent%>";
	if (videoList_js != null)
	{
		atm2 = 2;
		$('.bef-not').css("display", "none");
		$('.aft-not').css("display", "block");
		clearInterval(refreshIntervalId);
	} else {
		atm2 = 0;
		$('.bef-not').css("display", "block");
		$('.aft-not').css("display", "none");
	}
	
	var USB_not= "<%=usb%>";
	if (USB_not != null)
	{
		atm2 = 2;
		$('.bef-not2').css("display", "none");
		$('.aft-not2').css("display", "block");
		clearInterval(refreshIntervalId);
	} else {
		atm2 = 0;
		$('.bef-not2').css("display", "block");
		$('.aft-not2').css("display", "none");
	}
	}, 3000);
	
	
	 </script>

</body>
</html>