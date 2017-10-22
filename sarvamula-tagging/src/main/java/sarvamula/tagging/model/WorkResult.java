package sarvamula.tagging.model;

import org.springframework.data.neo4j.annotation.QueryResult;

@QueryResult
public class WorkResult {

	String uid;
	String title;
	
	//String titleEng;
	
	//String titleTransliterated;
	
	//String prasthaana;
	
	String workType;
	
	String category;
	
	String commentaryOn;
	
	String author;

	String shortDescription;
	
	public String getUid() {
		return uid;
	}

	public void setUid(String id) {
		this.uid = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getWorkType() {
		return workType;
	}

	public void setWorkType(String workType) {
		this.workType = workType;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getCommentaryOn() {
		return commentaryOn;
	}

	public void setCommentaryOn(String commentaryOn) {
		this.commentaryOn = commentaryOn;
	}

	public String getShortDescription() {
		return shortDescription;
	}

	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}

}
