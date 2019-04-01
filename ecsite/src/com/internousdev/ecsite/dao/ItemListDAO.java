package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.ecsite.dto.ItemListDTO;
import com.internousdev.ecsite.util.DBConnector;


public class ItemListDAO {

public List<ItemListDTO> getItemList() throws SQLException {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		List<ItemListDTO> itemListDTOList = new ArrayList<ItemListDTO>();

		String sql = "select * from item_info_transaction";

		try {
			PreparedStatement ps = con.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while(rs.next()) {
				ItemListDTO dto = new ItemListDTO();
				dto.setId(rs.getString("id"));
				dto.setItemName(rs.getString("item_name"));
				dto.setItemPrice(rs.getString("item_price"));
				dto.setItemStock(rs.getString("item_stock"));
				dto.setInsert_date(rs.getString("insert_date"));
				itemListDTOList.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return itemListDTOList;

	}

public ItemListDTO getItemList(String id) {
	DBConnector dbConnector = new DBConnector();
	Connection connection = dbConnector.getConnection();
	ItemListDTO productInfoDTO = new ItemListDTO();
	String sql = "select * from item_info_transaction where id=?";
	try {
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		preparedStatement.setString(1, id);
		ResultSet resultSet = preparedStatement.executeQuery();
		while (resultSet.next()) {
			productInfoDTO.setId(resultSet.getString("id"));
			productInfoDTO.setItemName(resultSet.getString("item_name"));
			productInfoDTO.setItemPrice(resultSet.getString("item_price"));
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}finally {
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	return productInfoDTO;
}

}
