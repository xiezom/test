package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.ItemListDAO;
import com.internousdev.ecsite.dto.ItemListDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemsAction extends ActionSupport implements SessionAware {
	private Map<String, Object> session;
	private String itemName;
	private String itemPrice;
	private String id;

	public String execute() throws SQLException {
		if(session.containsKey("id")) {
			ItemListDAO itemListDAO = new ItemListDAO();
			ItemListDTO itemListDTO = new ItemListDTO();
			itemListDTO = (ItemListDTO) itemListDAO.getItemList(id);

			id = itemListDTO.getId();
			itemName = itemListDTO.getItemName();
			itemPrice = itemListDTO.getItemPrice();

		}
		return SUCCESS;
	}

	public String getId() {
		return id;
	}

	public void setId(String Id) {
		this.id = Id;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getItemPrice() {
		return itemPrice;
	}

	public void setItemPrice(String itemPrice) {
		this.itemPrice = itemPrice;
	}


	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public Map<String, Object> getSession() {
		return session;
	}
}

