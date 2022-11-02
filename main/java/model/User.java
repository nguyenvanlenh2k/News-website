package model;

public class User {
// model là nơi trung chuyển giữa controller và ngược lại ( lấy data dưới database đổ qua view thông qua mode)
	private String userName;
	private String fullName;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	
	
	
	
}
