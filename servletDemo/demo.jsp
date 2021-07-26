<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Demo of JSP</title>
</head>
<body>
<!-- Comments in html -->
<%--Comment in JSP --%>



<%--Declarations in  JSP --%>
<%!  String name = "abc";
     int item = 5;
     ArrayList<String> al = new ArrayList<String>();
     float marks =85;
    
     %>
     
<h1>User name is <%=name %></h1>
<h1>Item requested is <%=item %></h1>
<%
Collections.addAll(al, "item1","item2","item3");
%>
<p><%=al %></p>

<p>Displaying using <strong>out</strong><br>
   <%  out.println("Contents of al are: "+al); %></p>
   
   <% if(marks>=80) { %>
   <p> You obtained <strong>A</strong> grade<p>
   <% } else if (marks>=70) {%>
   <p> You obtained <strong>B</strong> grade<p>
   <% } %>
   
</body>
</html>