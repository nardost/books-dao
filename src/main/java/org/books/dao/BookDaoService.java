package org.books.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.books.model.Book;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class BookDaoService {
	
	@PersistenceContext
	private EntityManager entityManager;
	
	public Long insert(Book book) {
		entityManager.persist(book);
		return book.getId();
	}
	
	public Book find(Long id) {
		return entityManager.find(Book.class, id);
	}
	
	public List<Book> findAll() {
		TypedQuery<Book> query = entityManager.createNamedQuery("find_all_books", Book.class);
		return query.getResultList();
	}
}
