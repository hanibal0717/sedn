package inu.sedn.model;

public class CategoryDTO {
	private int idx;
	private String categoryCode;
	private String categoryName;
	private String categoryDepth;
	private String categoryType;
	private String categoryAuth;
	private String categoryOpen;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getCategoryCode() {
		return categoryCode;
	}
	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getCategoryDepth() {
		return categoryDepth;
	}
	public void setCategoryDepth(String categoryDepth) {
		this.categoryDepth = categoryDepth;
	}
	public String getCategoryType() {
		return categoryType;
	}
	public void setCategoryType(String categoryType) {
		this.categoryType = categoryType;
	}
	public String getCategoryAuth() {
		return categoryAuth;
	}
	public void setCategoryAuth(String categoryAuth) {
		this.categoryAuth = categoryAuth;
	}
	public String getCategoryOpen() {
		return categoryOpen;
	}
	public void setCategoryOpen(String categoryOpen) {
		this.categoryOpen = categoryOpen;
	}
	
}
