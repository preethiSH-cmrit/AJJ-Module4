import java.io.*;  
import javax.servlet.*;
import java.util.*;

public class paramServlet extends  GenericServlet {
public void service(ServletRequest  req, ServletResponse resp)
throws IOException,
ServletException {
	resp.setContentType("text/html");  
	PrintWriter pw = resp.getWriter();  
	pw.println(req.getParameter("usn"));  
	pw.println(req.getParameter("name"));
	/* if you do not know the parameter names
	//Get enumeration of parameter names.
		Enumeration e = req.getParameterNames();

		pw.println("<h1> Parameters passed are : </h1>");

	//Display param name and values
		while(e.hasMoreElements() ) {
			String pname = (String) e.nextElement();
			pw.print("<h3>" +pname+" = ");
			String pvalue = req.getParameter(pname);
			pw.print(pvalue+"</h3>");
		}
*/
	pw.close();
}
}
