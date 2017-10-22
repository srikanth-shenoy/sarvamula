package sarvamula.tagging.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import sarvamula.tagging.model.Person;
import sarvamula.tagging.repository.AuthorRepository;

@RestController
@RequestMapping("/api/authors")
public class AuthorController {

	private AuthorRepository repo;

	@Autowired
	public AuthorController(AuthorRepository repository) {
		this.repo = repository;
	}

	@RequestMapping(method = RequestMethod.GET)
	public Iterable<Person> readAll() {
		return repo.findAll();
	}

}
