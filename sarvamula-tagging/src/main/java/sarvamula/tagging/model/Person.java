package sarvamula.tagging.model;

import java.util.HashSet;
import java.util.Set;

import org.neo4j.ogm.annotation.NodeEntity;
import org.neo4j.ogm.annotation.Relationship;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.voodoodyne.jackson.jsog.JSOGGenerator;

@JsonIdentityInfo(generator = JSOGGenerator.class)
@NodeEntity
public class Person {

	private Long id;
	
	private String uid;
	
	private String name;
	
	@Relationship(type = "WROTE") //, direction = Relationship.UNDIRECTED)
	private Set<Work> worksWritten;
	
	public Person() {
		worksWritten = new HashSet<>();
	}

	public Long getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public Set<Work> getWorksWritten() {
		return worksWritten;
	}

	public String getUid() {
		return uid;
	}

	@Override
	public String toString() {
		return "Person [id=" + id + ", uid=" + uid + ", name=" + name + ", worksWritten=" + worksWritten.size() + "]";
	}

}
