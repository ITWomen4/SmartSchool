package com.action;


import java.util.Date;
import java.util.List;

import com.entity.LgNotice;
import com.entity.PageBean;
import com.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.LgNoticeService;

public class LgNoticeAction extends ActionSupport implements ModelDriven<LgNotice>{
	// 模型驱动使用的对象，自动注入lgNotice的数据 
    private LgNotice lgNotice = new LgNotice();
 // struts2整合spring,注入业务层
    private LgNoticeService lgNoticeService;
	// 当前页数
	private Integer currPage = 1;

    
	public void setLgNoticeService(LgNoticeService lgNoticeService) {
		this.lgNoticeService = lgNoticeService;
	}
	public void setCurrPage(Integer currPage) {
		this.currPage = currPage;
	}
	@Override
	public LgNotice getModel() {
		// TODO Auto-generated method stub
		return lgNotice;
	}
	/**
	 * 分页查询后勤通知
	 * @return
	 */
	public String findAll(){
		PageBean<LgNotice> pageBean = lgNoticeService.findByPage(currPage);
		// 使用的是模型驱动，把查询后勤通知信息放入值栈中，采可以使用OGNL表达是获取
		ActionContext.getContext().getValueStack().push(pageBean);
		return "findAll";
	}
	/**
	 * 根据id查询后勤通知
	 * @return
	 */
	public String detail(){
		lgNotice = lgNoticeService.findById(lgNotice.getNoticeId());
		System.out.print("通知详情："+lgNotice.toString());
		return "goLgNoticeDetail";
	}
	/**
	 * 跳转到发布后勤通知的方法
	 * @return
	 */
	public String goAddLgNotice(){
		return "goAddLgNotice";
	}
	/**
	 * web层添加后勤通知
	 */
	public String save(){
		//获取当前登录的用户保存在session中的用户名:
		User user = (User)ActionContext.getContext().getSession().get("existUser");
		lgNotice.setUploaderName(user.getUserName());
		
//		lgNotice.setUploaderName("tammy");
		lgNotice.setUploadTime(new Date());
		System.out.println("发布的后勤通知：----"+lgNotice.toString());
		lgNoticeService.save(lgNotice);
		return "addSuccess";
	}
	
	/**
	 * web层实现删除的方法
	 */
	public String delete(){
		lgNotice = lgNoticeService.findById(lgNotice.getNoticeId());
		lgNoticeService.delete(lgNotice);
		return "deleteSuccess";
	}
	
	/**
	 * 查询后勤通知
	 * @return
	 */
	public String search(){
		List<LgNotice> list = lgNoticeService.findByNoticeName(lgNotice.getNoticeName());
		// 使用的是模型驱动，把查询后勤通知信息放入值栈中，采可以使用OGNL表达是获取
		ActionContext.getContext().getSession().put("list", list);
		System.out.println("查询后勤通知——————"+list.toString());
		return "findResult";
	}

	public String goEdit(){
		lgNotice = lgNoticeService.findById(lgNotice.getNoticeId());
		return "goEdit";
	}
	/**
	 * web层编辑后勤通知方法
	 */
	public String edit(){
		System.out.println("Eaction"+lgNotice);
		lgNoticeService.update(lgNotice);
		return "editSuccess";
	}
	
}
