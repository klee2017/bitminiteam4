package kr.co.bit.team4.test;

import kr.co.bit.team4.ui.MainUI;

public class Test {

	public static void main(String[] args) {
		try {
		MainUI ui = new MainUI();
		ui.service();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
