package kr.co.tt.repository.domain;

import java.util.Date;

public class QnAComment {
	private	int no;
	private int commentNo;
	private String commentContent;
	private	Date commentRegDate;
	private	Date commentModDate;
	private int commentMemNo;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
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
	public int getCommentMemNo() {
		return commentMemNo;
	}
	public void setCommentMemNo(int commentMemNo) {
		this.commentMemNo = commentMemNo;
	}
}