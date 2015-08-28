package edu.seu.mymodel.service;

import java.util.List;

import edu.seu.mymodel.model.Authority;

public interface AuthorityService {

	public void save(Authority authority);

	public void delete(Authority authority);

	public void edit(Authority authority);

	public List<Authority> findAllAuthorities();

	public Authority findAuthorityById(int id);

}
