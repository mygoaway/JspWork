package test; // 패키지로 각각의 빈즈클래스를 기능별로 구분하기 위해서

/*
 * 자비빈즈 => 웹상(jsp파일내부)에서 관련있는 데이터를 저장하고, 사용하는 클래스
 * 자바빈즈를 만드는 조건(캡슐화)
 * 
 * 1. public class로 작성할 것. => 접근지정자 때문에 외부에서 언제든지 메서드 호출 목적
 * 2. 멤버변수 앞에는 private로 선언
 * 3. 메서드는 Setter, Getter로 작성하면 딘다.
 * */

public class BeanDto {
	private String name;
	private String addr;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}	
}
