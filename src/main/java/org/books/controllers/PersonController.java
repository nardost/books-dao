package org.books.controllers;

import java.util.List;

import org.books.dao.PersonDaoService;
import org.books.model.Book;
import org.books.model.Person;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PersonController {
	
	@Autowired private PersonDaoService personDao;
	
	@GetMapping("/create/person")
	public ModelAndView showPersonForm() {
		return new ModelAndView("create-person", "person", new Person("Tsegaye Gebre Medhin", "esatweyabeba@gmail.com"));
	}
	
	@PostMapping("/create/person")
	
	public String createPerson(
			@Validated @ModelAttribute("person") Person person,
			BindingResult bindingResult,
			ModelMap model) {
		
		if(bindingResult.hasErrors()) {
			//handle errors
		}
		if(person != null) {
			Long id = personDao.insert(person);
			model.addAttribute("id", id);
			model.addAttribute("name", person.getName());
			model.addAttribute("email", person.getEmail());
		}
		return "new-person";
	}
	@GetMapping(value="/list/persons")
	public String listPersons(ModelMap model) {
		List<Person> persons = personDao.findAll();
		model.addAttribute("persons", persons);
		return "list-persons";
	}
}