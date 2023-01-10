package model;

public class User extends AbstractModel{
// model là nơi trung chuyển giữa controller và ngược lại ( lấy data dưới database đổ qua view thông qua mode)
	private String userName;
	private String password;
	private String email;
	private String fullName;
	private int status;
	private Role roleId;
	
	public User() {
		roleId = new Role();
	}
	
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Role getRoleId() {
		return roleId;
	}
	public void setRoleId(Role roleId) {
		this.roleId = roleId;
	}
	@Override
	public String toString() {
		return "User [userName=" + userName + ", password=" + password + ", email=" + email + ", fullName=" + fullName
				+ ", status=" + status + ", roleId=" + roleId + "]";
	}
	
	
}
