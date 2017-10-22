package sarvamula.tagging.repository;

import org.springframework.data.neo4j.annotation.Query;
import org.springframework.data.neo4j.repository.Neo4jRepository;

import sarvamula.tagging.model.Work;
import sarvamula.tagging.model.WorkResult;

public interface WorksRepository extends Neo4jRepository<Work, String> {//CrudRepository<Work, Long> {

	//@Query("MATCH (m:Person)-[:WROTE]->(works) RETURN works")
	//@Query("MATCH (m:Person {name: 'Madhvacharya'})-[:WROTE]->(works) RETURN works, m")
	@Query("MATCH (m:Person {name: 'Madhvacharya'})-[:WROTE]->(work) RETURN work")
	Iterable<Work> findAllWorks();

//	@Query(
//		"MATCH (m:Person {nameEng: 'Madhvacharya'})-[:WROTE]->(work)-[:WORK_TYPE]-(workType) RETURN DISTINCT "
//		+ "work.uid as uid, work.title as title, workType.name as workType, "
//		+ "m.name as author"
//	)

	@Query(
			"MATCH (m:Person {nameEng: 'Madhvacharya'})-[:WROTE]->(work)-[:WORK_TYPE]-(workType) " +  
			"MATCH (work)-[:WORK_CATEGORY]-(category) " + 
			"OPTIONAL MATCH (commOn)-[:COMMENTARY_ON]-(work) " + 
			"WITH work as work, commOn as commOn, workType as workType, category as category, m as m, " + 
			"commOn.title as commentaryOnTitle, category.name as categoryName, workType.name as workTypeName " +  
			"ORDER BY commentaryOnTitle asc, categoryName asc, workTypeName asc " +  
			"RETURN " + 
			"work.uid as uid, work.title as title, work.shortDescription as shortDescription, " +  
			"category.name as category, workType.name as workType, " +  
	        "commOn.title as commentaryOn, m.name as author "
	)
	Iterable<WorkResult> findAllSarvamulaResults();
	

}
