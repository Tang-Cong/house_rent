package cn.domain;

import java.util.Date;

/**
 * Rent entity. @author MyEclipse Persistence Tools
 */
public class Rent extends AbstractRent implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Rent() {
	}

	/** full constructor */
	public Rent(String rname, String tele, String address, Double area,
			Integer floor, String money, String district, String type,
			String direction, String surround, String decoration, Date day) {
		super(rname, tele, address, area, floor, money, district, type,
				direction, surround, decoration, day);
	}

}
