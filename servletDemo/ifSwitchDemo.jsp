<!DOCTYPE html>
<html>
<head>
<title>Grade Demo</title>
<%! char grade = 'B'; %>
</head>
<body>
<div style="width: 250px; background-color:#FFccFF">

<%if (grade == 'A' || grade =='B' || grade =='C'){ %>
	<p style="color:blue"> YOU PASSED! </p>
	
<%} else{ %>
	<p style="color:red"> You failed! </p>
	
<% }
switch(grade){
	case 'A':
		%>
		<p>You got an A grade. Awesome!</p>
		<%break;
	case 'B':%>
		<p>You got  B grade. Good Work!</p>
		<% break;
	case 'C':%>
		<p>You got a C grade. Good Effort!</p>
		<%break; 
	default:%>
		<p>You got an F grade. Put in more effort next time!</p>
<%		
}
	
%>


</div>
</body>
</html>