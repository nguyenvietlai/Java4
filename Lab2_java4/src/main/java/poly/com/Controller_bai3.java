package poly.com;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/bai3")
public class Controller_bai3 extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	req.getRequestDispatcher("/view/bai3.jsp").forward(req, resp);
}
@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	req.setCharacterEncoding("utf-8");
	resp.setCharacterEncoding("utf-8");
	
	String username = req.getParameter("username");
	String password = req.getParameter("password");
	boolean gender = Boolean.parseBoolean(req.getParameter("gender"));
	boolean married = (req.getParameter("married") != null);
	String country = req.getParameter("country");
	String notes = req.getParameter("notes");
	String[] hobbies =req.getParameterValues("hobbies");
	
	if(gender == true) {
		req.setAttribute("genderStatus", "Nam");
	} else {
		req.setAttribute("genderStatus", "Nữ");
	}
	
	if(married == true) {
		req.setAttribute("marriedStatus", "Đã có vợ !");
	} else {
		req.setAttribute("marriedStatus", "Đang cô đơn!");
	}
		
	StringBuilder sb = new StringBuilder();
	for (String item : hobbies) {
		 {
			 sb.append(item).append(", ");
		 
		 }
	}
	String soThichConverted = "";
	if(sb.toString() != "") {
		soThichConverted = sb.toString().substring(0,sb.toString().lastIndexOf(","))+".";
	}
	
	req.setAttribute("username", username);
	req.setAttribute("password", password);
	req.setAttribute("gender", gender);
	req.setAttribute("country", country);
	req.setAttribute("notes", notes);
	req.setAttribute("hobbies", soThichConverted);
	req.getRequestDispatcher("/view/bai3_hienthi.jsp").forward(req, resp);
}
	}

