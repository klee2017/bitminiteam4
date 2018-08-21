package kr.co.bit.team4.mail.ui;

import java.text.SimpleDateFormat;
import java.util.Scanner;

import kr.co.bit.team4.repository.domain.Mail;
import kr.co.bit.team4.repository.mapper.MailMapper;
import kr.co.bit.team4.ui.BaseUI;

public class WriteMailUI extends BaseUI {
	Scanner sc = new Scanner(System.in);
	private MailMapper mailMapper;
	String id;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	public WriteMailUI(MailMapper mailMapper,String id) {
		this.mailMapper=mailMapper;
		this.id = id;
	}
	
	@Override
	public void service() {
		System.out.println("받는 사람 :" + id);
		String receiver = id;
		
		System.out.print("보내는 사람 :");
		String sender = sc.nextLine();
		
		System.out.print("제목 :");
		String title = sc.nextLine();
		
		System.out.print("내용 :");
		String content = sc.nextLine();
		
		Mail m = new Mail();
		m.setReceiver(receiver);
		m.setSender(sender);
		m.setTitle(title);
		m.setContent(content);
		
		mailMapper.write(m);		
	}
}
