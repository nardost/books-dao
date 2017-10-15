package org.books.dao;

import java.util.List;

import javax.jdo.annotations.Transactional;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.books.model.Book;
import org.springframework.stereotype.Component;

@Component("bookDao")
public class BookDao {
	
	@PersistenceContext private EntityManager em;
	@Transactional
	public void persist(Book book) {
		em.persist(book);
	}
	
	public List<Book> getBooks() {
		TypedQuery<Book> query = em.createQuery("SELECT b FROM BOOK b ORDER BY b.id", Book.class);
		return query.getResultList();
	}
}
