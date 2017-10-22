package sarvamula.tagging.model;

import org.neo4j.ogm.annotation.GeneratedValue;
import org.neo4j.ogm.annotation.Id;
import org.neo4j.ogm.annotation.NodeEntity;
import org.neo4j.ogm.annotation.Relationship;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.voodoodyne.jackson.jsog.JSOGGenerator;

@JsonIdentityInfo(generator = JSOGGenerator.class)
@NodeEntity
public class Work {

	//@Id @GeneratedValue 
	private Long id;
	
	private String uid;
	
	private String title;
	
	private String titleEng;
	
	private String titleTransliterated;
	
	private String prasthaana;
		
	@Relationship(type = "WROTE", direction = Relationship.INCOMING)
	private Person author;

	public Long getId() {
		return id;
	}

	public String getUid() {
		return uid;
	}

	public String getTitle() {
		return title;
	}

	public String getTitleTransliterated() {
		return titleTransliterated;
	}

	public String getPrasthaana() {
		return prasthaana;
	}

	public Person getAuthor() {
		return author;
	}

	public String getTitleEng() {
		return titleEng;
	}

	@Override
	public String toString() {
		return "Work [id=" + id + ", uid=" + uid + ", title=" + title + ", titleEng=" + titleEng
				+ ", titleTransliterated=" + titleTransliterated + ", prasthaana=" + prasthaana + ", author=" + author
				+ "]";
	}

}
