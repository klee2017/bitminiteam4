package kr.co.bit.team4.repository.mapper;

import java.util.List;

import kr.co.bit.team4.repository.domain.Mail;
import kr.co.bit.team4.repository.domain.Member;

public interface MemberMapper {
	
	public int signUp(Member member); // 회원가입
	public List<Member> selectUser();
	public Member login(Member member);
	
}
