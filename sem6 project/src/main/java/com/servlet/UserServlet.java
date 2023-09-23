package com.servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDAO;
import com.db.DBConnect;
import com.user.UserDetails;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
		String name = request.getParameter("fname");
		String email = request.getParameter("uemail");
		String password = request.getParameter("upass");
		String number = request.getParameter("number");
		String address = request.getParameter("address");
		String gender = request.getParameter("gender");
		
		UserDetails ud = new UserDetails();
		ud.setName(name);
		ud.setEmail(email);
		ud.setPassword(password);
		ud.setNumber(number);
		ud.setAddress(address);
		ud.setGender(gender);
		
		UserDAO dao = new UserDAO(DBConnect.getConn());
		boolean f = dao.addUser(ud);
		
		
		if (f) {
			
			HttpSession session = request.getSession();
			session.setAttribute("reg-success", "Registration Successfull...");
			response.sendRedirect("register.jsp");
		}
		else {
			HttpSession session = request.getSession();
			session.setAttribute("failed-msg", "Something went wrong on server");
			response.sendRedirect("register.jsp");
		}
	}
}
