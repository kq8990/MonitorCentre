package edu.seu.mymodel.service.impl;

import java.util.List;

import edu.seu.mymodel.dao.UserDao;
import edu.seu.mymodel.model.User;
import edu.seu.mymodel.service.UserService;

public class UserServiceImpl implements UserService {

	private UserDao userDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public void delete(User user) {
		userDao.delete(user);
	}

	@Override
	public void save(User user) {
		userDao.save(user);
	}

	@Override
	public void update(User user) {
		userDao.update(user);
	}

	@Override
	public int login(User user) {
		if (userDao.findByNameAndPassword(user).size() >= 1) {
			return LOGIN_SUCC;
		}
		return LOGIN_FAIL;
	}

	@Override
	public List<User> findAllUsers() {
		return userDao.findAll(User.class);
	}

	@Override
	public User findUserByID(int id) {
		return userDao.get(User.class, id);
	}
}
