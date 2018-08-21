package kr.co.bit.team4.repository.domain;

import java.util.Date;

public class Mail {
	private String id;
	private int no;
	private String sender;
	private String title;
	private String content;
	private Date regDate;
	private String trash;
	private String checkMail;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getTrash() {
		return trash;
	}
	public void setTrash(String trash) {
		this.trash = trash;
	}
	public String getCheck() {
		return checkMail;
	}
	public void setCheck(String check) {
		this.checkMail = checkMail;
	}
}
