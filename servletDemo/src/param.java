import java.io.*;  
import javax.servlet.*;


public class param extends GenericServlet{
	
	public void service(ServletRequest req, ServletResponse res) 
			throws IOException, ServletException{
		
		String uname = req.getParameter("uname");
		String pswd = req.getParameter("pswd");
		
		PrintWriter pw = res.getWriter();
		pw.println("uname"+uname);
		pw.println("pswd"+pswd);
		
	}
		
}