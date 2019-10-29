package com.msita.hostel.dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
	public static String URL = "jdbc:mysql://localhost:3306/hostel";
	public static String USER = "root";
	public static String PASS = "thanhsang2609";
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection(URL, USER, PASS);
		}catch(Exception e) {
			throw new RuntimeException("Error connecting to the database", e);
		}
	}
}
