package cn.domain;

/**
 * Users entity. @author MyEclipse Persistence Tools
 */
public class Users extends AbstractUsers implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Users() {
	}

	/** full constructor */
	public Users(String uname, String password, String number, String tele,
			Integer level) {
		super(uname, password, number, tele, level);
	}

}
