package kr.co.bit.team4.repository.domain;

import java.util.Date;

public class Mail {
	private String receiver;
	private int no;
	private String sender;
	private String title;
	private String content;
	private Date regDate;
	private String trash;
	private String checkMail;
	
	
	
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
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
