package kr.co.tt.repository.domain;

import java.util.Date;

public class QnAComment {
	private int commentNo;
	private	Date commentRegDate;
	private	Date commentModDate;
	private String commentContent;
	private	int no;
	private int memNo;
	
	public int getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}
	public Date getCommentRegDate() {
		return commentRegDate;
	}
	public void setCommentRegDate(Date commentRegDate) {
		this.commentRegDate = commentRegDate;
	}
	public Date getCommentModDate() {
		return commentModDate;
	}
	public void setCommentModDate(Date commentModDate) {
		this.commentModDate = commentModDate;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
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
