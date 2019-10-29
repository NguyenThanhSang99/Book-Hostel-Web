package com.msita.hostel.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.msita.hostel.bo.User;
import com.msita.hostel.dao.UserDAO;

/**
 * Servlet implementation class UpdateUserServlet
 */
@WebServlet("/updateUser")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idUser = 0;
		HttpServletRequest httpReq = (HttpServletRequest) request;
		HttpSession session = httpReq.getSession(false);
		if (session != null && session.getAttribute("idUser")!= null) {
			String idString = session.getAttribute("idUser").toString();
			idUser= Integer.parseInt(idString);
		}
		UserDAO userDAO = new UserDAO();
		User user = userDAO.getUser(idUser);
		request.setAttribute("user", user);
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/updateUser.jsp");
        dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idUser = 0;
		HttpServletRequest httpReq = (HttpServletRequest) request;
		HttpSession session = httpReq.getSession(false);
		if (session != null && session.getAttribute("idUser")!= null) {
			String idString = session.getAttribute("idUser").toString();
			idUser= Integer.parseInt(idString);
		}
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String birthdayString = request.getParameter("birthday");
		String[] timeArray = birthdayString.split("-");   //Convert to array
		String birthday;
		if(timeArray.length==2) {
			birthday = timeArray[2]+"/"+timeArray[1]+"/"+timeArray[0];  //Set format is dd/mm/yyyy
		}else {
			birthday = birthdayString;
		}
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String mail =request.getParameter("mail");
		
		User user = new User();
		user.setUserId(idUser);
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setBirthday(birthday);
		user.setAddress(address);
		user.setGender(gender);
		user.setPhone(phone);
		user.setMail(mail);
		
		UserDAO userDAO = new UserDAO();
		userDAO.updateUser(user);
		if (session != null && session.getAttribute("role")!= null && session.getAttribute("role").equals("host")) {
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/hostPage.jsp");
	        dispatcher.forward(request, response);
		}else {
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/homePage.jsp");
	        dispatcher.forward(request, response);
		}
	}

}
