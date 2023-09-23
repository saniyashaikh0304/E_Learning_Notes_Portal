package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.PostDAO;
import com.db.DBConnect;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer noteid = Integer.parseInt(request.getParameter("note_id"));
		PostDAO dao = new PostDAO(DBConnect.getConn());
		boolean f = dao.deleteNotes(noteid);
		HttpSession session = null;
		if (f) {
			System.out.println("Data Deleted Sucessfully...");
			session = request.getSession();
			session.setAttribute("updateMsg", "Assignment Deleted Sucessfully...");
			response.sendRedirect("showAssignAction.jsp");
			
		}
		else {
			session = request.getSession();
			session.setAttribute("wrongMsg", "Something Went Wrong on Server");
		}
	}
}
