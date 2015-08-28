package edu.seu.mymodel.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import edu.seu.mymodel.model.User;
import edu.seu.mymodel.service.UserService;

public class PageAction extends ActionSupport{

	private String pagePath;

	public String home() {
		pagePath = "/WEB-INF/content/home_page.jsp";
		return "pagePath";
	}

	public String getPagePath() {
		return pagePath;
	}

	public void setPagePath(String pagePath) {
		this.pagePath = pagePath;
	}
	
}
