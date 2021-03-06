package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.ecsite.dto.UserListDTO;
import com.internousdev.ecsite.util.DBConnector;


public class UserListDAO {

public List<UserListDTO> getUserList() throws SQLException {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		List<UserListDTO> userListDTOList = new ArrayList<UserListDTO>();

		String sql = "select * from login_user_transaction";

		try {
			PreparedStatement ps = con.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while(rs.next()) {
				UserListDTO dto = new UserListDTO();
				dto.setId(rs.getString("id"));
				dto.setUserName(rs.getString("user_name"));
				dto.setLoginId(rs.getString("login_id"));
				dto.setLoginPass(rs.getString("login_pass"));
				dto.setInsert_date(rs.getString("insert_date"));
				userListDTOList.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return userListDTOList;

	}

}
