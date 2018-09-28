package kr.co.tt.repository.domain;

import java.util.Date;

public class Member {
	private int no;
	private String id;
	private String name;
	private String pass;
	private String passHint;
	private String gender;
	private String email;
	private String favoritePlace;
	private Date regDate;
	private String poto;
	private String potoAddr;
	
	
	public String getPotoAddr() {
		return potoAddr;
	}
	public void setPotoAddr(String potoAddr) {
		this.potoAddr = potoAddr;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getPassHint() {
		return passHint;
	}
	public void setPassHint(String passHint) {
		this.passHint = passHint;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getFavoritePlace() {
		return favoritePlace;
	}
	public void setFavoritePlace(String favoritePlace) {
		this.favoritePlace = favoritePlace;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getPoto() {
		return poto;
	}
	public void setPoto(String poto) {
		this.poto = poto;
	}
	
}
