package com.msita.hostel.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.msita.hostel.bo.Room;
import com.msita.hostel.bo.User;
import com.msita.hostel.dao.RoomDAO;
import com.msita.hostel.dao.UserDAO;

/**
 * Servlet implementation class SearchRoomServlet
 */
@WebServlet(name = "searchRoom", urlPatterns = { "/searchRoom" })
public class SearchRoomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchRoomServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String search = (String) request.getParameter("search");
		int id=0;
		try {
			id = Integer.parseInt(search);
		}catch(Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher dispatcher;
		RoomDAO roomDao = new RoomDAO();
		UserDAO userDAO = new UserDAO();
		
		Room room = roomDao.getRoom(id);
		User host = userDAO.getUser(room.getIdUser());
		System.out.println(host.getLastName());
		
		request.setAttribute("room", room);
		request.setAttribute("host", host);
		dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/viewRoom.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
