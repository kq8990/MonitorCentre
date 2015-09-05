package edu.seu.mymodel.service.impl;

import java.util.List;

import edu.seu.mymodel.dao.AuthorityDao;
import edu.seu.mymodel.model.Authority;
import edu.seu.mymodel.service.AuthorityService;

public class AuthorityServiceImpl implements AuthorityService {

	private AuthorityDao authorityDao;

	public void setAuthorityDao(AuthorityDao authorityDao) {
		this.authorityDao = authorityDao;
	}

	@Override
	public void save(Authority authority) {
		authorityDao.save(authority);
	}

	@Override
	public void delete(Authority authority) {
		authorityDao.delete(authority);
	}

	@Override
	public void update(Authority authority) {
		authorityDao.update(authority);
	}

	@Override
	public List<Authority> findAllAuthorities() {
		return authorityDao.findAll(Authority.class);
	}

	@Override
	public Authority findAuthorityById(int id) {
		return authorityDao.get(Authority.class, id);
	}

}
