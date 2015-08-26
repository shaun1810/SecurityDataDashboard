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
BasicDBObject query = new BasicDBObject("Computer" , "NCR-352994MJ009");
DBCursor cursor = collection.find(query);
String eventID = null;
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
	while (cursor.hasNext())
	{
		DBObject data = cursor.next();
		computer = data.get("Computer").toString();
		logged = data.get("Logged").toString();
			if (cursor != null)
			{
				BasicDBObject atmEventIDQue = new BasicDBObject("Event ID", "2684616731");
				BasicDBOBject usbIns = new BasicDBObject("Event ID", "");
				DBCursor cursor2 = collection.find(eventIDQue);
				DBCursor cursor3 = collection.find()
					while (cursor2.hasNext())
					{
						DBObject data2 = cursor2.next();
						if (cursor2 != null)
						{
							atmDis = true;
							
						}
						else
						{
							atmDis = false;
						}
						
					}
					
					
				
			}

	}
	}
	finally {
		cursor.close();
	}
	
	%>
<h2>ATM: <span class = "result"><%out.print(computer); %></span></h2>
<h4>Issues: <span class="result"><%if (atmDis == true) {out.print("ATM Disconnected from the network!");}%></span></h4>	
<h4>Logged: <span class="result"><%out.print(logged);%></span></h4>
<!-- a href = "index.jsp">Home</a>
<a href = "atm2.jsp">ATM 2</a-->
</body>
</html>
