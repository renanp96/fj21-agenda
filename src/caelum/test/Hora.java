package caelum.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Hora extends HttpServlet {

	protected void service(HttpServletRequest req, HttpServletResponse res) throws IOException{
		
		PrintWriter pw = res.getWriter();
		pw.write("A horal atual é " + new Date());

	}
	
}
