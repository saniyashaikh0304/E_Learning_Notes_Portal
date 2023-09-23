package com.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@WebServlet("/UploadServlet")
@MultipartConfig(maxFileSize = 16177215)	// upload file's size up to 16MB
public class UploadServlet extends HttpServlet {
	
	// database connection settings
	private String dbURL = "jdbc:mysql://localhost:3306/enotes?characterEncoding=latin1";
	private String dbUser = "library";
	private String dbPass = "securelib";
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// gets values of text fields
		String subject = request.getParameter("subject");
		String title = request.getParameter("title");
		
		InputStream inputStream = null;	// input stream of the upload file
		
		// obtains the upload file part in this multipart request
		String fileName = null;
		Part filePart = request.getPart("file");
		fileName = getFileName(filePart);
		
		if (filePart != null) {
			// prints out some information for debugging
			System.out.println(filePart.getSize());
			System.out.println(filePart.getContentType());
			System.out.println(fileName);
			
			// obtains input stream of the upload file
			inputStream = filePart.getInputStream();
		}
		
		
		Connection conn = null;	// connection to the database
		String message = null;	// message will be sent back to client
		
		try {
			// connects to the database
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

			// constructs SQL statement
			String sql = "INSERT INTO notes (subject, title, filename, file) values (?, ?, ?, ?)";
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, subject);
			statement.setString(2, title);
			statement.setString(3, fileName);
			
			if (inputStream != null) {
				// fetches input stream of the upload file for the blob column
				statement.setBlob(4, inputStream);
			}
			

			// sends the statement to the database server
			int row = statement.executeUpdate();
			if (row > 0) {
				message = "File uploaded and saved into database";
			}
		} catch (SQLException ex) {
			message = "ERROR: " + ex.getMessage();
			ex.printStackTrace();
		} finally {
			if (conn != null) {
				// closes the database connection
				try {
					conn.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			}
			HttpSession session = request.getSession();
			session.setAttribute("insertMsg", "Notes Uploaded Sucessfully...");
			response.sendRedirect("addnotes.jsp");
		}
	}

	private String getFileName(Part filePart) {
		String contentDisp = filePart.getHeader("content-disposition");
        System.out.println("content-disposition header= "+contentDisp);
        String[] tokens = contentDisp.split(";");
        for (String token : tokens) {
            if (token.trim().startsWith("filename")) {
                return token.substring(token.indexOf("=") + 2, token.length()-1);
            }
        }
        return "";
	}
}