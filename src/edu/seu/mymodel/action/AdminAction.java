package edu.seu.mymodel.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import edu.seu.mymodel.model.User;
import edu.seu.mymodel.service.UserService;

public class AdminAction extends ActionSupport {
	private String user_password_confirm;

	private User user;

	private Map<String, String> map = new HashMap<String, String>();

	protected UserService userService;

	/**
	 * 保存User实体Action
	 * 
	 * @return
	 * @throws Exception
	 */
	public String save() throws Exception {
		userService.save(user);

		map.clear();
		map.put("result", "1");

		return "json";
	}

	/**
	 * 删除User实体Action
	 * 
	 * @return
	 * @throws Exception
	 */
	public String delete() throws Exception {
		ActionContext ctx = ActionContext.getContext(); // 创建ActionContext实例

		// 获取请求中的参数：id
		String[] uids = (String[]) ctx.getParameters().get("uid");
		int id = Integer.parseInt(uids[0]);

		User userTemp = userService.findUserByID(id);

		if (userTemp != null) {
			userService.delete(userTemp);

			map.clear();
			map.put("result", "1");
		} else {
			map.clear();
			map.put("result", "0");
		}

		return "json";
	}

	/**
	 * 修改User实体Action
	 * 
	 * @return
	 * @throws Exception
	 */
	public String update() throws Exception {
		if (user.getId() > 0) {
			userService.update(user);

			map.clear();
			map.put("result", "1");
		} else {
			map.clear();
			map.put("result", "0");
		}

		return "json";
	}

	/**
	 * 获取User实体列表Action
	 * 
	 * @return
	 * @throws Exception
	 */
	public String setting() throws Exception {
		ActionContext ctx = ActionContext.getContext(); // 创建ActionContext实例

		List<User> userList = userService.findAllUsers();

		ctx.put("userList", userList);

		return "list";
	}

	public void validateSave() {
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
	
	public void validateUpdate() {
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

	public String getUser_password_confirm() {
		return user_password_confirm;
	}

	public void setUser_password_confirm(String user_password_confirm) {
		this.user_password_confirm = user_password_confirm;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Map<String, String> getMap() {
		return map;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

}
