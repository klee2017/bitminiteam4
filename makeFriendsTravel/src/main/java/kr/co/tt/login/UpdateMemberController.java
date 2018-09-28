package kr.co.tt.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.tt.common.db.MyAppSqlConfig;
import kr.co.tt.repository.domain.Member;
import kr.co.tt.repository.mapper.LoginMapper;

@WebServlet("/login/update.do")

public class UpdateMemberController extends HttpServlet {
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LoginMapper mapper = 
			 	MyAppSqlConfig.getSqlSessionInstance().getMapper(LoginMapper.class);
		request.setCharacterEncoding("utf-8");


//		String uploadPath = "c:/app/upload/";
//		SimpleDateFormat sdf = new SimpleDateFormat("/yyyy/MM/dd/HH");
//		String datePath = sdf.format(new Date());
//		System.out.println("날짜"+ datePath);
//		
//		//file
//		File file = new File(uploadPath + datePath);
//		if(file.exists() == false) file.mkdirs();
//		
//		MultipartRequest mRequest = new MultipartRequest(
//				request,   
//				uploadPath + datePath,  // 사용자 선정한 파일 저장될 폴더 지정
//				1024*1024*100,
//				"utf-8",
//				new MelcFileRenamePolicy() // 서버에 실제 저장되는 파일의 이름규칙
//				);
//		
		
		Member memberVO = new Member();
		memberVO.setNo(Integer.parseInt(request.getParameter("no")));
		memberVO.setName(request.getParameter("name"));
		memberVO.setPass(request.getParameter("pass"));
		memberVO.setEmail(request.getParameter("email"));
		memberVO.setGender(request.getParameter("gender"));
		memberVO.setFavoritePlace(request.getParameter("favoriteplace"));
		mapper.updateMember(memberVO);
		
//		File f = mRequest.getFile("poto");
//		if(f != null) {
//			memberVO.setPoto(mRequest.getFilesystemName("poto"));
//			memberVO.setPotoAddr(f.getParent());
//		}
		
		
	
//	  	System.out.println(request.getParameter("name"));
//	  	System.out.println(request.getParameter("email"));
//	  	System.out.println(request.getParameter("gender"));
//	  	System.out.println(f);
		
		response.sendRedirect(request.getContextPath()+"/html/main/main.do");

	}
}
