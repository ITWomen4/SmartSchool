package com.entity;




public class Users implements java.io.Serializable {


	private Integer user_id;
	private String realname;
	private String username;
	private String password;
	private int role;

	public Users() {
	}


	

	@Override
	public String toString() {
		return "Users [user_id=" + user_id + ", realname=" + realname + ", username=" + username + ", password="
				+ password + ", role=" + role + "]";
	}




	public Integer getUser_id() {
		return user_id;
	}





	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}





	public int getRole() {
		return role;
	}





	public void setRole(int role) {
		this.role = role;
	}





	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}





	public String getRealname() {
		return realname;
	}





	public void setRealname(String realname) {
		this.realname = realname;
	}

}