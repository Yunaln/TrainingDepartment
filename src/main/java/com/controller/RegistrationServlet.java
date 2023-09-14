package com.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db.RegisterCRUD;
import com.model.ReadSheet;
import com.model.Register;
import com.model.SendEmail;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReadSheet rs = new ReadSheet();
		List<String> courseList= rs.getCourses();
		request.setAttribute("cl", courseList);
		RequestDispatcher RequetsDispatcherObj =request.getRequestDispatcher("/registrationform.jsp");
		RequetsDispatcherObj.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		// TODO Auto-generated method stub
		//doGet(request, response);
		String userName= request.getParameter("name");
		String email = request.getParameter("email");
		String dateOfBirth = request.getParameter("dob");
		String courses = request.getParameter("course");
		Register r = new Register(userName,email,dateOfBirth,courses);
		RegisterCRUD  rcrud= new RegisterCRUD();
		try {
			rcrud.insertRegistrationData(r);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		String session="Default";
		String schedule="Default";
		if(courses.toLowerCase().contains("morning")) {
			session="morning";
			schedule="7:00 Am to 9:00 Am";
		}
		else if(courses.toLowerCase().contains("evening")) {
			session="evening";
			schedule="4:00 Pm to 6:00 Pm";
		}
		else {
			session="afternoon";
			schedule="1:00 Pm to 3:00 Pm";
		}
		String sub="Training Department";
		String message="Hello! This is from training department. Thank you for registering to attend the course."+" Your selected course is"+ courses +"."+" \r\n"
				+"Since you choose to attend"+session +"session,"
				+"your schedul is from "+schedule+" in the "+ session;	
		//send Email
		SendEmail sm = new SendEmail();
		sm.send("soiphyusin7706@gmail.com","lgnsgqhkwekslbxb",email, sub, message);
		
		request.setAttribute("name", userName);
		request.setAttribute("Email", email);
		request.setAttribute("dob", dateOfBirth);
		request.setAttribute("Course", courses);
		
		RequestDispatcher RequetsDispatcherObj =request.getRequestDispatcher("/thankyou.jsp");
		RequetsDispatcherObj.forward(request, response);
		
	}

}
