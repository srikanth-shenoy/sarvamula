package sarvamula.tagging.repository;

import org.springframework.data.repository.CrudRepository;

import sarvamula.tagging.model.Person;

public interface AuthorRepository extends CrudRepository<Person, String> {

}
