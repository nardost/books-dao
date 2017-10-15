package org.books.controllers;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.books.dao.BookDaoService;
import org.books.model.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BookController {
	
	@Autowired private BookDaoService bookDao;
	
	@GetMapping("/create/book")
	public ModelAndView showBookEntryForm() {
		/*
		 * creating a book object with real values will populate the html form with the values.
		 * new Book("title", "author", 1000, "language", 30, Date.valueOf("1990-01-01"), "isbn"));
		 * *
		 */
		return new ModelAndView(
				"create-book", 
				"book", 
				new Book("The Myth of Sisyphus", "Albert Camus", 250, "French", 3, Date.valueOf("1952-01-01"), "45789656214765"));
	}
	@PostMapping(value="/create/book")
	public String createBook(
			@Validated @ModelAttribute("book") Book book, 
			BindingResult bindingResult, 
			ModelMap model) {

		if(bindingResult.hasErrors()) {
			//return "error";
		}
		
		if(book != null) {
			Long id = bookDao.insert(book);
			model.addAttribute("id", id);
			model.addAttribute("title", book.getTitle());
			model.addAttribute("author", book.getAuthor());
			model.addAttribute("isbn", book.getIsbn());
			model.addAttribute("pages", book.getPages());
			model.addAttribute("year", book.getYear());
			model.addAttribute("edition", book.getEdition());
			model.addAttribute("language", book.getLanguage());
		}
		return "new-book";
	}
	
	@GetMapping(value="/list/books")
	public String listItems(ModelMap model) {
		
		List<Book> books = bookDao.findAll();
		model.addAttribute("books", books);
		return "list-books";
	}
}
