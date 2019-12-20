package com.action;

import com.entity.LgNotice;
import com.entity.PageBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.LgNoticeService;

public class LgNoticeAction extends ActionSupport implements ModelDriven<LgNotice>{
	// 模型驱动使用的对象，自动注入employee的数据 
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
		System.out.println("action"+pageBean.toString());
		return "findAll";
	}
}
