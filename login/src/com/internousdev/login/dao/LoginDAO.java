package com.internousdev.login.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.login.dto.LoginDTO;
import com.internousdev.login.util.DBConnector;

public class LoginDAO {

		/**
		 * LoginDTO…型なので深く考えない
		 */
		public LoginDTO select(String name, String password) throws SQLException {

			/**
			 * インスタンス化をしてgetConnectionメソッドの呼び出し(mysqlにログイン)。
			 */
			LoginDTO dto = new LoginDTO();
			DBConnector db = new DBConnector();
			Connection con = db.getConnection();

			/**
			 * select文。今はまだ文字列。
			 * users_name,passwordはカラム名
			 */
			String sql = "select * from user where user_name=? and password=?";

		try {
			/**
			 * PreparedStatement…データベースまで運んでくれる箱
			 * prepareStatement…プリコンパイル(SQL文をコンピューターの言葉に変えてくれてる)
			 *setするのはJSPから来たnameとpassword
			 */
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2,  password);

			ResultSet rs = ps.executeQuery();

			if(rs.next()) {
				/**
				 * ここではカラム名を入力する
				 *
				 */
				dto.setName(rs.getString("user_name"));
				dto.setPassword(rs.getString("password"));
			}
		} 	catch (SQLException e) {
			e.printStackTrace();

		} finally {
			con.close();
		}
		return dto;
	}
}
