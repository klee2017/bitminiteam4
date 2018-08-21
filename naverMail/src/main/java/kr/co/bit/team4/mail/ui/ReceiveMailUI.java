package kr.co.bit.team4.mail.ui;

import java.text.SimpleDateFormat;
import java.util.List;

import kr.co.bit.team4.repository.domain.Mail;
import kr.co.bit.team4.repository.mapper.MailMapper;
import kr.co.bit.team4.ui.BaseUI;

public class ReceiveMailUI extends BaseUI {
	
	private MailMapper mailMapper;
	String id;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	public ReceiveMailUI(MailMapper mailMapper,String id) {
		this.mailMapper=mailMapper;
		this.id = id;
	}
	@Override
	public void service() {
		List<Mail> list =mailMapper.receiverMail(id);
		
		for(Mail m: list) {
			System.out.printf(
					"%s\t%d\t%s\t%s\t%s\t%s\t%s\t%s",
					m.getReceiver(),
					m.getNo(),
					m.getSender(),
					m.getTitle(),
					m.getContent(),
					sdf.format(m.getRegDate()),
					m.getTrash(),
					m.getCheck());
		}
	}
}
