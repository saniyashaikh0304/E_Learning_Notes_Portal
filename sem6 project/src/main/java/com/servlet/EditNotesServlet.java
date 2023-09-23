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

@WebServlet("/EditNotesServlet")
public class EditNotesServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		try {
			Integer noteid = Integer.parseInt(request.getParameter("noteid"));
			String subject = request.getParameter("subject");
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			String sub_date = request.getParameter("sub_date");
			
			PostDAO dao = new PostDAO(DBConnect.getConn());
			boolean  f = dao.postUpdate(noteid, subject, title, content,sub_date);
			
			if (f) {
				System.out.println("Data Updated Sucessfully...");
				HttpSession session = request.getSession();
				session.setAttribute("updateMsg", "Assignment Updated Sucessfully...");
				response.sendRedirect("showAssignAction.jsp");
			}
			else {
				System.out.println("Data not Updated");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
