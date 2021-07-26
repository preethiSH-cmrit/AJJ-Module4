
<!DOCTYPE html>
<html>
<head>

<title>Calculate Marks</title>
<%! char[] grades = {'A','B','C','F'};
    String[] range = {">=70",">=60-70",">=45-60","<45"};%>
   <style>
  table, tr,th,td {border: 1px solid black}
</style>
</head>
<body>
<%--Display the grading system --%>
<table>
	<tr>
	<th>Range</th><th>Grade</th></tr>
	<% for(int i=0; i<grades.length; i++) {%>
	<tr>
	<td><%=range[i] %></td><td><%=grades[i] %> grade</td>
	</tr>
	<% } %>
</table>
<%-- obtain from query string --%>
<%
String st = request.getParameter("sub1");
int m1 = Integer.parseInt(st);
String st2 = request.getParameter("sub2");
int m2 = Integer.parseInt(st2);
String st3 = request.getParameter("sub3");
int m3 = Integer.parseInt(st3);

double percentage = ((m1+m2+m3)/300.0)*100;

out.println("<p>Percentage : "+percentage+ "%</p>");


%>
</body>
</html>