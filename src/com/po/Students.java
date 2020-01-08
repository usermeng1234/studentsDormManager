package com.po;

import org.springframework.web.multipart.MultipartFile;

public class Students {
	private int ids;
	private String id;
	private String stuname;
	private String stusex;
	private Integer stuage;
	private String stuyuanxi;
	private String stuaddress;
	private String stuphone;
	private String studorm;
	private String studromnumber;
	private MultipartFile Image;
	private String logoImage;
	public int getIds() {
		return ids;
	}
	public void setIds(int ids) {
		this.ids = ids;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getStuname() {
		return stuname;
	}
	public void setStuname(String stuname) {
		this.stuname = stuname;
	}
	public String getStusex() {
		return stusex;
	}
	public void setStusex(String stusex) {
		this.stusex = stusex;
	}
	public Integer getStuage() {
		return stuage;
	}
	public void setStuage(Integer stuage) {
		this.stuage = stuage;
	}
	public String getStuyuanxi() {
		return stuyuanxi;
	}
	public void setStuyuanxi(String stuyuanxi) {
		this.stuyuanxi = stuyuanxi;
	}
	public String getStuaddress() {
		return stuaddress;
	}
	public void setStuaddress(String stuaddress) {
		this.stuaddress = stuaddress;
	}
	public String getStuphone() {
		return stuphone;
	}
	public void setStuphone(String stuphone) {
		this.stuphone = stuphone;
	}
	public String getStudorm() {
		return studorm;
	}
	public void setStudorm(String studorm) {
		this.studorm = studorm;
	}
	public String getStudromnumber() {
		return studromnumber;
	}
	public void setStudromnumber(String studromnumber) {
		this.studromnumber = studromnumber;
	}
	public MultipartFile getImage() {
		return Image;
	}
	public void setImage(MultipartFile Image) {
		this.Image =Image;
	}
	public String getLogoImage() {
		return logoImage;
	}
	public void setLogoImage(String logoImage) {
		this.logoImage = logoImage;
	}
}
