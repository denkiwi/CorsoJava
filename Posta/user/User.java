package user;

public class User {
	private	String firstName;
	private	String secondName;
	private String user;
	private String regDate;
	
	
	
	public User() {
		super();
	}
	public User(String firstName, String secondName, String user, String regDate) {
		super();
		this.firstName = firstName;
		this.secondName = secondName;
		this.user = user;
		this.regDate = regDate;
	}
	/**
	 * @return the firstName
	 */
	public String getFirstName() {
		return firstName;
	}
	/**
	 * @param firstName the firstName to set
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	/**
	 * @return the secondName
	 */
	public String getSecondName() {
		return secondName;
	}
	/**
	 * @param secondName the secondName to set
	 */
	public void setSecondName(String secondName) {
		this.secondName = secondName;
	}
	/**
	 * @return the user
	 */
	public String getUser() {
		return user;
	}
	/**
	 * @param user the user to set
	 */
	public void setUser(String user) {
		this.user = user;
	}
	/**
	 * @return the regDate
	 */
	public String getRegDate() {
		return regDate;
	}
	/**
	 * @param regDate the regDate to set
	 */
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "User [firstName=" + firstName + ", secondName=" + secondName + ", user=" + user + ", regDate=" + regDate
				+ "]";
	}
	

}
