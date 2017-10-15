package org.books.model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

@Entity
@Component
@NamedQuery(query = "SELECT b FROM Book b ORDER BY b.id", name = "find_all_books")
public class Book implements Serializable {


	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name = "id", updatable = false, nullable = false)
	private Long id;
	
	private String title;
	private String author;
	private int pages;
	private String language;
	private int edition;
	@DateTimeFormat(pattern="yyyy") private Date year;
	private String isbn;
	
	protected Book() {
	}
	
	public Book(String title, String author, int pages, String language, int edition, Date year, String isbn) {
		this.title = title;
		this.pages = pages;
		this.language = language;
		this.edition = edition;
		this.year = year;
		this.isbn = isbn;
		this.author = author;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getPages() {
		return pages;
	}
	public void setPages(int pages) {
		this.pages = pages;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public int getEdition() {
		return edition;
	}
	public void setEdition(int edition) {
		this.edition = edition;
	}
	public Date getYear() {
		return year;
	}
	public void setYear(Date year) {
		this.year = year;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	
	public Long getId() {
		return id;
	}

	@Override
	public String toString() {
		return "{id:" + id + "," + "title:" + title + ",author:"+ author + ",pages:"+ pages + ",language:"+ language + ",edition:"+ edition + ",year:"+ year + ",isbn:"+ isbn + "}";
	}
}
