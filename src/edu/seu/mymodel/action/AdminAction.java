package edu.seu.mymodel.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	public String delete() throws Exception {
		// 创建ActionContext实例
		ActionContext ctx = ActionContext.getContext();

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

	public String setting() throws Exception {

		// 创建ActionContext实例
		ActionContext ctx = ActionContext.getContext();

		List<User> userList = userService.findAllUsers();

		ctx.put("userList", userList);

		return "list";
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
