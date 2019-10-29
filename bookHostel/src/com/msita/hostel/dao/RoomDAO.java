package com.msita.hostel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.msita.hostel.bo.Room;
import com.msita.hostel.dbconnection.ConnectionFactory;
import org.apache.tomcat.util.codec.binary.Base64;

public class RoomDAO {
	public Room getRoom(int idRoom) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		try {
			connection = ConnectionFactory.getConnection();
			String sql = "SELECT * FROM room r, address a WHERE idRoom = ? and r.idAddress = a.idAddress";
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, idRoom);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Room room = convertToRoom(resultSet);
				return room;
			}
		} catch (SQLException e) {
			//Handle errors for JDBC
			e.printStackTrace();
		} finally {
			//finally block used to close resources
	        if (resultSet != null) {
                try {
					resultSet.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
            }

            if (preparedStatement != null) {
            	try {
            		preparedStatement.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
            }

            if (connection != null) {
            	try {
					connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
            }
		}
		
		return null;
	}
	public ArrayList <Room> getAllRoomOfHost(int idUser){
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		ArrayList <Room> roomList = new ArrayList <Room>();
		String sql = "SELECT * FROM room r,address a WHERE r.idAddress = a.idAddress and idUser = "+idUser;
		try {
			connection = ConnectionFactory.getConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				roomList.add(convertToRoom(resultSet));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			if(resultSet != null) {
				try {
					resultSet.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			
			if(statement != null) {
				try {
					statement.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			
			if(connection != null) {
				try {
					connection.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
		}
		return roomList;
	}
	public ArrayList <Room> getAllRoom(){
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		ArrayList <Room> roomList = new ArrayList <Room>();
		String sql = "SELECT * FROM room r,address a WHERE r.idAddress = a.idAddress";
		try {
			connection = ConnectionFactory.getConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				roomList.add(convertToRoom(resultSet));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			if(resultSet != null) {
				try {
					resultSet.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			
			if(statement != null) {
				try {
					statement.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			
			if(connection != null) {
				try {
					connection.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
		}
		return roomList;
	}
	public ArrayList <Room> getRoomByAddress(String address){
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		ArrayList <Room> roomList = new ArrayList <Room>();
		String sql = "SELECT * FROM room r,address a WHERE (r.idAddress = a.idAddress) and (ward = '"+address+"' or county ='"+address+"')";
		try {
			connection = ConnectionFactory.getConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			
			while (resultSet.next()) {
				roomList.add(convertToRoom(resultSet));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			if(resultSet != null) {
				try {
					resultSet.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			
			if(statement != null) {
				try {
					statement.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			
			if(connection != null) {
				try {
					connection.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
		}
		return roomList;
	}
	public void insertRoom(Room room) {
		Connection connection = null;
		PreparedStatement preStatement = null;
		try {
			connection = ConnectionFactory.getConnection();
			preStatement = connection.prepareStatement("INSERT INTO room(idAddress,road,totalRoom,area,maxPeople,price,image,idUser) VALUES (?,?,?,?,?,?,?,?)");
			preStatement.setInt(1, room.getIdAddress());
			preStatement.setString(2, room.getRoad());
			preStatement.setInt(3, room.getTotalRoom());
			preStatement.setFloat(4, room.getArea());
			preStatement.setInt(5, room.getMaxPeople());
			preStatement.setFloat(6, room.getPrice());
			preStatement.setBytes(7, room.getImage());
			preStatement.setInt(8, room.getIdUser());
			preStatement.execute();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if (preStatement != null) {
            	try {
            		preStatement.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
            }
			
			if (connection != null) {
            	try {
					connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
            }
		}
	}
	public void updateRoom(Room room) {
		Connection connection = null;
		PreparedStatement preStatement = null;
		String sql = "UPDATE room SET idAddress = ?, road = ?,totalRoom = ?, area = ?, maxPeople = ?, "
				+ "price = ?, image = ? WHERE idRoom = "+room.getIdRoom();
		try {
			connection = ConnectionFactory.getConnection();
			preStatement = connection.prepareStatement(sql);
			preStatement.setInt(1, room.getIdAddress());
			preStatement.setString(2, room.getRoad());
			preStatement.setInt(3, room.getTotalRoom());
			preStatement.setFloat(4, room.getArea());
			preStatement.setInt(5, room.getMaxPeople());
			preStatement.setFloat(6, room.getPrice());
			preStatement.setBytes(7, room.getImage());
			preStatement.execute();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if (preStatement != null) {
            	try {
            		preStatement.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
            }
			
			if (connection != null) {
            	try {
					connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
            }
		}
	}
	
	public void deleteRoom(int id) {
		Connection connection = null;
		Statement statement = null;
		String sql = "DELETE FROM room WHERE idRoom = "+id;
		try {
			connection = ConnectionFactory.getConnection();
			statement = connection.createStatement();
			statement.execute(sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			if(statement != null) {
				try {
					statement.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			
			if(connection != null) {
				try {
					connection.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
		}
	}
	public ArrayList <Room> getRoomByPrice(float begin,float end){
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		ArrayList <Room> roomList = new ArrayList <Room>();
		String sql = "SELECT * FROM room r,address a WHERE r.idAddress = a.idAddress and price >"+begin+"and price <="+end;
		try {
			connection = ConnectionFactory.getConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				roomList.add(convertToRoom(resultSet));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			if(resultSet != null) {
				try {
					resultSet.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			
			if(statement != null) {
				try {
					statement.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			
			if(connection != null) {
				try {
					connection.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
		}
		return roomList;
	}
	
	private static Room convertToRoom(ResultSet rs) throws SQLException{
		Room room = new Room();
		room.setIdRoom(rs.getInt(1));
		room.setIdAddress(rs.getInt(2));
		room.setRoad(rs.getString(3));
		room.setTotalRoom(rs.getInt(4));
		room.setArea(rs.getFloat(5));
		room.setMaxPeople(rs.getInt(6));
		room.setPrice(rs.getFloat(7));
		byte[] imgData = rs.getBytes(8);
		room.setImage(imgData);
		room.setStringImage(Base64.encodeBase64String(room.getImage()));
		room.setIdUser(rs.getInt(9));
		room.setAddress(room.getRoad()+", "+rs.getString(12)+", "+rs.getString(11));
		return room;
	}
}
