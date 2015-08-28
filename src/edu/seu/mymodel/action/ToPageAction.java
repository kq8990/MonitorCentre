package edu.seu.mymodel.action;

import com.opensymphony.xwork2.ActionSupport;

public class ToPageAction extends ActionSupport {
	
	private String pagePath;
	
	public String login() {
		pagePath = "/WEB-INF/content/login.jsp";
		
		return "pagePath";
	}

	public String getPagePath() {
		return pagePath;
	}

	public void setPagePath(String pagePath) {
		this.pagePath = pagePath;
	}
	
	
}
