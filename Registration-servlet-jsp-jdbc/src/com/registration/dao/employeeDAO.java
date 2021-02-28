package com.registration.dao;

import java.sql.Connection;
import java.sql.DriverManager;

import com.mysql.jdbc.PreparedStatement;
import com.registration.model.employee;

public class employeeDAO {
	
	public static int registerEmployee (employee employee) throws ClassNotFoundException {
		
		String INSERT_USERS = "Insert into employee"+" (id, first_name, last_name, username, password, address, contact) values"
								+ " (?,?,?,?,?,?,?);";
		int result = 0;
		Class.forName("com.mysql.jdbc.Driver");
		
		try(Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/comet?useSSL=false","root","root");
			
				PreparedStatement preparedstatement = (PreparedStatement) connection.prepareStatement(INSERT_USERS)
				
				) {
			preparedstatement.setString(1, employee.getId());
			preparedstatement.setString(2, employee.getFirstname());
			preparedstatement.setString(3, employee.getLastname());
			preparedstatement.setString(4, employee.getUsername());
			preparedstatement.setString(5, employee.getPassword());
			preparedstatement.setString(6, employee.getAddress());
			preparedstatement.setString(7, employee.getContact());
			
			System.out.println(preparedstatement);
		  result = preparedstatement.executeUpdate();
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
		
	}

}
