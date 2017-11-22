package inu.sedn.model;

public class AdminAccountDTO {
	private int idx;
	private String admin_id; 
	private String admin_pass; 
	private String admin_name;
	private String admin_email;
	private String admin_explain;
	private String admin_authority;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public String getAdmin_pass() {
		return admin_pass;
	}
	public void setAdmin_pass(String admin_pass) {
		this.admin_pass = admin_pass;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public String getAdmin_email() {
		return admin_email;
	}
	public void setAdmin_email(String admin_email) {
		this.admin_email = admin_email;
	}
	public String getAdmin_explain() {
		return admin_explain;
	}
	public void setAdmin_explain(String admin_explain) {
		this.admin_explain = admin_explain;
	}
	public String getAdmin_authority() {
		return admin_authority;
	}
	public void setAdmin_authority(String admin_authority) {
		this.admin_authority = admin_authority;
	}	
	
}
