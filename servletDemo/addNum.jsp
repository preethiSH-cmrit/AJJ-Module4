
<!DOCTYPE html>
<html>
<head>

<title>Add two numbers</title>
<%! int sum=0; %>
</head>
<body>
<%  String req = request.getParameter("num1");
	int num1 = Integer.parseInt(req);
	String req2 = request.getParameter("num2");
	int num2 = Integer.parseInt(req2);
	sum=num1+num2;
	%>
	<h1> Add two numbers </h1>
	<p>The sum of <%=num1%> and <%=num2%> is <%=sum %></p>
</body>
</html>