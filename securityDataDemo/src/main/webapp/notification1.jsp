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

<html>
<head>
	<link rel="stylesheet" href="/securityDataDemo/src/main/webapp/WEB-INF/css/compiled/test2.css" type="text/css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<style type="text/css">
	body {
		font-family: 'Lato' !important;
		color: #fff;
		
	}
	.result {
		font-weight: 300;
	}
	.green {
		color: #4CBB36;
		visibility: visible;
	}
	.red {
		color: #FF7A75;
		visibility: hidden;
	}
	h1 {
		font-size: 3em;
	}
</style>
</head>
<% 
MongoClient mongo = new MongoClient("192.168.1.113", 27017);
DB db = mongo.getDB("WL");
DBCollection collection = db.getCollection("testCol");
BasicDBObject query = new BasicDBObject("Event", "Camera Covered");
DBCursor cursor = collection.find(query);
String cameraEvent = null; 
String computer = "NCR-3459kj";

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
	
	%>
	<%response.addHeader("Refresh", "2"); %>
<h1><i class="fa fa-check-circle-o green" id="green"></i><i class="fa fa-circle red" id="red"></i></h1>
<!-- h2>ATM:<%out.print(computer); %></h2-->

<h3></h3>	
</body>
</html>
<div id="CameraEvent"></div>
<script src="/securityDataDemo/src/main/webapp/WEB-INF/js/jquery.js"></script>
<script language="javascript"> 
				
		var videoList_js= "<%=cameraEvent%>";
		if (videoList_js != "null")
		{
			$('#green').css("visibility", "hidden");
			$('#red').css("visibility", "visible");
		} else {
			$('#green').css("visibility", "visible");
			$('#red').css("visibility", "hidden");
		}
	
	
	 </script> 
</body>
</html>
