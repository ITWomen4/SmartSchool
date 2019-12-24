package com.dao;

import java.util.List;

import com.entity.Book;

public interface BookDao {

	public List<Book> getAllBook();

	public List<Book> myBook(String currentUserId);
	
	public int delBook(int currentBookId);

	public int puBook(Book book);
}
