package com.db;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.model.*;
public class RegisterCRUD {
	public void insertRegistrationData(Register r) throws ClassNotFoundException, SQLException {
		DBManager dbm = new DBManager();
		dbm.connector();
		String sql="INSERT INTO `training_department`.`register`\r\n"
				+ "(\r\n"
				+ "`name`,\r\n"
				+ "`email`,\r\n"
				+ "`date_of_birth`,\r\n"
				+ "`course`)\r\n"
				+ "VALUES\r\n"
				+ "(?,?,?,?);";
		PreparedStatement ps = dbm.connector().prepareCall(sql);
		ps.setString(1, r.getName());
		ps.setString(2, r.getEmail());
		ps.setString(3, r.getDate_Of_birth());
		ps.setString(4, r.getSelected_course());
		ps.executeUpdate();
		
		dbm.connector().close();
	}
}
