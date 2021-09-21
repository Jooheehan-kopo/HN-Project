package kr.ac.kopo.admin.vo;

public class AdminVO {

	//로그인
	private String id;
	private String password;
	private String name;
	private String type;
	
	//메인화면 정보가져오기
	private int countMember; //총회원수
	private int countSchool; //총학교수 + 일반회원
	private int countMbti;
	
	
	
	public int getCountMbti() {
		return countMbti;
	}
	public void setCountMbti(int countMbti) {
		this.countMbti = countMbti;
	}
	public int getCountSchool() {
		return countSchool;
	}
	public void setCountSchool(int countSchool) {
		this.countSchool = countSchool;
	}
	public int getCountMember() {
		return countMember;
	}
	public void setCountMember(int countMember) {
		this.countMember = countMember;
	}
	
	
	public AdminVO() {
		super();
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	@Override
	public String toString() {
		return "AdminVO [id=" + id + ", password=" + password + ", name=" + name + ", type=" + type + ", countMember="
				+ countMember + ", countSchool=" + countSchool + "]";
	}
	
	
	
	
	
	
}
