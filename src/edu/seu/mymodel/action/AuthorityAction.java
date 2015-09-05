package edu.seu.mymodel.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import edu.seu.mymodel.model.Authority;
import edu.seu.mymodel.service.AuthorityService;

public class AuthorityAction extends ActionSupport {
	private Authority authority;

	private Map<String, String> map = new HashMap<String, String>();

	protected AuthorityService authorityService;

	public String save() throws Exception {
		authorityService.save(authority);

		map.clear();
		map.put("result", "1");

		return "json";
	}

	public String delete() {
		// 创建ActionContext实例
		ActionContext ctx = ActionContext.getContext();

		String[] aids = (String[]) ctx.getParameters().get("aid");

		int id = Integer.parseInt(aids[0]);

		Authority authorityTemp = authorityService.findAuthorityById(id);

		if (authorityTemp != null) {
			authorityService.delete(authorityTemp);

			map.clear();
			map.put("result", "1");
		} else {
			map.clear();
			map.put("result", "0");
		}

		return "json";

	}

	public String update() {
		if (authority.getId() > 0) {
			authorityService.update(authority);

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

		List<Authority> authorityList = authorityService.findAllAuthorities();

		ctx.put("authorityList", authorityList);

		return "list";
	}

	public Authority getAuthority() {
		return authority;
	}

	public void setAuthority(Authority authority) {
		this.authority = authority;
	}

	public Map<String, String> getMap() {
		return map;
	}

	public void setAuthorityService(AuthorityService authorityService) {
		this.authorityService = authorityService;
	}

}
