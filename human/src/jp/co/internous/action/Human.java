package jp.co.internous.action;

public class Human {

	public static void main(String[]args) {
		
		HumanName abc = new HumanName();
		System.out.println("名前:" + abc.getName());
		HumanAge efg = new HumanAge();
		System.out.println("年齢:" + efg.getAge() + "歳");
		HumanAddress ijk = new HumanAddress();
		System.out.println("住所:" + ijk.getAddress());
	}
}
