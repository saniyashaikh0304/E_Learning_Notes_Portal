package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AdminDao;
import com.db.DBConnect;
import com.user.AdminDetails;


@WebServlet("/UpdateProfileServlet")
public class UpdateProfileServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	  try {
		    int a_id=Integer.parseInt(req.getParameter("a_id"));
			String a_name = req.getParameter("a_name");
			String username = req.getParameter("username");
			String password = req.getParameter("password");
			String classes_name = req.getParameter("classes_name");
			String contact_no = req.getParameter("contact_no");
			String address = req.getParameter("address");
						
			AdminDetails a = new AdminDetails();
			a.setA_id(a_id);
			a.setA_name(a_name);
			a.setUsername(username);
			a.setPassword(password);
			a.setClasses_name(classes_name);
			a.setContact_no(contact_no);
			a.setAddress(address);
			
			AdminDao dao = new AdminDao(DBConnect.getConn());
			boolean f=dao.updateUserProfile(a);
			
			HttpSession session=req.getSession();
			
			if(f) {
				session.setAttribute("succMsg", "Profile Updated Successfully..");
				resp.sendRedirect("profile.jsp");
			}else {
				session.setAttribute("failedMsg", "Something wrong on server..!!!");
				resp.sendRedirect("profile.jsp");
			}		
	} catch (Exception e) {
		e.printStackTrace();
	}	
	}
}
