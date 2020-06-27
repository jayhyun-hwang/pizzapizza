package com.semiproject.topping.model;

public class ToppingVO {
/*	topNo NUMBER NOT NULL,  토핑번호 
	topName VARCHAR2(50) NOT NULL,  토핑이름 
	toptypeNo NUMBER,  토핑종류번호 
	topDesc CLOB,  토핑설명 
	price NUMBER NOT NULL,  가격 
	fileName VARCHAR2(100),  토핑파일이름 
	fileSize NUMBER,  토핑파일크기 	
	originalFileName VARCHAR2(100),  토핑파일원본 
	ServePer NUMBER,  1회제공량 
	kcal NUMBER,  kcal 
	origin VARCHAR2(100),  원산지 
	na NUMBER,  나트륨 
	sugar NUMBER,  당분 
	fat NUMBER,  지방 
	protein NUMBER  단백질 */
	
	private int topNo;
	private String topName;
	private int toptypeNo;
	private String topDesc;
	private int price;
	private String fileName;
	private long fileSize;
	private String originalFileName;
	private int ServePer;
	private int kcal;
	private String origin;
	private int na;
	private int sugar;
	private int fat;
	private int protein;
	
	public ToppingVO(int topNo, String topName, int toptypeNo, String topDesc, int price, String fileName,
			long fileSize, String originalFileName, int servePer, int kcal, String origin, int na, int sugar, int fat,
			int protein) {
		super();
		this.topNo = topNo;
		this.topName = topName;
		this.toptypeNo = toptypeNo;
		this.topDesc = topDesc;
		this.price = price;
		this.fileName = fileName;
		this.fileSize = fileSize;
		this.originalFileName = originalFileName;
		ServePer = servePer;
		this.kcal = kcal;
		this.origin = origin;
		this.na = na;
		this.sugar = sugar;
		this.fat = fat;
		this.protein = protein;
	}
	public ToppingVO() {
		super();
	}
	public int getTopNo() {
		return topNo;
	}
	public void setTopNo(int topNo) {
		this.topNo = topNo;
	}
	public String getTopName() {
		return topName;
	}
	public void setTopName(String topName) {
		this.topName = topName;
	}
	public int getToptypeNo() {
		return toptypeNo;
	}
	public void setToptypeNo(int toptypeNo) {
		this.toptypeNo = toptypeNo;
	}
	public String getTopDesc() {
		return topDesc;
	}
	public void setTopDesc(String topDesc) {
		this.topDesc = topDesc;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public long getFileSize() {
		return fileSize;
	}
	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}
	public String getOriginalFileName() {
		return originalFileName;
	}
	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}
	public int getServePer() {
		return ServePer;
	}
	public void setServePer(int servePer) {
		ServePer = servePer;
	}
	public int getKcal() {
		return kcal;
	}
	public void setKcal(int kcal) {
		this.kcal = kcal;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public int getNa() {
		return na;
	}
	public void setNa(int na) {
		this.na = na;
	}
	public int getSugar() {
		return sugar;
	}
	public void setSugar(int sugar) {
		this.sugar = sugar;
	}
	public int getFat() {
		return fat;
	}
	public void setFat(int fat) {
		this.fat = fat;
	}
	public int getProtein() {
		return protein;
	}
	public void setProtein(int protein) {
		this.protein = protein;
	}
	@Override
	public String toString() {
		return "ToppingVO [topNo=" + topNo + ", topName=" + topName + ", toptypeNo=" + toptypeNo + ", topDesc="
				+ topDesc + ", price=" + price + ", fileName=" + fileName + ", fileSize=" + fileSize
				+ ", originalFileName=" + originalFileName + ", ServePer=" + ServePer + ", kcal=" + kcal + ", origin="
				+ origin + ", na=" + na + ", sugar=" + sugar + ", fat=" + fat + ", protein=" + protein + "]";
	}
}
