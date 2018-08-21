package kr.co.bit.team4.mail.ui;

import kr.co.bit.team4.repository.mapper.MailMapper;
import kr.co.bit.team4.ui.BaseUI;

public class ReceiveMailUI extends BaseUI {
	
	private MailMapper mailMapper;
	
	public ReceiveMailUI(MailMapper mailMapper) {
		
	}
	@Override
	public void service() {
		System.out.println("원석아 담배피러가자");
	}
}
