
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.Enumeration;

public class bgcolorServlet extends HttpServlet {
	//private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException{
		String color = req.getParameter("color");
		res.setContentType("text/html");
		PrintWriter pw = res.getWriter();
		
		pw.println("<html>");
		pw.println("<body bgcolor="+color+">");
		pw.println("<p> Color:  "+color+"</p>");
		
		//Extra things to try out.
		pw.println("<br>Query String: "+req.getQueryString());
		pw.println("<br>Method: "+req.getMethod());
		pw.println("<br>Servlet Path: "+req.getServletPath());
		pw.println("<br>Request URI: "+req.getRequestURI());
		pw.println("<br>Request URL: "+req.getRequestURL());
		
		
		Enumeration<String> header = req.getHeaderNames();
		while(header.hasMoreElements()) {
			String hname = header.nextElement();
			pw.println("<br><br>"+hname);
			pw.println(": "+req.getHeader(hname));
			
		}
		
		
		pw.println("</body>");
		pw.println("</html>");
		
		pw.close();
		}

}
