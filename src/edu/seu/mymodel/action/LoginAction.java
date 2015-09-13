package edu.seu.mymodel.action;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import edu.seu.mymodel.model.User;
import edu.seu.mymodel.service.UserService;

/**
 * 登录Action
 */
public class LoginAction extends ActionSupport {
	private User user;

	protected UserService userService;

	public String execute() throws Exception {
		System.out.println("processing the process action.");

		ActionContext ctx = ActionContext.getContext(); // 创建ActionContext实例
		HttpSession session = ServletActionContext.getRequest().getSession(); // 获取HttpSession实例

		Map<String, Object> applicationMap = ctx.getApplication(); // 创建Application实例
		Map<String, HttpSession> userOnlineMap = (Map<String, HttpSession>) applicationMap
				.get("userOnlineMap"); // 获取在线用户集合

		if (userOnlineMap == null) {
			userOnlineMap = new HashMap<String, HttpSession>();
			applicationMap.put("userOnlineMap", userOnlineMap);
		} // 若在线用户集合为空，则创建集合

		if (userOnlineMap.get(user.getName()) != null) {
			addActionError("该用户已经登录");
			return "fail";
		} // 若用户存在集合（在线），则返回登录失败

		if (userService.login(getUser()) == 1) {
			ctx.getSession().put("username", user.getName());
			userOnlineMap.put(this.user.getName(), session);

			return "succ";
		} else {
			addActionError("用户名或密码错误");
			return "fail";
		} // 若用户名密码匹配，则返回登录成功，否则返回登录失败
	}

	public void validate() {
		if (this.user.getName() == null || this.user.getName().equals("")) {
			addFieldError("name", "用户名为空");
		} else if (!Pattern.matches(WebConstant.REGEX_01, this.user.getName())) {
			addFieldError("name", "用户名只能由只能输入由数字、26个英文字母或者下划线组成");
		}

		if (this.user.getPassword() == null
				|| this.user.getPassword().equals("")) {
			addFieldError("password", "密码为空");
		} else if (!Pattern.matches(WebConstant.REGEX_01,
				this.user.getPassword())) {
			addFieldError("password", "密码只能由只能输入由数字、26个英文字母或者下划线组成");
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
