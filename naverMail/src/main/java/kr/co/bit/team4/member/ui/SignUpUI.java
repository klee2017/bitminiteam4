package kr.co.bit.team4.member.ui;

import kr.co.bit.team4.repository.domain.Member;
import kr.co.bit.team4.repository.mapper.MemberMapper;
import kr.co.bit.team4.ui.BaseUI;

public class SignUpUI extends BaseUI {
	private MemberMapper mapper;
	
	public SignUpUI(MemberMapper mapper) {
		this.mapper = mapper;
	}
	
	@Override
	public void service() {
			try {
			Member member =new Member();
			System.out.println("*E-mail 계정 만들기*");
			member.setId(getStr("아이디를 입력하세요 : "));
			member.setPass(getStr("비밀번호를 입력하세요 : "));
			member.setPassHint(getStr("비밀번호 힌트를 입력하세요 : "));
			member.setName(getStr("이름을 입력하세요 : "));
			member.setGender(getStr("성별(F/M) : "));
			member.setPhoneNo(getStr("휴대폰 번호를 입력하세요 : "));			
			mapper.signUp(member);
			System.out.println("=====================");
			System.out.println("회원가입이 완료되었습니다.");
			}catch(Exception e) {
				System.out.println("아이디가 존재합니다.");
			}
		
	}
	
}
