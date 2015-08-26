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
//BasicDBObject query = new BasicDBObject("Computer" , "NCR-352994MJ009");
//DBCursor cursor = collection.find(query);
BasicDBObject query2 = new BasicDBObject("Event ID", "2684616731");
DBCursor cursor2 = collection.find(query2);
String eventIDno = null;
Boolean atmDis = false;
Boolean usbIns = false;
Boolean admin = false;
Boolean uaDis = false;
Boolean unexpectedReboot = false;
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
	while (cursor2.hasNext())
	{
		DBObject data = cursor2.next();
		
		computer = data.get("Computer").toString();
		logged = data.get("Logged").toString();
		eventIDno = data.get("Event ID").toString();
			
				//while (cursor2.hasNext())
				//{
					//eventIDno = data.get("Event ID").toString();
				//}
				
			
	}
}
	finally {
		cursor2.close();
		//cursor2.close();
	}
response.addHeader("Refresh", "5");
	%>

<h2>ATM: <span class = "result">ATM 1</span></h2>
<h4>Issues: <span class="result"><%if (eventIDno != null) {out.print("ATM Disconnected from the network!");} else{out.print("Status good!");}%></span></h4> 
<h4>Logged: <span class="result"><%if (logged != null) {out.print(logged);} else{out.print(" ");}%></span></h4>
<!-- a href = "index.jsp">Home</a>
<a href = "atm2.jsp">ATM 2</a-->
</body>
</html>
