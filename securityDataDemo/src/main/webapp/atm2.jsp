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
<style type="text/css">
	body {
		font-family: 'Lato' !important;
		
	}
	.result {
		font-weight: 300;
	}
</style>
</head>
<body>


<% 
MongoClient mongo = new MongoClient("192.168.1.113", 27017);
DB db = mongo.getDB("WL");
DBCollection collection = db.getCollection("testCol");
BasicDBObject query = new BasicDBObject("Event", "Camera Covered");
DBCursor cursor = collection.find(query);
String eventID = null;
String logName = null;
String source = null;
String level = null;
String user = null;
String logged = null;
String taskCat = null;
String computer = null;
String message = null;


try
{
	while (cursor.hasNext())
	{
		DBObject data = cursor.next();
		eventID = data.get("Event").toString();
		

	}
	}
	finally {
		cursor.close();
	}
	
	%>
<h2>ATM:<%out.print(computer); %></h2>

<h3>Event ID: <%out.print(eventID);%></h3>	
<a href = "index.jsp">Home</a>
<a href = "atm2.jsp">ATM 2</a>
</body>
</html>


<h4>Event ID: <span class="result"><%out.print(eventID);%></span></h4>	
<h4>Problem: <span class="result"><%if(eventID.compareTo("3221232506") == 0){out.print("UA terminated prematurely");} %></span></h4>
<h4>Logged: <span class="result"><%out.print(logged);%></span></h4>
<!-- a href = "index.jsp">Home</a>
<a href = "atm2.jsp">ATM 2</a-->
</body>
</html>

