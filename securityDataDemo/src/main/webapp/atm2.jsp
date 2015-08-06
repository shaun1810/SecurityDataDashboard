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
<h2>Atm2</h2>

<% 
MongoClient mongo = new MongoClient("LocalHost", 27017);
DB db = mongo.getDB("windowsLogs");
DBCollection collection = db.getCollection("log");
BasicDBObject query = new BasicDBObject("Event ID:", "20001");
DBCursor cursor = collection.find(query);
try{
	while(cursor.hasNext())
	{
		DBObject data = cursor.next();
		String eventID = data.get("Event ID:").toString(); 
		%>
		<h3>Event ID:<%out.print(eventID); %></h3>
		<h3><%if(eventID.compareTo("20001")==0){out.print("Illegal USB drive inserted");};%></h3>
		
		
	<%
	}
    }
    finally{
	  cursor.close();	
	}
	
   
	%>
	
<a href = "index.jsp">Home</a>
<a href = "atm1.jsp">ATM 1</a>
</body>
</html>
