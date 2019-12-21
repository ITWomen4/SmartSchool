package com.action;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Date;
import java.util.UUID;
import com.entity.Files;
import com.entity.PageBean;
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
	public String upload() {
		/**
		 *  private String fileName;
			private String fileFormat;
			private String fileAddress;S
			private int type;
			private Date uploadTime;
			private String uploaderName;
			private int status;//文件的状态 0代表删除 ，1代表正常
		 */
//		String fileName = files.getFile().getOriginalFilename();
//		String newFileName = UUID.randomUUID() + files.getFileName();//存在服务器时的文件名
//		String path = ServletActionContext.getServletContext().getRealPath("/file")+ "\\";
//		File f = new File(path);
		System.out.println("fileName:   "+files.getFile().getOriginalFilename());
		System.out.println("path:   "+ServletActionContext.getServletContext().getRealPath("/file")+ "\\");
		System.out.println("lllllllllllllllll:   "+files.getFile().toString());
//		if (!f.exists())
//			f.mkdirs();
//		if (!files.getFile().isEmpty()) {
//			try {
//				FileOutputStream fos = new FileOutputStream(path + newFileName);
//				InputStream in = files.getFile().getInputStream();
//				int b = 0;
//				while ((b = in.read()) != -1) {
//					fos.write(b);
//				}
//				fos.close();
//				in.close();
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//		}
//		files.setFileAddress(path+newFileName);
//		files.setUploadTime(new Date());
//		File fp = new File(path+newFileName);
//		String fileType=fileName.substring(fileName.lastIndexOf("."),fileName.length());
//		files.setFileFormat(fileType);
//		files.setType(1);//1：教务通知，2：公共资料
//		//获取当前登录的用户保存在session中的用户名:
//		//Users user = (Users)ActionContext.getContext().getSession().get("existEmployee");
//		//files.setUploaderName(user.getUsername());
//		files.setUploaderName("tammy");
//		filesService.uploadFile(files);
		return "uploadSuccess";
	}
	
	
	public String goUpload(){
		return "goUpload";
	}

}
























