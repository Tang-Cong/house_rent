package cn.domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Comment entity. @author MyEclipse Persistence Tools
 */
public class Comment extends AbstractComment implements java.io.Serializable {
	private Set<Detail> details = new HashSet<Detail>();
	// Constructors

	public Set<Detail> getDetails() {
		return details;
	}

	public void setDetails(Set<Detail> details) {
		this.details = details;
	}

	/** default constructor */
	public Comment() {
	}

	/** full constructor */
	public Comment(String cname, String tele, String content, Date day) {
		super(cname, tele, content, day);
	}

}
