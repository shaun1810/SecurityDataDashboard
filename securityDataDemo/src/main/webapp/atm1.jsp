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
MongoClient mongo = new MongoClient("192.168.1.113",27017);
DB db = mongo.getDB("WL");
DBCollection collection = db.getCollection("testCol");
BasicDBObject query = new BasicDBObject("Computer","NCR-352994MJ009");
DBCursor cursor = collection.find(query);
//BasicDBObject query2 = new BasicDBObject("Event ID", "3221232506");
//DBCursor cursor2 = collection.find(query2);
Boolean uaDisconnected = false;
Boolean atmDis = false;
Boolean usb = false;
//Boolean atmDis = false;

Boolean unexpectedReboot = false;
String logName = null;
String source = null;
String level = null;
String user = null;
String logged = null;
String taskCat = null;
String computer = null;
String message = null;
Boolean camera1 = false;
Boolean camera2 = false;


try
{
	while (cursor.hasNext())
	{
		DBObject data = cursor.next();
		
		computer = data.get("Computer").toString();
		
		if (data.get("Event ID").toString().compareTo("20001") == 0)
		{
			usb = true;
			logged = data.get("Logged").toString();
		}
		if (data.get("Event ID").toString().compareTo("3221232506") == 0)
		{
			uaDisconnected = true;
			logged = data.get("Logged").toString();
		}
		if(data.get("Event ID").toString().compareTo("2684616731") == 0)
		{
			atmDis = true;
			logged = data.get("Logged").toString();
		}
		
	
	
		//if(data.get("Event").toString() == "Camera Covered");
		//{
		//	camera1 = data.get("Event").toString();
			
		//}
		
		//if(data.get("Event").toString() == "Back of ATM");
		//{
		//	camera2 = data.get("Event").toString();
		//}
		
		//if (data.get("")
			
				//while (cursor2.hasNext())
				//{
					//eventIDno = data.get("Event ID").toString();
				//}
				
			
	}
}
	finally {
		cursor.close();
		//cursor2.close();
	}
response.addHeader("Refresh", "5");
	%>

<h2>ATM: <span class = "result"><%if (computer != null) {out.print(computer);} else {out.print("NCR-352994MJ009");}%></span></h2>
<h4>UA status: <span class="result"><%if (uaDisconnected == true) {out.print("UA terminated prematurely!");} else{out.print("Status good!");}%></span></h4> 
<h4>ATM status: <span class="result"><%if (atmDis == true) {out.print("ATM Disconnected from the network!");} else{out.print("Status good!");}%></span></h4> 
<h4>Issues: <span class="result"><%if (usb == true) {out.print("USB Illegally Inserted!");} else{out.print(" ");}%></span></h4> 
<h4>Issues: <span class="result"><%if (camera1 == true) {out.print("ATM camera Covered up!");} else{out.print(" ");}%></span></h4>
<h4>Issues: <span class="result"><%if (camera2 == true) {out.print("Intruder behind ATM!");} else{out.print(" ");}%></span></h4>
<h4>Logged: <span class="result"><%if (logged != null) {out.print(logged);} else{out.print(" ");}%></span></h4>
<!-- a href = "index.jsp">Home</a>
<a href = "atm2.jsp">ATM 2</a-->
</body>
</html>
