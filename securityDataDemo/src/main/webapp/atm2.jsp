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
<body>


<% 
MongoClient mongo = new MongoClient("10.93.68.125", 27017);
DB db = mongo.getDB("WL");
DBCollection collection = db.getCollection("testCol");
BasicDBObject query = new BasicDBObject("Event ID", "3221232506");
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
		eventID = data.get("Event ID").toString();
		computer = data.get("Computer").toString();
		logName = data.get("Log Name").toString();
		logged = data.get("Logged").toString();

	}
	}
	finally {
		cursor.close();
	}
	
	%>
<h2>ATM:<%out.print(computer); %></h2>
<h3>Event ID: <%out.print(eventID);%></h3>	
<h3>Problem: <%if(eventID.compareTo("3221232506") == 0){out.print("UA terminated prematurely");} %></h3>
<h3>Logged: <%out.print(logged);%></h3>
<a href = "index.jsp">Home</a>
<a href = "atm2.jsp">ATM 2</a>
</body>
</html>

