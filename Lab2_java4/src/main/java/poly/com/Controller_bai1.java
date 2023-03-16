package poly.com;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.coyote.http11.filters.ChunkedInputFilter;
@WebServlet({"/bai1","/chuvi","/dientich"})
public class Controller_bai1 extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	req.getRequestDispatcher("/view/bai1.jsp").forward(req, resp);
	
}

public void chuvi(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException  {
	Double a = Double.parseDouble(req.getParameter("soa"));
	Double b = Double.parseDouble(req.getParameter("sob"));
	Double c = Double.parseDouble(req.getParameter("soc"));
	double chuvi =  (a+b+c);
	
	
req.setAttribute("mess", "chu vi tam giac la " +chuvi);
req.getRequestDispatcher("/view/bai1.jsp").forward(req, resp);
}


public void dientich(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException  {
	Double a = Double.parseDouble(req.getParameter("soa"));
	Double b = Double.parseDouble(req.getParameter("sob"));
	Double c = Double.parseDouble(req.getParameter("soc"));
	double chuvi =  (a+b+c);
	
	
	double dientich = Math.sqrt(chuvi*(a+b-c)*(a+c-b)*(b+c-a))/4;
	 req.setAttribute("mess", "dien tich tam giac la "+dientich);
	 req.getRequestDispatcher("/view/bai1.jsp").forward(req, resp);
}


@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
Double a = Double.parseDouble(req.getParameter("soa"));
Double b = Double.parseDouble(req.getParameter("sob"));
Double c = Double.parseDouble(req.getParameter("soc"));

 req.setAttribute("soa", a); 
 req.setAttribute("sob", b);
 req.setAttribute("soc", c);
if ((a+b > c) && (a+c > b)&& (b+c > a)) {
	String url = req.getRequestURI();
		if (url.contains("chuvi")) {
			chuvi(req, resp);
		}else {
this.dientich(req, resp);
		} 
}else {
	req.setAttribute("mess", "ko phai tam giac");
	req.getRequestDispatcher("/view/bai1.jsp").forward(req, resp);
}

	}
}
