package sarvamula.tagging;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.event.EventListener;
import org.springframework.data.neo4j.repository.config.EnableNeo4jRepositories;

import sarvamula.tagging.events.EventPublisher;
import sarvamula.tagging.events.PostSaveEvent;
import sarvamula.tagging.events.PreDeleteEvent;
import sarvamula.tagging.events.PreSaveEvent;

@SpringBootApplication
@EntityScan("sarvamula.tagging.model")
@EnableNeo4jRepositories
public class SarvamulaTaggingApplication {

	public static void main(String[] args) {
		SpringApplication.run(SarvamulaTaggingApplication.class, args);
	}
	
	/**
	 * Simply defining a Neo4j OGM <code>EventListener</code> will register it
	 * with the session factory.
	 */
	@Bean
	public EventPublisher eventPublisher() {
		return new EventPublisher();
	}

	@EventListener
	public void onPreSaveEvent(PreSaveEvent event) {
		Object entity = event.getSource();
		System.out.println("Before save of: " + entity);
	}

	@EventListener
	public void onPostSaveEvent(PostSaveEvent event) {
		Object entity = event.getSource();
		System.out.println("After save of: " + entity);
	}

	@EventListener
	public void onPreDeleteEvent(PreDeleteEvent event) {
		Object entity = event.getSource();
		System.out.println("Before delete of: " + entity);
	}

}
