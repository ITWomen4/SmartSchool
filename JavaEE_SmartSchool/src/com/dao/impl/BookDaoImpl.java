package com.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dao.BookDao;
import com.entity.Book;

public class BookDaoImpl extends HibernateDaoSupport implements BookDao{

	@Override
	public List<Book> getAllBook() {
		String hql = "from Book";//准备hql语句
		List<Book> bkList = this.getHibernateTemplate().find(hql);
		
		return bkList;
	}

	@Override
	public List<Book> myBook(String currentUserId) {
		String hql = "from Book where userId=?";
		List<Book> mybkList = this.getHibernateTemplate().find(hql, currentUserId);
		return mybkList;
	}

	public int delBook(int currentBookId) {
		String hql = "from Book where isbn=?";
		List<Book> bkList = this.getHibernateTemplate().find(hql, currentBookId);
		
		if(bkList.size()>0){
			this.getHibernateTemplate().delete(bkList.get(0));
			return 1;
		}else {
			return 0;
		}
	}

	@Override
	public int puBook(Book book) {
		
		int isbn = (int) this.getHibernateTemplate().save(book);
		System.out.println("保存成功"+isbn);
		return isbn;
	}
}
