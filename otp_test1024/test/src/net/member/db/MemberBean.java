package net.member.db;

public class MemberBean {
	
	private int idx;
	private String id;
	private String pw;
	private String certification_url;
	private String certification_key;
	private int state;
	private String name;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getCertification_url() {
		return certification_url;
	}
	public void setCertification_url(String certification_url) {
		this.certification_url = certification_url;
	}
	public String getCertification_key() {
		return certification_key;
	}
	public void setCertification_key(String certification_key) {
		this.certification_key = certification_key;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	
	
}
