package dto;

import java.sql.Timestamp;

public class Todo {
	private long id;
	private String title;
	private String name;
	private int seqeuence;
	private String type;
	private String regdate;
	
	public Todo() {
		
	}
	
	public Todo(long id, String title, String name, int seqeuence, String type, String regdate) {
		super();
		this.id = id;
		this.title = title;
		this.name = name;
		this.seqeuence = seqeuence;
		this.type = type;
		this.regdate = regdate;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getSeqeuence() {
		return seqeuence;
	}

	public void setSeqeuence(int seqeuence) {
		this.seqeuence = seqeuence;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "Todo [id=" + id + ", title=" + title + ", name=" + name + ", seqeuence=" + seqeuence + ", type=" + type
				+ ", regdate=" + regdate + "]";
	}

	
	
	
}
