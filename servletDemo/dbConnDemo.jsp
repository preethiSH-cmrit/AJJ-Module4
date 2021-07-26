<%@ page import= "java.sql.*" %>
<%@ page import="javax.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%
String url = "jdbc:odbc:cust_db";
String userID = "admin";
String password = "admin";
 Connection Db;
try{
Class.forName("com.mysql.cj.jdbc.Driver");

}catch(ClassNotFoundException ce){
   out.println(ce);
	
}
//Db = DriverManager.getConnection (url, userID, password);
//out.println("Successfully connected to database...");
%>
</head>
<body>

</body>
</html>