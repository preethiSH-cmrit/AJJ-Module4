<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CGPA Calculator</title>
<%! double cgpa = 7.5; 
		ArrayList<Double> sgpa= new ArrayList<Double>();
		ArrayList<Integer> credits = new ArrayList<Integer>();
	%>
	<% Collections.addAll(sgpa, 7.2,8.45,7.3);
	Collections.addAll(credits, 24,28,28);
	%>
</head>
<body>
<%! double percentageCalculator(double cgpa){
	double per;
	per = (cgpa-0.75)*10;
	return per;
}	

double percentageCalculator(ArrayList<Double> sgpa, ArrayList<Integer> c){
	double per=0.0;
	int totCredits=0;
	double num=0.0;
	for (int i=0; i<sgpa.size(); i++){
		totCredits+=c.get(i);
		num+=(sgpa.get(i) * c.get(i));
	
	}
	double cgpa = num/totCredits;
	per = (cgpa-0.75)*10;
	return per;
}
	%>
<div style="background-color: #FFCCFF; width:200px;">
	<p>
	
	CGPA <%=cgpa %> is <%=percentageCalculator(cgpa) %>
	<br><br>
	SGPA <%=sgpa %> and Credits <%=credits %>
	<%=percentageCalculator(sgpa, credits) %>
	</p>
</div>
</body>

</body>
</html>