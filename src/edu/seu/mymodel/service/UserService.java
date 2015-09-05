package edu.seu.mymodel.service;

import java.util.List;

import edu.seu.mymodel.model.User;

public interface UserService {
	// 登录失败
	public static final int LOGIN_FAIL = 0;
	// 登录成功
	public static final int LOGIN_SUCC = 1;

	/**
	 * 添加用户信息
	 * 
	 * @param user
	 */
	public void save(User user);

	/**
	 * 删除用户信息
	 * 
	 * @param user
	 */
	public void delete(User user);

	/**
	 * 修改用户属性
	 * 
	 * @param user
	 */
	public void update(User user);

	/**
	 * 登录方法
	 * 
	 * @param user
	 * @return 登陆后的结果：0登录失败，1登录成功
	 */
	public int login(User user);

	/**
	 * 查找所有用户
	 * 
	 * @return 用户列表
	 */
	public List<User> findAllUsers();

	/**
	 * 根据ID查找用户
	 * 
	 * @param id
	 * @return
	 */
	public User findUserByID(int id);
}
