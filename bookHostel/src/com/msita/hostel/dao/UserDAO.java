package com.msita.hostel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.msita.hostel.bo.Room;
import com.msita.hostel.bo.User;
import com.msita.hostel.dbconnection.ConnectionFactory;

public class UserDAO {
	public User findUserByUsernameAndPassword(String username,String password) {
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		String sql = "SELECT * FROM user WHERE username = '"+username+"' and password = '"+password+"';";
		try {
			connection = ConnectionFactory.getConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				User user = convertToUser(resultSet);
				return user;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			if(resultSet!=null) {
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
		return null;
	}
	public User getUser(int idUser) {
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		String sql = "SELECT * FROM user WHERE idUser = "+idUser;
		try {
			connection = ConnectionFactory.getConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				User user = convertToUser(resultSet);
				return user;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			if(resultSet!=null) {
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
		return null;
	}
	public ArrayList <User> getAllUser(){
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		ArrayList <User> userList = new ArrayList <User>();
		String sql = "SELECT * FROM user";
		try {
			connection = ConnectionFactory.getConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				userList.add(convertToUser(resultSet));
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
		return userList;
	}
	public ArrayList <User> getUserByRole(String role){
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		ArrayList <User> userList = new ArrayList <User>();
		String sql = "SELECT * FROM user WHERE role ='"+role+"'";
		try {
			connection = ConnectionFactory.getConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				userList.add(convertToUser(resultSet));
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
		return userList;
	}
	public ArrayList <User> getUserRequestHost(){
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		ArrayList <User> userList = new ArrayList <User>();
		String sql = "SELECT * FROM user WHERE role = 'request'";
		try {
			connection = ConnectionFactory.getConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				userList.add(convertToUser(resultSet));
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
		return userList;
	}
	public void insertUser(User user) {
		Connection connection = null;
		PreparedStatement preStatement = null;
		try {
			connection = ConnectionFactory.getConnection();
			preStatement = connection.prepareStatement("INSERT INTO user(username,password,role) VALUES (?,?,?)");
			preStatement.setString(1, user.getUsername());
			preStatement.setString(2, user.getPassword());
			preStatement.setString(3, "user");
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
	public void updateUser(User user) {
		Connection connection = null;
		PreparedStatement preStatement = null;
		try {
			connection = ConnectionFactory.getConnection();
			preStatement = connection.prepareStatement("UPDATE user SET firstName = ?, lastName = ?,address = ?, gender = ?, phone = ?, "
					+ "mail = ?, birthday =? WHERE idUser = "+user.getUserId());
			preStatement.setString(1, user.getFirstName());
			preStatement.setString(2, user.getLastName());
			preStatement.setString(3, user.getAddress());
			preStatement.setString(4, user.getGender());
			preStatement.setString(5, user.getPhone());
			preStatement.setString(6, user.getMail());
			preStatement.setString(7, user.getBirthday());
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
	public void updateRole(int userId,String str) {
		Connection connection = null;
		Statement statement = null;
		String sql = "UPDATE user SET role = '"+str+"' WHERE idUser = "+userId;
		try {
			connection = ConnectionFactory.getConnection();
			statement = connection.createStatement();
			statement.executeUpdate(sql);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if (statement != null) {
            	try {
            		statement.close();
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
	public void changePassword(int idUser,String password) {
		Connection connection = null;
		Statement statement = null;
		try {
			connection = ConnectionFactory.getConnection();
			statement = connection.createStatement();
			statement.executeUpdate("UPDATE user SET password ='"+password+"' WHERE idUser = "+idUser);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if (statement != null) {
            	try {
            		statement.close();
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
	public void deleteUser(int idUser) {
		Connection connection = null;
		Statement statement = null;
		String sql = "DELETE FROM user WHERE idUser = "+idUser;
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
	private static User convertToUser(ResultSet rs) throws SQLException{
		User user = new User();
		user.setUserId(rs.getInt(1));
		user.setFirstName(rs.getString(2));
		user.setLastName(rs.getString(3));
		user.setAddress(rs.getString(4));
		user.setBirthday(rs.getString(5));
		user.setGender(rs.getString(6));
		user.setPhone(rs.getString(7));
		user.setMail(rs.getString(8));
		user.setUsername(rs.getString(9));
		user.setPassword(rs.getString(10));
		user.setRole(rs.getString(11));
		return user;
	}
}
