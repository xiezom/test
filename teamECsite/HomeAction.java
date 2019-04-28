package com.internousdev.earth.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.earth.dao.MCategoryDAO;
import com.internousdev.earth.dto.MCategoryDTO;
import com.internousdev.earth.util.CommonUtility;
import com.opensymphony.xwork2.ActionSupport;

public class HomeAction extends ActionSupport implements SessionAware {
	private Map<String, Object> session;
	private String message;

	public String execute() {
		String result = SUCCESS;

		// 未登録ユーザーも仮ユーザーで入場させます
		if (!(session.containsKey("loginuserid")) && !(session.containsKey("tempuserid"))) {
			CommonUtility cu = new CommonUtility();
			session.put("tempuserid", cu.getRamdomValue());
		}

		// ログイン状態の保存。0は未ログイン。
		if (!session.containsKey("logined")) {
			session.put("logined", 0);
		}

		// headerに表示するカテゴリーリストをsessionに入れます
		if (!session.containsKey("mcategorylist")) {
			List<MCategoryDTO> mCategoryList = new ArrayList<MCategoryDTO>();
			MCategoryDAO dao = new MCategoryDAO();
			try {
				mCategoryList = dao.getMCategoryList();
			} catch (Exception e) {
				e.printStackTrace();
			}
			if (mCategoryList.size() != 0) {
				session.put("mcategorylist", mCategoryList);
			}
		}

		return result;

	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
