package com.action;

import java.util.List;
import com.entity.Users;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.UsersService;

public class UsersAction extends ActionSupport implements ModelDriven<Users>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Users users = new Users();

	private UsersService usersService;



	public UsersService getUsersService() {
		return usersService;
	}

	public void setUsersService(UsersService usersService) {
		this.usersService = usersService;
	}

	@Override
	public Users getModel(){
		return users;
	}

	public String login(){
		System.out.println("action.login方法执行");
		// 调用业务层方法
		Users existUser = usersService.login(users);
		if(existUser==null){
			// 登陆失败
			this.addActionError("用户名或密码错误！");
			System.out.println("action查找失败");
			return "INPUT";
		}else{
			// 登录成功
			System.out.println("Action查找成功");
			ActionContext.getContext().getSession().put("existUser", existUser);
			return "SUCCESS";
		}
	}
	public String register(){
		return "register";
	}
	public String input(){
		return "INPUT";
	}

	
	public String outlog(){
		System.out.println("action.outlog方法执行");
		// 登录成功
		System.out.println("Action查找成功");
		ActionContext.getContext().getSession().clear();
		return "outlog";
	}
	
}
