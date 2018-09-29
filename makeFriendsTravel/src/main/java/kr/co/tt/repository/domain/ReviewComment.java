package kr.co.tt.repository.domain;

import java.util.Date;

public class ReviewComment {
	private int commentNo;
	private String Content;
	private Date regDate;
	private Date modDate;
	private int no;
	private int memNo;
	
	
	public int getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String Content) {
		this.Content = Content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Date getModDate() {
		return modDate;
	}
	public void setModDate(Date modDate) {
		this.modDate = modDate;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	
}
