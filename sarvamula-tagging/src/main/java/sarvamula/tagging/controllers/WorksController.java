package sarvamula.tagging.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import sarvamula.tagging.model.Work;
import sarvamula.tagging.model.WorkResult;
import sarvamula.tagging.repository.WorksRepository;

@RestController
@RequestMapping("/api/works")
public class WorksController {

	private WorksRepository repo;

	@Autowired
	public WorksController(WorksRepository repository) {
		this.repo = repository;
	}

	@RequestMapping(method = RequestMethod.GET)
	public Iterable<WorkResult> readAll() {
		return repo.findAllSarvamulaResults();
	}

	@RequestMapping(value = "/a", method = RequestMethod.GET)
	public Iterable<Work> readAllA() {
		return repo.findAll();
	}

	@RequestMapping(value = "/b", method = RequestMethod.GET)
	public Iterable<Work> readAllB() {
		return repo.findAllWorks();
	}

}
