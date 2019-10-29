package com.msita.hostel.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.msita.hostel.bo.Contract;
import com.msita.hostel.bo.Room;
import com.msita.hostel.dao.ContractDAO;
import com.msita.hostel.dao.RoomDAO;

/**
 * Servlet implementation class ListContractUserServlet
 */
@WebServlet("/listContractUser")
public class ListContractUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListContractUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ContractDAO contractDAO = new ContractDAO();
		int idUser=0;  
		HttpServletRequest httpReq = (HttpServletRequest) request;
		HttpSession session = httpReq.getSession(false);
		if (session != null && session.getAttribute("idUser")!= null) {
			String idString = session.getAttribute("idUser").toString();
			idUser= Integer.parseInt(idString);
		}
		ArrayList <Contract> contractList = contractDAO.viewAllContractOfUser(idUser);
		request.setAttribute("contractList", contractList);
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/listContractUser.jsp");
        dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idContract = Integer.parseInt(request.getParameter("contractId"));
		int amount = Integer.parseInt(request.getParameter("amount"));
		int idRoom =Integer.parseInt(request.getParameter("idRoom"));
		ContractDAO contractDAO = new ContractDAO();
		RoomDAO roomDAO = new RoomDAO();
		Room room = roomDAO.getRoom(idRoom);
		contractDAO.setStatus(idContract,"cancel");
		if(request.getParameter("status").equals("accept")) {
			room.setTotalRoom(room.getTotalRoom()+amount);
			roomDAO.updateRoom(room);
		}
		doGet(request, response);
	}

}
