package kr.co.bit.team4.member.ui;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Scanner;


import kr.co.bit.team4.repository.domain.Member;
import kr.co.bit.team4.repository.mapper.MemberMapper;
import kr.co.bit.team4.ui.BaseUI;
import kr.co.bit.team4.ui.MainUI;

public class LoginUI extends BaseUI{

	private MemberMapper mapper;
	
	public LoginUI(MemberMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public void service() {
		Member m =new Member();
		Scanner sc =new Scanner(System.in);
		List<Member> list = mapper.selectUser();
		String id =getStr("아이디를 입력하세요 : ");
		String pass =getStr("비밀번호를 입력하세요 : ");
	
		DateFormat dateFormat = new SimpleDateFormat("yyyy년 MM월 dd일 HH시:mm분:ss초");
		Calendar cal = Calendar.getInstance();
		
			m.setId(id);
			m.setPass(pass);
		
			Member mm = mapper.login(m);
			try {			
				if(mm.getId().equals(id)) {
					try {
						if(mm.getPass().equals(pass)) {
							System.out.println(mm.getId()+"님 환영합니다~~\n"
												+dateFormat.format(cal.getTime())+"에 로그인하셨습니다");
								
								MainUI ui = new MainUI();
								ui.mailService(mm.getId());
							
						}
						
						
					} catch(NullPointerException e) {;;}
				} 
					
			} catch(NullPointerException e) {
				System.out.println("아이디나 비밀번호가 바르게 입력되지 않습니다.");
			}
			
			
	}

}
