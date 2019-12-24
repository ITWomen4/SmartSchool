package com.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Map;

import javax.servlet.ServletContext;

import org.apache.struts2.ServletActionContext;

import com.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.UserService;

public class UserAction extends ActionSupport {
	/**
	 * 
	 */

	private String userid;
	private String password;
	private UserService userService;

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	private InputStream inputStream;

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	private static final long serialVersionUID = 1L;

	public String check() throws Exception {
		// HttpServletRequest request = ServletActionContext.getRequest(); 
		//若使用request，重定向后，前端页面无法获得后台传值；
		//			ServletContext servletContext = ServletActionContext.getServletContext();
		User user = new User();
		user.setUserId(Integer.parseInt(userid));
		user.setPassword(password);

		User existUser = userService.checkUser(user);
		if(existUser == null){
			// 
			this.addActionError("用户名或密码错误");
			System.out.println("用户名或密码错误");
			inputStream = new ByteArrayInputStream("fail".getBytes("UTF-8"));
			return "index";
		}else{
			// 
			System.out.println("登录成功");
			existUser.setPassword("");
			ActionContext.getContext().getSession().put("existUser", existUser);
			ActionContext.getContext().getSession().put("username", existUser.getUserName());
			inputStream = new ByteArrayInputStream("success".getBytes("UTF-8"));
			return "index";
		}

	}

	public String islogin() throws Exception{
		System.out.println("islogin");
		Map<String,Object> session =  ActionContext.getContext().getSession();
		User user = (User) session.get("existUser");
		if(user == null) {
			inputStream = new ByteArrayInputStream("no".getBytes("UTF-8"));
		}else {
			inputStream = new ByteArrayInputStream("yes".getBytes("UTF-8"));
		}
		return "index";
	}

	public String exit() throws Exception{
		System.out.println("exit");
		Map<String,Object> session =  ActionContext.getContext().getSession();
		User user = (User) session.get("existUser");
		if(user != null) 
			session.clear();
		return "index";
	}
	
	public String outlog(){
		ActionContext.getContext().getSession().clear();
		return "outlog";
	}
}
