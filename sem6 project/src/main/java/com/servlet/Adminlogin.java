package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AdminDao;
import com.dao.UserDAO;
import com.db.DBConnect;
import com.user.AdminDetails;
import com.user.UserDetails;

@WebServlet("/Adminlogin")
public class Adminlogin extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		AdminDetails ad = new AdminDetails();
		ad.setUsername(username);
		ad.setPassword(password);

		AdminDao dao = new AdminDao(DBConnect.getConn());
		AdminDetails admin = dao.loginAdmin(ad);

		if (admin != null) {
			HttpSession session = request.getSession();
			session.setAttribute("AdminD", admin);
			response.sendRedirect("dashboard.jsp");
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("Alogin-failed", "Invalid Username and Password...");
			response.sendRedirect("login1.jsp");
		}
	}
}
