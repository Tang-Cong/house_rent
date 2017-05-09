package cn.domain;

/**
 * AbstractUsers entity provides the base persistence definition of the Users
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractUsers implements java.io.Serializable {

	// Fields

	private Integer id;
	private String uname;
	private String password;
	private String number;
	private String tele;
	private Integer level;

	// Constructors

	/** default constructor */
	public AbstractUsers() {
	}

	/** full constructor */
	public AbstractUsers(String uname, String password, String number,
			String tele, Integer level) {
		this.uname = uname;
		this.password = password;
		this.number = number;
		this.tele = tele;
		this.level = level;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUname() {
		return this.uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNumber() {
		return this.number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getTele() {
		return this.tele;
	}

	public void setTele(String tele) {
		this.tele = tele;
	}

	public Integer getLevel() {
		return this.level;
	}

	public void setLevel(Integer level) {
		this.level = level;
	}

}