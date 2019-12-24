package com.service.impl;

import java.util.List;

import com.dao.BookDao;
import com.entity.Book;
import com.service.BookService;

public class BookServiceImpl implements BookService{

	private BookDao bookDao;
	
	
	public void setBookDao(BookDao bookDao) {
		this.bookDao = bookDao;
	}


	@Override
	public List<Book> showbooks() {
		List<Book> bkList = bookDao.getAllBook();
		return bkList;
	}


	@Override
	public List<Book> mybook(String currentUserId) {
		List<Book> mybkList = bookDao.myBook(currentUserId);
		return mybkList;
	}


	@Override
	public int delBook(int currentBookId) {
		int flag = bookDao.delBook(currentBookId);
		return flag;
	}


	@Override
	public int pubook(Book book) {
		int flag = bookDao.puBook(book);
		return 0;
	}

}
