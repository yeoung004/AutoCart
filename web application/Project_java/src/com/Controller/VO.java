package com.Controller;

public class VO {
	private String id;
	private String pw;
	private String iherbId;
	private String iherbPw;
	private String phone;
	private String gender;
	private String birth;
	private String pcode;
	private String img_url;
	private String url;
	private String title;
	private int price;
	
	public VO(String id, String pw, String iherbId, String iherbPw, String phone, String gender, String birth) {
		this.id = id;
		this.pw = pw;
		this.iherbId = iherbId;
		this.iherbPw = iherbPw;
		this.phone = phone;
		this.gender = gender;
		this.birth = birth;
	}


	public VO(String pcode, String img_url, String title,int price) {
		this.pcode = pcode;
		this.img_url = img_url;
		this.title = title;
		this.price = price;
	}

	public VO(String pcode, String img_url, String title,int price,String url) {
		this.pcode = pcode;
		this.img_url = img_url;
		this.title = title;
		this.price = price;
		this.url = url;
	}

	public String getUrl() {
		return url;
	}
	
	public int getPrice() {
		return price;
	}
	
	public String getId() {
		return id;
	}


	public String getPw() {
		return pw;
	}


	public String getIherbId() {
		return iherbId;
	}


	public String getIherbPw() {
		return iherbPw;
	}


	public String getPhone() {
		return phone;
	}


	public String getGender() {
		return gender;
	}


	public String getBirth() {
		return birth;
	}


	public String getPcode() {
		return pcode;
	}


	public String getImg_url() {
		return img_url;
	}


	public String getTitle() {
		return title;
	}
	
	
	
	
}