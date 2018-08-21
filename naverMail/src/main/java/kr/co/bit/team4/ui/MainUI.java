package kr.co.bit.team4.ui;

import java.util.Scanner;

import kr.co.bit.team4.common.db.MyAppSqlConfig;
import kr.co.bit.team4.mail.ui.ReceiveMailUI;
import kr.co.bit.team4.mail.ui.WriteMailUI;
import kr.co.bit.team4.member.ui.LoginUI;
import kr.co.bit.team4.member.ui.SignUpUI;
import kr.co.bit.team4.repository.mapper.MailMapper;
import kr.co.bit.team4.repository.mapper.MemberMapper;

public class MainUI {
	
	private Scanner sc = new Scanner(System.in);
	private  MemberMapper mapper = 
			MyAppSqlConfig.getSqlSessionInstance().getMapper(MemberMapper.class);
	
	private MailMapper mailMapper = 
			MyAppSqlConfig.getSqlSessionInstance().getMapper(MailMapper.class);
	
	
	public void service() {
		BaseUI ui = null;
		
		while(true){
			switch(menu()) {
				case 1: ui = new SignUpUI(mapper); break;
				case 2: ui = new LoginUI(mapper); break;
				case 4: quit();
			}
			ui.service();
		}

	}
	
	public void mailService(String id) {
		BaseUI ui = null;
		while(true){
			switch(mailMenu()) {
				case 1: ui = new ReceiveMailUI(mailMapper,id); break;			
//				case 2: ui = new SendMailUI(mailMapper); break;			
				case 3: ui = new WriteMailUI(mailMapper,id); break;		
				case 4 : trashService(id);
				case 5 : logOut();
				
			}
			ui.service();
		}
	}
	public void trashService(String id) {
		BaseUI ui = null;
		while(true){
			switch(trashMenu()) {
				case 1: ui = new ReceiveMailUI(mailMapper,id); break;			
//				case 2:
//				case 3:
				case 4 : mailService(id);
				
			}
			ui.service();
		}
	}
	private int menu() {
		System.out.println("환영합니다 고객님 네이버메일에 오신것을 환영합니다");
		System.out.println("1. 회원가입");
		System.out.println("2. 로그인");
		System.out.println("3. 비밀번호 찾기");
		System.out.println("4. 종료");
		System.out.println("====================================");
		System.out.println("원하시는 서비스를 입력하세요 :");
		return Integer.parseInt(sc.nextLine());
	}
	
	private int mailMenu() {
		System.out.println("====================================");
		System.out.println("1. 받은메일함");
		System.out.println("2. 보낸메일함");
		System.out.println("3. 메일쓰기");
		System.out.println("4. 휴지통");
		System.out.println("5. 로그아웃");
		System.out.println("====================================");
		System.out.println("원하시는 서비스를 입력하세요 :");
		return Integer.parseInt(sc.nextLine());
	}
	private int trashMenu() {
		System.out.println("====================================");
		System.out.println("1. 받은메일함으로 이동");
		System.out.println("2. 영구삭제");
		System.out.println("3. 휴지통 전체 비우기");
		System.out.println("4. 이전메뉴");
		System.out.println("====================================");
		System.out.println("원하시는 서비스를 입력하세요 :");
		return Integer.parseInt(sc.nextLine());
	}
	private void quit() {
		System.out.println("종료");
		System.exit(4);
	}
	
	private void logOut() {
		MainUI ui = new MainUI();
		ui.service();
	}
}
	

