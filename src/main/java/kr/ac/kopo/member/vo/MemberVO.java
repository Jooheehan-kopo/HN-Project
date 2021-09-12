package kr.ac.kopo.member.vo;

public class MemberVO {

	private String id;
	private String password;
	private String name;
	private String type;
	
	
	
	private String stock_acc;
	private String stock_pw;
	private int stock_bal;
	private String stock_acc_date;
	private int input_cost; //사고 파는 주식 가격.
	
	
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
		return "MemberVO [id=" + id + ", password=" + password + ", name=" + name + ", type=" + type + "]";
	}
	
	
	
	
}
