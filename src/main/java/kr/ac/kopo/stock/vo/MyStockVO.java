package kr.ac.kopo.stock.vo;

public class MyStockVO {
	
	private String id; //member 테이블
	private String stock_acc;  //stock_member 테이블
	private String name; //member
	private int input_cost; //매수 매도가격
	
	private String stock_name;	//매수종목
	private int count;		//매수개수
	private String end_p; //매수가격
	private String buy_date; //매수날짜
	
	
	public MyStockVO() {
		
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getStock_acc() {
		return stock_acc;
	}
	public void setStock_acc(String stock_acc) {
		this.stock_acc = stock_acc;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getInput_cost() {
		return input_cost;
	}
	public void setInput_cost(int input_cost) {
		this.input_cost = input_cost;
	}
	public String getStock_name() {
		return stock_name;
	}
	public void setStock_name(String stock_name) {
		this.stock_name = stock_name;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getEnd_p() {
		return end_p;
	}
	public void setEnd_p(String end_p) {
		this.end_p = end_p;
	}
	public String getBuy_date() {
		return buy_date;
	}
	public void setBuy_date(String buy_date) {
		this.buy_date = buy_date;
	}
	@Override
	public String toString() {
		return "MyStockVO [id=" + id + ", stock_acc=" + stock_acc + ", name=" + name + ", input_cost=" + input_cost
				+ ", stock_name=" + stock_name + ", count=" + count + ", end_p=" + end_p + ", buy_date=" + buy_date
				+ "]";
	}
	
	
	

	
	
	
	
}
