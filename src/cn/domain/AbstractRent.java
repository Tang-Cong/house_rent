package cn.domain;

import java.util.Date;

/**
 * AbstractRent entity provides the base persistence definition of the Rent
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractRent implements java.io.Serializable {

	// Fields

	private Integer id;
	private String rname;
	private String tele;
	private String address;
	private Double area;
	private Integer floor;
	private String money;
	private String district;
	private String type;
	private String direction;
	private String surround;
	private String decoration;
	private Date day;

	// Constructors

	/** default constructor */
	public AbstractRent() {
	}

	/** full constructor */
	public AbstractRent(String rname, String tele, String address, Double area,
			Integer floor, String money, String district, String type,
			String direction, String surround, String decoration, Date day) {
		this.rname = rname;
		this.tele = tele;
		this.address = address;
		this.area = area;
		this.floor = floor;
		this.money = money;
		this.district = district;
		this.type = type;
		this.direction = direction;
		this.surround = surround;
		this.decoration = decoration;
		this.day = day;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getRname() {
		return this.rname;
	}

	public void setRname(String rname) {
		this.rname = rname;
	}

	public String getTele() {
		return this.tele;
	}

	public void setTele(String tele) {
		this.tele = tele;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Double getArea() {
		return this.area;
	}

	public void setArea(Double area) {
		this.area = area;
	}

	public Integer getFloor() {
		return this.floor;
	}

	public void setFloor(Integer floor) {
		this.floor = floor;
	}

	public String getMoney() {
		return this.money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	public String getDistrict() {
		return this.district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getDirection() {
		return this.direction;
	}

	public void setDirection(String direction) {
		this.direction = direction;
	}

	public String getSurround() {
		return this.surround;
	}

	public void setSurround(String surround) {
		this.surround = surround;
	}

	public String getDecoration() {
		return this.decoration;
	}

	public void setDecoration(String decoration) {
		this.decoration = decoration;
	}

	public Date getDay() {
		return this.day;
	}

	public void setDay(Date day) {
		this.day = day;
	}

}