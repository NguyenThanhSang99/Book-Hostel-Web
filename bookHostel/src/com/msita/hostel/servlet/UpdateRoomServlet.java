package com.msita.hostel.servlet;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.msita.hostel.bo.Room;
import com.msita.hostel.dao.RoomDAO;
/**
 * Servlet implementation class updateRoomServlet
 */
@WebServlet("/updateRoom")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class UpdateRoomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateRoomServlet() {
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
		Room room = roomDAO.getRoom(id);
		//System.out.println(room.getAddress());
		request.setAttribute("room", room);
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/updateRoom.jsp");
        dispatcher.forward(request, response);
}

/**
 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
 */
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	int idRoom = Integer.parseInt(request.getParameter("idRoom"));
	int idAddress = Integer.parseInt(request.getParameter("idAddress"));
	String road = (String) request.getParameter("road");
	String areaString = (String) request.getParameter("area");
	float area = Float.parseFloat(areaString);
	String maxPeopleString = (String) request.getParameter("maxPeople");
	int maxPeople = Integer.parseInt(maxPeopleString);
	String totalRoomString = (String) request.getParameter("totalRoom");
	int totalRoom = Integer.parseInt(totalRoomString);
    String priceString = (String) request.getParameter("price");
    float price = Float.parseFloat(priceString);
    int idUser=0;
    HttpServletRequest httpReq = (HttpServletRequest) request;
	HttpSession session = httpReq.getSession(false);
	if (session != null && session.getAttribute("idUser")!= null) {
		idUser= Integer.parseInt(session.getAttribute("idUser").toString());
	}
    
    InputStream inputStream = null;// input stream of the upload file
     // obtains the upload file part in this multipart request
     Part filePart = request.getPart("image");
     if (filePart != null) {
		    // prints out some information for debugging
	       System.out.println(filePart.getName());
	       System.out.println(filePart.getSize());
	       System.out.println(filePart.getContentType());
	
	       //obtains input stream of the upload file
	       //the InputStream will point to a stream that contains
	       //the contents of the file
	       inputStream = filePart.getInputStream();
     }
    
    Room room = new Room();
    room.setIdRoom(idRoom);
    room.setIdAddress(idAddress);
    room.setRoad(road);
    room.setArea(area);
    room.setMaxPeople(maxPeople);
    room.setTotalRoom(totalRoom);
    room.setPrice(price);
    room.setIdUser(idUser);
    room.setImage(readFile(inputStream));
    inputStream.close();
    RoomDAO roomDAO = new RoomDAO();
    roomDAO.updateRoom(room);
    response.sendRedirect(request.getContextPath() + "/roomList");
	
}
private static byte[] readFile(InputStream inputStream) {
	ByteArrayOutputStream bos = null;
	try {
		byte[] buffer = new byte[1024];
		bos = new ByteArrayOutputStream();
		for (int len; (len = inputStream.read(buffer)) != -1;) {
            bos.write(buffer, 0, len);
        }
		
	} catch (Exception e) {
        System.err.println(e.getMessage());
    }
	return bos.toByteArray();
}


}
