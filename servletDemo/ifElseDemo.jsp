<%@page import="com.sun.swing.internal.plaf.metal.resources.metal"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Conditionals Demo</title>
<style>
table, th, td {
  border: 1px solid black;
   border-collapse: collapse;
}
</style>
</head>
<body>
<%! HashMap<String,Double> marks = new HashMap<String,Double>(); %>
<% marks.put("18CS51", 80.5); marks.put("18CS52",50.0); marks.put("18CS54",75.0); %>

<table>
<tr>
	<th> Subject Code</th> <th>Marks</th>
</tr>


<% for (Map.Entry<String,Double> me : marks.entrySet()) { %>
<tr>
	<td><%=me.getKey() %></td>
	<td><%double marks = me.getValue(); 
	     if (marks>=90)
	        out.println("Grade O");
	     else if(marks>=80)
	        out.println("Grade S");
	     else if(marks>=70)
		        out.println("Grade A");
	     else if(marks>=60)
		        out.println("Grade B");
	     else if(marks>=50)
		        out.println("Grade C");
	     else if(marks>=45)
		        out.println("Grade D");
	     else if(marks>=40)
		        out.println("Grade E");
	     else
	    	 	out.println("Fail");
	        
	        %></td>
</tr>
<% } %>
</table>
</body>
</html>