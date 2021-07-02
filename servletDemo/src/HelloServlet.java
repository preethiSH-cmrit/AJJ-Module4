import java.io.*;  
import javax.servlet.*;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet(
		urlPatterns = { "/HelloServlet" }, 
		initParams = { 
				@WebInitParam(name = "organization", value = "cmrit")
		})
public class HelloServlet extends  GenericServlet {
	String serverInfo, realPath, createdOn, org;
	public void init(ServletConfig sc) throws ServletException {
		ServletContext sctx = sc.getServletContext();
		serverInfo = sctx.getServerInfo();
		realPath = sctx.getRealPath("HelloServlet");
		createdOn = sc.getInitParameter("CreatedOn");
		org = sc.getInitParameter("organization");
	}
public void service(ServletRequest  req, ServletResponse resp)
throws IOException, ServletException {
resp.setContentType("text/html");  
PrintWriter pw = resp.getWriter();  
pw.println("<h1>Hello</h1>");  

//ServletContext
pw.println("Server info: "+serverInfo);
pw.println("<br> realPath : "+realPath);
pw.println("<h3> Initialization Parameters</h3>");
pw.println("<br> createdOn: "+createdOn);
pw.println("<br> Org: "+org);
pw.println("<p> Java Servlets</p>");
pw.println("ServerName:"+req.getServerName());
pw.println("<br>Server Port:"+req.getServerPort() ) ;
pw.println("<br>Remote Address(Client)"+req.getRemoteAddr() ) ;
pw.println("<br>Remote Host(Client):"+req.getRemoteHost() ); 

pw.println("<br>Character Encoding:"+req.getCharacterEncoding() ) ;
pw.println("<br>Content type: "+req.getContentType());
pw.println("<br>Content length: "+req.getContentLength());
pw.println("<br>Scheme: "+req.getScheme());
pw.println("<br>Protocol: "+req.getProtocol());
pw.println("");
pw.close();
}
}
