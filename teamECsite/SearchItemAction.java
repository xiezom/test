package com.internousdev.earth.action;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.earth.dao.ProductInfoDAO;
import com.internousdev.earth.dto.ProductInfoDTO;
import com.internousdev.earth.util.InputChecker;
import com.opensymphony.xwork2.ActionSupport;

public class SearchItemAction extends ActionSupport implements SessionAware {
	private String categoryId;
	private String keyword;
	private List<String> keywordsErrorMessageList;
	private List<ProductInfoDTO> productInfoDTOList;
	private Map<String, Object> session;

	public String execute() {
		String result = SUCCESS;
		// sessionが空だと接続不可
		if(categoryId.isEmpty() || categoryId == null){

		}

		if (StringUtils.isEmpty(categoryId)) { //recon later

		}

		if (session.isEmpty()) {
			return "sessionTimeout";
		}
		InputChecker inputChecker = new InputChecker();

		String tempKeywords = null;

		// 検索ワードが空白の場合、空として扱います
		if (StringUtils.isBlank(keyword)) {
			tempKeywords = "";
		}
		// 全角スペースが入力されている場合は半角スペースに置換、スペースが2個以上ある場合も半角スペース1個に変換
		else {
			tempKeywords = keyword.replaceAll("　", " ").replaceAll("\\s{2,}", " ");
		}
		// 検索ワードが入力されている場合、エラーチェックをしてListに入れてます。エラーがあった場合もsuccessを返す。
		if (!(tempKeywords.equals(""))) {
			keywordsErrorMessageList = inputChecker.doCheck("検索ワード", keyword, 0, 50, true, true, true, true, false, true,
					true);

			if (keywordsErrorMessageList.size() > 0) {
				return result;
			}
		}
			ProductInfoDAO productInfoDAO = new ProductInfoDAO();
			switch (categoryId) {
			// カテゴリー選択されていない場合、すべてのカテゴリーから検索ワードにHitする商品をproductInfoDTOListにいれてます。
			case "1":
				productInfoDTOList = productInfoDAO.getProductInfoListAll(tempKeywords.split(" "));
				break;
			// それ以外(カテゴリーが選ばれている場合)、カテゴリーと検索ワードにHitする商品を...
			default:
				productInfoDTOList = productInfoDAO.getProductInfoListByKeywords(tempKeywords.split(" "), categoryId);
				break;
			}

		return result;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public List<String> getKeywordsErrorMessageList() {
		return keywordsErrorMessageList;
	}

	public void setKeywordsErrorMessageList(List<String> keywordsErrorMessageList) {
		this.keywordsErrorMessageList = keywordsErrorMessageList;
	}

	public List<ProductInfoDTO> getProductInfoDTOList() {
		return productInfoDTOList;
	}

	public void setProductInfoDTOList(List<ProductInfoDTO> productInfoDTOList) {
		this.productInfoDTOList = productInfoDTOList;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
