package calc;
// 자바빈즈 클래스 : 웹상에서 관련된 데이터를 저장하고 출력하는 자바빈즈 클래스
// 웹상에서 입력받는 부분 => 멤버변수에 저장

public class CalcBean {
	private int num1 = 0;
	private String operator = null;
	private int num2 = 0;
	
	public int getNum1() {
		return num1;
	}
	public void setNum1(int num1) {
		this.num1 = num1;
		System.out.println("setNum1()호출됨");
	}
	public String getOperator() {
		return operator;
	}
	public void setOperator(String operator) {
		this.operator = operator;
		System.out.println("setOperator()호출됨");
	}
	public int getNum2() {
		return num2;
	}
	public void setNum2(int num2) {
		this.num2 = num2;
		System.out.println("setNum2()호출됨");
	}
	
	// calculate() => 웹상에 계산된 result값을 화면에 출력
	public int calculate() {		
		if(operator.equals("plus")) {
			return num1+num2;
		} else if(operator.equals("sub")) {
			return num1-num2;
		} else if(operator.equals("multi")) {
			return num1*num2;
		} else {
			if(num2<=0) {
				return 0;
			}
			return num1/num2;
		} 
	}
}
