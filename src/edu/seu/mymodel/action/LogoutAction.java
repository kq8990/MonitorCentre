package edu.seu.mymodel.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport implements ServletRequestAware {
	// 定义一个HttpServletRequest对象
	private HttpServletRequest request;

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public String execute() throws Exception {
		// 获取HttpSession
		HttpSession session = request.getSession();
		// 使Session失效
		session.invalidate();
		return SUCCESS;
	}

}
