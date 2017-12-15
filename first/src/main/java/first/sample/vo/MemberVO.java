package first.sample.vo;

public class MemberVO {
	private String InputEmail;
	private String password;
	private String userName;
	private String userPhone;

	public String getInputEmail() {
		return InputEmail;
	}

	public void setInputEmail(String inputEmail) {
		InputEmail = inputEmail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	@Override
	public String toString() {
		return "MemberVO [InputEmail=" + InputEmail + ", password=" + password + ", userName=" + userName + "userPhone="
				+ userPhone + "]";
	}
}