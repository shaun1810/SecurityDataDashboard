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
<h2>Atm1</h2>

<% 
MongoClient mongo = new MongoClient("LocalHost", 27017);
DB db = mongo.getDB("windowsLogs");
DBCollection collection = db.getCollection("log");
BasicDBObject query = new BasicDBObject("Log Name:", "Security");
DBCursor cursor = collection.find(query);
try{
	while (cursor.hasNext())
	{
		DBObject data = cursor.next();
		
		String eventID = data.get("Event ID:").toString();
		%>
		
		<h3><%out.println("Event ID:" + data.get("Event ID:")); %></h3>
		<h3><%if(eventID.compareTo("4672")== 0) {out.println("Illegal Administrator Access");}%></h3>
<% 
	}
	}
	finally{
		cursor.close();
	}
%>

<a href = "index.jsp">Home</a>
<a href = "atm2.jsp">ATM 2</a>
</body>
</html>
