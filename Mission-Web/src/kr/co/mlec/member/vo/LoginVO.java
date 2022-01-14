package kr.co.mlec.member.vo;

public class LoginVO {
	
	private String id;
	private String name;
	private String password;
	private String type;  //'S' : 관리자, 'U' : 일반사용자
	public LoginVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "LoginVO [id=" + id + ", name=" + name + ", password=" + password + ", type=" + type + "]";
	}
	
	
}