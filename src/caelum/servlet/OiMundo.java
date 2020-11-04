package caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.xml.internal.serialize.Printer;

public class OiMundo extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		
		PrintWriter out = res.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("<tittle>Primeira Servlet</tittle>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>Oi Mundo Servlet</h1>");
		out.println("</body>");
		out.println("</html>");
		
		
	}

}
