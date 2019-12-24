package com.entity;

import java.io.Serializable;

public class Book{

	private int isbn;
	private String bkName;
	private String price;
	private String contact;
	private String userId;
	private String content;
	private String pic;
	
	public int getIsbn() {
		return isbn;
	}
	public void setIsbn(int isbn) {
		this.isbn = isbn;
	}
	public String getBkName() {
		return bkName;
	}
	public void setBkName(String bkName) {
		this.bkName = bkName;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	@Override
	public String toString() {
		return "Book [isbn=" + isbn + ", bkName=" + bkName + ", price=" + price + ", contact=" + contact + ", userId="
				+ userId + ", content=" + content + ", pic=" + pic + "]";
	}
	
	
	
}
