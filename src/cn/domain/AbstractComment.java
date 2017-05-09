package cn.domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * AbstractComment entity provides the base persistence definition of the
 * Comment entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractComment implements java.io.Serializable {

	// Fields

	private Integer id;
	private String cname;
	private String tele;
	private String content;
	private Date day;
	private Set<Detail> details = new HashSet<Detail>();

	// Constructors

	/** default constructor */
	public AbstractComment() {
	}

	/** full constructor */
	public AbstractComment(String cname, String tele, String content, Date day) {
		this.cname = cname;
		this.tele = tele;
		this.content = content;
		this.day = day;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCname() {
		return this.cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getTele() {
		return this.tele;
	}

	public void setTele(String tele) {
		this.tele = tele;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getDay() {
		return this.day;
	}

	public void setDay(Date day) {
		this.day = day;
	}

}