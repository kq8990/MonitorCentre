package edu.seu.mymodel.action;

import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import edu.seu.mymodel.model.User;

/**
 * 注销Action
 */
public class LogoutAction extends ActionSupport implements ServletRequestAware {
	// 定义一个HttpServletRequest对象
	private HttpServletRequest request;

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public String execute() throws Exception {
		ActionContext ctx = ActionContext.getContext(); // 创建ActionContext实例
		HttpSession session = request.getSession(); // 获取HttpSession实例

		Map<String, Object> applicationMap = ctx.getApplication(); // 创建Application实例
		Map<User, HttpSession> userOnlineMap = (Map<User, HttpSession>) applicationMap
				.get("userOnlineMap"); // 获取在线用户集合

		String username = (String) ctx.getSession().get("username"); // 取出Session里的User的名字属性

		userOnlineMap.remove(username); // 移除在线用户集合中的该用户
		session.invalidate();// 使Session失效

		return SUCCESS;
	}

}
