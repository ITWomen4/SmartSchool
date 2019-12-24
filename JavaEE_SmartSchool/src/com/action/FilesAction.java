package com.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;

import com.entity.Files;
import com.entity.LgNotice;
import com.entity.PageBean;
import com.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.FilesService;

import org.apache.struts2.ServletActionContext;

public class FilesAction extends ActionSupport implements ModelDriven<Files>{
	// 模型驱动使用的对象，自动注入employee的数据 
    private Files files = new Files();
 // struts2整合spring,注入业务层
    private FilesService filesService;
	// 当前页数
	private Integer currPage = 1;
	
	 //封装文件标题请求参数的属性
    private String title;
    //封装上传文件域的属性
    private File pic;
    //封装上传文件类型的属性
    private String picContentType;
    //封装上传文件名的属性
    private String picFileName;
    //直接在struts.xml文件中配置的属性
    private String savePath;
    
	@Override
	public Files getModel() {
		// TODO Auto-generated method stub
		return files;
	}
	public void setFilesService(FilesService filesService) {
		this.filesService = filesService;
	}
	public void setCurrPage(Integer currPage) {
		this.currPage = currPage;
	}
	
	/**
	 * 分页查询后勤通知
	 * @return
	 */
	public String findAll(){
		PageBean<Files> pageBean = filesService.findByPage(currPage);
		// 使用的是模型驱动，把查询后勤通知信息放入值栈中，采可以使用OGNL表达是获取
		ActionContext.getContext().getValueStack().push(pageBean);
		return "findAll";
	}
	
	
	//上传文件

    //接受struts.xml文件配置值的方法
    public void setSavePath(String value) {
        this.savePath = value;
    }

    //返回上传文件的保存位置
    private String getSavePath() throws Exception {
        return ServletActionContext.getServletContext()
                .getRealPath(savePath);
    }

    //文件标题的setter和getter方法
    public void setTitle(String title) {
        this.title = title;
    }

    public String getTitle() {
        return (this.title);
    }

    //上传文件对应文件内容的setter和getter方法
    public void setPic(File pic) {
        this.pic = pic;
    }

    public File getPic() {
        return (this.pic);
    }

    //上传文件的文件类型的setter和getter方法
    public void setPicContentType(String picContentType) {
        this.picContentType = picContentType;
    }

    public String getPicContentType() {
        return (this.picContentType);
    }

    //上传文件的文件名的setter和getter方法
    public void setPicFileName(String picFileName) {
        this.picFileName = picFileName;
    }

    public String getPicFileName() {
        return (this.picFileName);
    }
	public String upload() throws FileNotFoundException, Exception {
		this.uploadFile(1);
		return "Success";
	}
	
	
	public String goUpload(){
		return "goUpload";
	}
	
	
	public String delete(){
		Files thefile = filesService.findById(files.getFileId());
		filesService.delete(thefile);
		
		return "Success";
	}
	/**
	 * 查询教务通知文件
	 * @return
	 */
	public String search(){
		List<Files> list = filesService.findByFileName(files.getFileName());
		// 使用的是模型驱动，把查询后勤通知信息放入值栈中，采可以使用OGNL表达是获取
		ActionContext.getContext().getSession().put("list", list);
		return "findResult";
	}
	
	
	//公告资料：
	/**
	 * 分页查询后勤通知
	 * @return
	 */
	public String findAllSource(){
		PageBean<Files> pageBean = filesService.findSourceByPage(currPage);
		// 使用的是模型驱动，把查询后勤通知信息放入值栈中，采可以使用OGNL表达是获取
		ActionContext.getContext().getValueStack().push(pageBean);
		return "findAllSource";
	}
	public String goUploadSource(){
		return "goUploadSource";
	}
	
	
	public String deleteSource(){
		Files thefile = filesService.findById(files.getFileId());
		filesService.delete(thefile);
		return "SuccessSource";
	}
	public String uploadSource() throws FileNotFoundException, Exception{
		this.uploadFile(2);
		return "SuccessSource";
	}	
	/**
	 * 查询公共资料
	 * @return
	 */
	public String searchSource(){
		List<Files> list = filesService.findBySourceFileName(files.getFileName());
		// 使用的是模型驱动，把查询后勤通知信息放入值栈中，采可以使用OGNL表达是获取
		ActionContext.getContext().getSession().put("list", list);
		return "findSourceResult";
	}
	
	
	//上传文件的公共方法：
	@SuppressWarnings("resource")
	public String uploadFile(int type) throws FileNotFoundException, Exception {
		 //以服务器的文件保存地址和原文件名建立上传文件输出流
      FileOutputStream fos = new FileOutputStream(getSavePath()
              + "\\" + getPicFileName());
      FileInputStream fis = new FileInputStream(getPic());
     
      
      byte[] buffer = new byte[1024];
      int len = 0;
      while ((len = fis.read(buffer)) > 0) {
          fos.write(buffer, 0, len);
      }
      fos.close();
      files.setFileName(getTitle());
      files.setFileAddress(getSavePath() + "\\" + getPicFileName());
      files.setUploadTime(new Date());
      String fileType=getPicFileName().substring(getPicFileName().lastIndexOf("."),getPicFileName().length());
      files.setFileFormat(fileType);
      files.setType(type);//1：教务通知，2：公共资料
//		//获取当前登录的用户保存在session中的用户名:
		User user = (User)ActionContext.getContext().getSession().get("existUser");
		files.setUploaderName(user.getUserName());
//		files.setUploaderName("tammy");
		files.setStatus(1);
		filesService.uploadFile(files);     
		return "Success";
	}
}
























