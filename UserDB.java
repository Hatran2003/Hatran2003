package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jdbc.ConnectDB;

public class UserDB {

	public static List<User> getAllStudents() throws ClassNotFoundException {

		List<User> userList = new ArrayList<>();
		String sql = "SELECT * FROM user ";
		try {
			Connection con = ConnectDB.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				User u = new User();
				u.setMSV(rs.getString("MSV"));
				u.setHoTen(rs.getString("HoTen"));
				u.setTrangthai(rs.getInt("TrangThai"));

				userList.add(u);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return userList;
	}
