package edu.seu.mymodel.dao.impl;

import java.util.List;

import edu.seu.common.dao.impl.BaseDaoImpl;
import edu.seu.mymodel.dao.UserDao;
import edu.seu.mymodel.model.User;

public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {

	@Override
	public List<User> findByNameAndPassword(User user) {
		String hql = "select user from User user where user.name = ?0 and user.password = ?1";

		return find(hql, user.getName(), user.getPassword());
	}

}
