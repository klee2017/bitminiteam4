package kr.co.tt.repository.domain;

import java.util.Date;
import java.util.List;

public class ReviewBoard {
	private int no;
	private String title;
	private String content;
	private Date regDate;
	private Date modDate;
	private int recCnt;
	private int memNo;
	private List<ReviewFile> fileList;
	
	
	public List<ReviewFile> getFileList() {
		return fileList;
	}
	public void setFileList(List<ReviewFile> fileList) {
		this.fileList = fileList;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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
	public Date getModDate() {
		return modDate;
	}
	public void setModDate(Date modDate) {
		this.modDate = modDate;
	}
	public int getRecCnt() {
		return recCnt;
	}
	public void setRecCnt(int recCnt) {
		this.recCnt = recCnt;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	
}
