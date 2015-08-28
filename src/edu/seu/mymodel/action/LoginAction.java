package edu.seu.mymodel.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import edu.seu.mymodel.model.User;
import edu.seu.mymodel.service.UserService;

public class LoginAction extends ActionSupport{
	
	private User user;
	
	protected UserService userService;
	
	public String execute() throws Exception{
		System.out.println("processing the process action.");
				
		// 创建ActionContext实例
		ActionContext ctx = ActionContext.getContext();
		
		int result = userService.login(getUser());
		
		if (result == 1) {
			ctx.getSession().put("username", user.getName());
			return "succ";

		}else {
			return "fail";
		}
		
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	
}
