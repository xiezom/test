package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.BuyItemDAO;
import com.internousdev.ecsite.dao.ItemListDAO;
import com.internousdev.ecsite.dao.LoginDAO;
import com.internousdev.ecsite.dto.BuyItemDTO;
import com.internousdev.ecsite.dto.ItemListDTO;
import com.internousdev.ecsite.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware{

		private String loginUserId;
		private String loginPassword;
		private String result;
		private List<ItemListDTO>itemListDTOList = new ArrayList<ItemListDTO>();
		public Map<String, Object> session;

		public String execute()  throws SQLException  {
			LoginDAO loginDAO = new LoginDAO();
			LoginDTO loginDTO = new LoginDTO();
			ItemListDAO dao = new ItemListDAO();
			itemListDTOList = dao.getItemList();
			BuyItemDAO buyItemDAO = new BuyItemDAO();


			result = ERROR;
			loginDTO = loginDAO.getLoginUserInfo(loginUserId, loginPassword);
			session.put("loginUser", loginDTO);

			if((((LoginDTO) session.get("loginUser")).getAdminFlg() != null)
				&&(((LoginDTO) session.get("loginUser")).getAdminFlg().equals("1"))){
				result = "admin";
			} else if(((LoginDTO) session.get("loginUser")).getLoginFlg()) {
				result = SUCCESS;
				BuyItemDTO buyItemDTO = buyItemDAO.getBuyItemInfo();

				session.put("login_user_id",loginDTO.getLoginId());
				session.put("id", buyItemDTO.getId());
				session.put("user_name", loginDTO.getUserName());
				session.put("buyItem_price", buyItemDTO.getItemPrice());

			}
			return result;
		}


		public String getLoginUserId() {
			return loginUserId;
		}

		public void setLoginUserId(String loginUserId) {
			this.loginUserId = loginUserId;
		}

		public String getLoginPassword() {
			return loginPassword;
		}

		public void setLoginPassword(String loginPassword) {
			this.loginPassword = loginPassword;
		}

		public List<ItemListDTO> getItemListDTOList() {
			return itemListDTOList;
		}

		public void setItemListDTOList(List<ItemListDTO> itemListDTOList) {
			this.itemListDTOList = itemListDTOList;
		}

		public Map<String, Object> getSession() {
			return session;
		}

		@Override
		public void setSession(Map<String, Object> session) {
			this.session = session;
		}


}
