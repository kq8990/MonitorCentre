package edu.seu.mymodel.action.authority;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class AuthorityInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		// 取得请求相关的ActionContext实例
		ActionContext actionContext = ActionContext.getContext();
		// 取出Session里的User属性
		String user = (String) actionContext.getSession().get("username");
		// 如果没有登录，则返回重新登录
		if (user != null) {
			return arg0.invoke();
		}
		return Action.LOGIN;
	}

}
