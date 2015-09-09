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
<style type="text/css">
	body {
		font-family: 'Lato' !important;
		
	}
	.result {
		font-weight: 300;
	}
</style>
</head>
<% 
MongoClient mongo = new MongoClient("192.168.1.113",27017);
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
	
	%>
	<%response.addHeader("Refresh", "5"); %>
<h2>ATM:<%out.print(computer); %></h2>

<h3>Event ID: <%if (cameraEvent != null){out.print(cameraEvent);} else {out.print("No Fraud detected!");}%></h3>	
</body>
</html>
<div id="CameraEvent"></div>


<!-- a href = "index.jsp">Home</a>
<a href = "atm2.jsp">ATM 2</a-->
</body>
</html>

