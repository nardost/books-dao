package org.books.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.books.model.Person;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class PersonDaoService {
	
	@PersistenceContext
	private EntityManager entityManager;
	
	public Long insert(Person person) {
		entityManager.persist(person);
		return person.getId();
	}
	
	public Person find(Long id) {
		return entityManager.find(Person.class, id);
	}
	
	public List<Person> findAll() {
		TypedQuery<Person> query = entityManager.createNamedQuery("find_all_persons", Person.class);
		return query.getResultList();
	}
}