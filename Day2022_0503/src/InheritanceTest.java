
public class InheritanceTest {

	public static void main(String[] args) {
		B c = new C(10, 20, 30);
		
	}

}

class A {
	int a;
	void test() {
		System.out.println("class A!");
	}
	
	A() {}
	A(int a) {
		this.a = a;
	}
}
class B extends A {
	int b;
	void test() {
		System.out.println("class B!");
	}
	
	B() {}
	B(int a, int b) {
		super(a);
		this.b = b;
	}
}
class C extends B{
	int c;
	void test() {
		System.out.println("class C!");
	}
	
	C() {}
	C(int a, int b, int c) {
		super(a, b);
		this.c = c;
	}
}
