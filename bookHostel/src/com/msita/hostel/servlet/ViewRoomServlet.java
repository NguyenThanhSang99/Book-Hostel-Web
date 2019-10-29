package com.msita.hostel.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import com.msita.hostel.bo.Contract;
import com.msita.hostel.bo.Room;
import com.msita.hostel.bo.User;
import com.msita.hostel.dao.RoomDAO;
import com.msita.hostel.dao.UserDAO;
import com.msita.hostel.dao.ContractDAO;

/**
 * Servlet implementation class ViewRoomServlet
 */
@WebServlet("/viewRoom")
public class ViewRoomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewRoomServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idStr = request.getParameter("id");
		int id = Integer.parseInt(idStr);
		RoomDAO roomDAO = new RoomDAO();
		UserDAO userDAO = new UserDAO();
		
		Room room = roomDAO.getRoom(id);
		User host = userDAO.getUser(room.getIdUser());
		
		request.setAttribute("room", room);
		request.setAttribute("host", host);
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/viewRoom.jsp");
        dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int idRoom = Integer.parseInt(request.getParameter("idRoom"));
		int idUser= 0;  //update
	    HttpServletRequest httpReq = (HttpServletRequest) request;
		HttpSession session = httpReq.getSession(false);
		if (session != null && session.getAttribute("idUser")!= null) {
			String idString = session.getAttribute("idUser").toString();
			idUser= Integer.parseInt(idString);
		}
		int amount =Integer.parseInt(request.getParameter("amount"));
		
		SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
		String today = format.format(System.currentTimeMillis());
		String timeArriveString = request.getParameter("timeArrive"); //Value of timeArray is yyyy-mm-dd now
		String[] timeArray = timeArriveString.split("-");   //Convert to array
		String timeArrive = timeArray[2]+"/"+timeArray[1]+"/"+timeArray[0];  //Set format is dd/mm/yyyy
		String timeOutString = request.getParameter("timeOut");
		timeArray = timeOutString.split("-");
		String timeOut = timeArray[2]+"/"+timeArray[1]+"/"+timeArray[0]; //Set format is dd/mm/yyyy
		
		Contract contract = new Contract();
		contract.setIdRoom(idRoom);
		contract.setIdUser(idUser);
		contract.setAmount(amount);
		contract.setTimeCreate(today);	
		contract.setTimeArrive(timeArrive);
		contract.setTimeOut(timeOut);
		ContractDAO contractDAO = new ContractDAO();
		contractDAO.insertContract(contract);
		response.sendRedirect(request.getContextPath() + "/listContractUser");
	}

}
