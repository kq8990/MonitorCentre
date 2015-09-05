package edu.seu.mymodel.service;

import java.util.List;

import edu.seu.mymodel.model.Authority;

public interface AuthorityService {

	/**
	 * 添加权限信息
	 * 
	 * @param authority
	 */
	public void save(Authority authority);

	/**
	 * 删除权限信息
	 * 
	 * @param authority
	 */
	public void delete(Authority authority);

	/**
	 * 修改权限信息
	 * 
	 * @param authority
	 */
	public void update(Authority authority);

	/**
	 * 查找所有权限信息
	 * 
	 * @return
	 */
	public List<Authority> findAllAuthorities();

	/**
	 * 根据ID查找权限信息
	 * 
	 * @param id
	 * @return
	 */
	public Authority findAuthorityById(int id);

}
