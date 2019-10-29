package com.msita.hostel.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.msita.hostel.bo.Contract;
import com.msita.hostel.dbconnection.ConnectionFactory;


public class ContractDAO {
	public void insertContract(Contract contract){
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		String insertSQL = "INSERT INTO contract(idUser,idRoom,amount,timeCreate,status,timeArrive,timeOut,review) VALUES (?,?,?,?,?,?,?,?)";
		try {
			connection = ConnectionFactory.getConnection();	
			preparedStatement = connection.prepareStatement(insertSQL);
			preparedStatement.setInt(1, contract.getIdUser());
			preparedStatement.setInt(2, contract.getIdRoom());
			preparedStatement.setInt(3, contract.getAmount());
			preparedStatement.setString(4,contract.getTimeCreate());
			preparedStatement.setString(5, "send");
			preparedStatement.setString(6,contract.getTimeArrive());
			preparedStatement.setString(7,contract.getTimeOut());
			preparedStatement.setString(8, contract.getReview());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			//Handle errors for JDBC
			e.printStackTrace();
		} finally {
			//finally block used to close resources
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
	}
	public static void updateContract (Contract contract) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		String sql = "UPDATE contract SET idUser = ?, idRoom = ?, amount = ?, timeCreate = ?, status = ?, timeArrive = ?, timeOut = ?, review = ? WHERE idContract = "+contract.getIdContract();
		try {
			connection = ConnectionFactory.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, contract.getIdUser());
			preparedStatement.setInt(2, contract.getIdRoom());
			preparedStatement.setInt(3, contract.getAmount());
			preparedStatement.setString(4,contract.getTimeCreate());
			preparedStatement.setString(5,contract.getStatus());
			preparedStatement.setString(6,contract.getTimeArrive());
			preparedStatement.setString(7,contract.getTimeOut());
			preparedStatement.setString(8, contract.getReview());
			preparedStatement.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(preparedStatement != null) {
				try {
					preparedStatement.close();
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
	public static ArrayList<Contract> viewAllContractOfHost(int idUser) {
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		ArrayList <Contract> contractList = new ArrayList <Contract>();
		String sql = "SELECT * FROM contract c, room r WHERE status!='cancel' and r.idRoom=c.idRoom and r.idUser="+idUser;
		try {
			connection = ConnectionFactory.getConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				contractList.add(convertToContract(resultSet));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
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
		return contractList;
	}
	public static ArrayList <Contract> viewAllContractOfUser(int idUser) {
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		ArrayList <Contract> contractList = new ArrayList <Contract>();
		String sql = "SELECT * FROM contract c WHERE status!='cancel' and c.idUser="+idUser;
		try {
			connection = ConnectionFactory.getConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				contractList.add(convertToContract(resultSet));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
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
		return contractList;
	}
	public static void setStatus(int idContract,String status) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		String sql = "UPDATE contract SET status = ? WHERE idContract = ?";
		try {
			connection = ConnectionFactory.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, status);
			preparedStatement.setInt(2, idContract);
			preparedStatement.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(preparedStatement != null) {
				try {
					preparedStatement.close();
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
	private static Contract convertToContract(ResultSet rs) throws SQLException {
		Contract contract = new Contract();
		contract.setIdContract(rs.getInt(1));		
		contract.setIdUser(rs.getInt(2));
		contract.setIdRoom(rs.getInt(3));
		contract.setAmount(rs.getInt(4));
		contract.setTimeCreate(rs.getString(5));
		contract.setStatus(rs.getString(6));
		contract.setTimeArrive(rs.getString(7));
		contract.setTimeOut(rs.getString(8));
		contract.setReview(rs.getString(9));
		return contract;
	}
}
