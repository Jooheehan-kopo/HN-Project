package kr.ac.kopo.member.vo;

public class BankTransVO {

	private String bank_id ;
	private int trans_money;
	private String your_bank_id ;
    

	
	public BankTransVO() {
		
	}
	public String getBank_id() {
		return bank_id;
	}
	public void setBank_id(String bank_id) {
		this.bank_id = bank_id;
	}

	public int getTrans_money() {
		return trans_money;
	}
	public void setTrans_money(int trans_money) {
		this.trans_money = trans_money;
	}
	
	public String getYour_bank_id() {
		return your_bank_id;
	}
	public void setYour_bank_id(String your_bank_id) {
		this.your_bank_id = your_bank_id;
	}
	@Override
	public String toString() {
		return "BankTransVO [bank_id=" + bank_id + ", trans_money=" + trans_money + ", your_bank_id=" + your_bank_id
				+ "]";
	}
	

    
    
	
	
}
