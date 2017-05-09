package cn.domain;

import java.sql.Timestamp;

/**
 * Detail entity. @author MyEclipse Persistence Tools
 */
public class Detail extends AbstractDetail implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Detail() {
	}

	/** full constructor */
	public Detail(String dname, String content, Timestamp time,Integer cno) {
		super(dname, content, time,cno);
	}

}
