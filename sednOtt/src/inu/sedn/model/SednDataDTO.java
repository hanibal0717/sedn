package inu.sedn.model;

import org.springframework.web.multipart.MultipartFile;

public class SednDataDTO {
	private int idx;
	private String sdCategory;
	private String sdStyle;
	private String sdCreateDate;
	private String sdOpenDate;
	private String sdVodbox;
	private String sdImgbox;
	private String sdLivebox;
	private String sdMetabox;
	private String sdFilebox;
	private String sdTitle;
	private String sdContent;
	private int sdCount;
	private int sdDelflag;
	private int parent;
	private int depth;
	private int indent;
	private String sdMenuPath;
	private MultipartFile vodData;
	private MultipartFile imgData;
	private MultipartFile liveData;
	private MultipartFile metaData;
	private MultipartFile fileData;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getSdCategory() {
		return sdCategory;
	}
	public void setSdCategory(String sdCategory) {
		this.sdCategory = sdCategory;
	}
	public String getSdStyle() {
		return sdStyle;
	}
	public void setSdStyle(String sdStyle) {
		this.sdStyle = sdStyle;
	}
	public String getSdCreateDate() {
		return sdCreateDate;
	}
	public void setSdCreateDate(String sdCreateDate) {
		this.sdCreateDate = sdCreateDate;
	}
	public String getSdOpenDate() {
		return sdOpenDate;
	}
	public void setSdOpenDate(String sdOpenDate) {
		this.sdOpenDate = sdOpenDate;
	}
	public String getSdVodbox() {
		return sdVodbox;
	}
	public void setSdVodbox(String sdVodbox) {
		this.sdVodbox = sdVodbox;
	}
	public String getSdImgbox() {
		return sdImgbox;
	}
	public void setSdImgbox(String sdImgbox) {
		this.sdImgbox = sdImgbox;
	}
	public String getSdLivebox() {
		return sdLivebox;
	}
	public void setSdLivebox(String sdLivebox) {
		this.sdLivebox = sdLivebox;
	}
	public String getSdMetabox() {
		return sdMetabox;
	}
	public void setSdMetabox(String sdMetabox) {
		this.sdMetabox = sdMetabox;
	}
	public String getSdFilebox() {
		return sdFilebox;
	}
	public void setSdFilebox(String sdFilebox) {
		this.sdFilebox = sdFilebox;
	}
	public String getSdTitle() {
		return sdTitle;
	}
	public void setSdTitle(String sdTitle) {
		this.sdTitle = sdTitle;
	}
	public String getSdContent() {
		return sdContent;
	}
	public void setSdContent(String sdContent) {
		this.sdContent = sdContent;
	}
	public int getSdCount() {
		return sdCount;
	}
	public void setSdCount(int sdCount) {
		this.sdCount = sdCount;
	}
	public int getSdDelflag() {
		return sdDelflag;
	}
	public void setSdDelflag(int sdDelflag) {
		this.sdDelflag = sdDelflag;
	}
	public int getParent() {
		return parent;
	}
	public void setParent(int parent) {
		this.parent = parent;
	}
	public int getDepth() {
		return depth;
	}
	public void setDepth(int depth) {
		this.depth = depth;
	}
	public int getIndent() {
		return indent;
	}
	public void setIndent(int indent) {
		this.indent = indent;
	}
	public String getSdMenuPath() {
		return sdMenuPath;
	}
	public void setSdMenuPath(String sdMenuPath) {
		this.sdMenuPath = sdMenuPath;
	}
	public MultipartFile getVodData() {
		return vodData;
	}
	public void setVodData(MultipartFile vodData) {
		this.vodData = vodData;
	}
	public MultipartFile getImgData() {
		return imgData;
	}
	public void setImgData(MultipartFile imgData) {
		this.imgData = imgData;
	}
	public MultipartFile getLiveData() {
		return liveData;
	}
	public void setLiveData(MultipartFile liveData) {
		this.liveData = liveData;
	}
	public MultipartFile getMetaData() {
		return metaData;
	}
	public void setMetaData(MultipartFile metaData) {
		this.metaData = metaData;
	}
	public MultipartFile getFileData() {
		return fileData;
	}
	public void setFileData(MultipartFile fileData) {
		this.fileData = fileData;
	}
	
}
