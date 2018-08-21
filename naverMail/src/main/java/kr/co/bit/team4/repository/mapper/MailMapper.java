package kr.co.bit.team4.repository.mapper;

import java.util.List;

import kr.co.bit.team4.repository.domain.Mail;

public interface MailMapper {
	public List<Mail> receiverMail(String id);
	void write(Mail mail);
}
