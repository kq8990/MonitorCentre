package edu.seu.mymodel.model;

import javax.persistence.Column;
import javax.persistence.DiscriminatorColumn;
import javax.persistence.DiscriminatorType;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Table(name = "User")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
@DiscriminatorColumn(name = "user_type", discriminatorType = DiscriminatorType.INTEGER)
@DiscriminatorValue(value = "1")
public class User {

	// 标识属性
	@Id
	@Column(name = "user_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	// 姓名
	@Column(name = "user_name", nullable = false, length = 50, unique = true)
	private String name;

	// 密码
	@Column(name = "user_password", nullable = false, length = 50)
	private String password;
	
	@ManyToOne(targetEntity = Authority.class)
	@JoinColumn(name = "user_group")
	private Authority authority;
	
	// 无参数构造器
	public User() {
		this.id = 0;
		this.name = "";
		this.password = "";
	}

	// 初始化全部成员变量构造器
	public User(Integer id, String name, String password) {
		this.id = id;
		this.name = name;
		this.password = password;
	}

	/*
	 * 为属性提供setter、getter方法， setter用于设置属性的值，getter用于获取属性的值
	 */
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Authority getAuthority() {
		return authority;
	}

	public void setAuthority(Authority authority) {
		this.authority = authority;
	}
}
