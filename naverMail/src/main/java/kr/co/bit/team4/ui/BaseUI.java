package kr.co.bit.team4.ui;

import java.util.Scanner;

public abstract class BaseUI {
	
	public  Scanner sc = new Scanner(System.in);
	
	public abstract void service();
	
	public  String getStr(String msg) {
		System.out.println(msg);
		return sc.nextLine();
	}
	public  int getInt(String msg) {
		System.out.println(msg);
		return Integer.parseInt(sc.nextLine());
	}
}
