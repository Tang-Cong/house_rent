package cn.domain;

import java.sql.Timestamp;


/**
 * AbstractDetail entity provides the base persistence definition of the Detail
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractDetail implements java.io.Serializable {

	// Fields

	private Integer id;
	private String dname;
	private String content;
	private Timestamp time;
	private Integer cno;

	// Constructors

	/** default constructor 
	 * @param comment2 
	 * @param time2 
	 * @param content2 
	 * @param dname2 */
	public AbstractDetail() {
	}

	public Integer getCno() {
		return cno;
	}

	public void setCno(Integer cno) {
		this.cno = cno;
	}

	/** full constructor */
	public AbstractDetail(String dname, String content, Timestamp time, Integer cno) {
		this.dname = dname;
		this.content = content;
		this.time = time;
		this.cno=cno;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDname() {
		return this.dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getTime() {
		return this.time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

}