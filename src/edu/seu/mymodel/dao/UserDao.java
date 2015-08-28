package edu.seu.mymodel.dao;

import java.util.List;

import edu.seu.common.dao.BaseDao;
import edu.seu.mymodel.model.User;

public interface UserDao extends BaseDao<User> {
	
	/**
	 * 根据用户名和密码查询用户
	 * @param user
	 * @return 符合指定用户名和密码的用户集
	 */
	List<User> findByNameAndPassword(User user);
	
}
