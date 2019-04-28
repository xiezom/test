package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.InquiryCompleteDAO;
import com.internousdev.ecsite.dto.InquiryDTO;
import com.opensymphony.xwork2.ActionSupport;

public class InquiryListAction extends ActionSupport implements SessionAware {
	private List<InquiryDTO>inquiryDTOList = new ArrayList<InquiryDTO>();
	private Map<String, Object> session;

	public String execute() throws SQLException {
		InquiryCompleteDAO dao = new InquiryCompleteDAO();
		inquiryDTOList = dao.getInquiryList();

		String ret =SUCCESS;

		if(inquiryDTOList.size()  == 0 ) {
			inquiryDTOList = null;

		}
		return ret;
	}



	public List<InquiryDTO> getInquiryDTOList() {
		return inquiryDTOList;
	}

	public void setItemListDTOList(List<InquiryDTO> inquiryDTOList) {
		this.inquiryDTOList = inquiryDTOList;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public Map<String, Object> getSession() {
		return session;
	}
}