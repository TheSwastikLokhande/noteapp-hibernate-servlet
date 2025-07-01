package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;


@WebServlet("/SaveNoteServlet")
public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		Note note = new Note(title,content,new Date());
		
		Session s = FactoryProvider.getFactory().openSession();
		Transaction tx = s.beginTransaction();
		
		s.save(note);
		tx.commit();
		
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Note Added</title>");
		out.println("<style>h1 { text-align: center; }</style>");
		out.println("</head>");
		out.println("<body>");

		out.println("<h1>Note is added successfully..</h1>");
		out.flush(); 
		out.println("<h2><a href='all_notes.jsp'>Click here to view all notes</a></h2>");

		out.println("</body>");
		out.println("<script> setTimeout(function() { window.location.href = 'all_notes.jsp';}, 3000);			</script>");
		out.println("</html>");
		
		s.close();
	}

}
