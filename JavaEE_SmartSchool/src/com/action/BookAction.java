package com.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.io.IOUtils;
import org.apache.struts2.ServletActionContext;

import com.entity.Book;
import com.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.BookService;

public class BookAction extends ActionSupport{

	private BookService bookService;
//	private String currentUserId; 
	private String currentBookId;
	private Book book;
	private File bkpic;
	private String bkpicContentType;	//�õ��ϴ��ļ�������
	private String bkpicFileName;		//�õ��ϴ��ļ�������
	
	
	
	public void setBkpic(File bkpic) {
		this.bkpic = bkpic;
	}

	public void setBkpicContentType(String bkpicContentType) {
		this.bkpicContentType = bkpicContentType;
	}

	public void setBkpicFileName(String bkpicFileName) {
		this.bkpicFileName = bkpicFileName;
	}
	

	public File getBkpic() {
		return bkpic;
	}

	public String getBkpicContentType() {
		return bkpicContentType;
	}

	public String getBkpicFileName() {
		return bkpicFileName;
	}

	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}

//	public void setCurrentUserId(String currentUserId) {
//		this.currentUserId = currentUserId;
//	}

	public void setCurrentBookId(String currentBookId) {
		this.currentBookId = currentBookId;
	}
	

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public String showbooks() {
		
		List<Book> bkList = new ArrayList<>();
		
		bkList = bookService.showbooks();
		System.out.println("bkList:"+bkList);
		ServletActionContext.getRequest().setAttribute("bkList", bkList);
		
		return "allbk";
	}
	public String mybook() {
		
		List<Book> mybkList = new ArrayList<>();
		
		Map<String,Object> session =  ActionContext.getContext().getSession();
		User user = (User) session.get("existUser");
		if(user == null) {
			return "index";
		}else {
			int userid = user.getUserId();
			
			mybkList = bookService.mybook(String.valueOf(userid));
			System.out.println("bkList:"+mybkList);
			ServletActionContext.getRequest().setAttribute("mybkList", mybkList);
			
			return "mybk";
		}
		
	}
	public String delbook() {
		
		int flag = bookService.delBook(Integer.parseInt(currentBookId));
		if(flag == 1) {
			System.out.println("ɾ���ɹ���"+currentBookId);		
		}
		
		return "mybk2";
	}
	
	public String pubook() {
		System.out.println("pubook?");
		Map<String,Object> session =  ActionContext.getContext().getSession();
		User user = (User) session.get("existUser");
		if(user == null) {
			return "index";
		}else {
			
			String userid = String.valueOf(user.getUserId());
			System.out.println("pbook"+book);
			System.out.println(this.getBkpicFileName());
			//���upload��·���������WebContent�µ�			
			String path = ServletActionContext.getServletContext().getRealPath("/images/bookimg");
			
			SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMdd");  
			java.util.Date date=new java.util.Date();  
			String str=sdf.format(date);
			
			//׼������ļ����ļ���			
			String filename = this.getBkpicFileName()+str;
			try {
				OutputStream out = new FileOutputStream(path + "\\" + filename);		
				InputStream in;
				in = new FileInputStream(bkpic);
				IOUtils.copy(in, out);				
				in.close();		
				out.close();
		
			} catch (Exception e) {
				e.printStackTrace();
			}		
			
		
			book.setUserId(userid);
			book.setPic(filename);
//			
			System.out.println("pubook"+book);
			
			int flag = bookService.pubook(book);
			System.out.println("�����ɹ�:");
			
			return "mybk";
		}
		
	}

	public String prepubook() {
		
		Map<String,Object> session =  ActionContext.getContext().getSession();
		User user = (User) session.get("existUser");
		if(user == null) {
			return "index";
		}else {
			
			return "pubk";
		}
	}
}
