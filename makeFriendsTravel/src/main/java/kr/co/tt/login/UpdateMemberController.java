package kr.co.tt.login;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

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


		String uploadPath = "c:/app/upload/";
		SimpleDateFormat sdf = new SimpleDateFormat("/yyyy/MM/dd/HH");
		String datePath = sdf.format(new Date());
		System.out.println("날짜"+ datePath);
		
		//file 업로드
		File file = new File(uploadPath + datePath);
		if(file.exists() == false) file.mkdirs();
		
		MultipartRequest mRequest = new MultipartRequest(
				request,   
				uploadPath + datePath,  // 사용자 선정한 파일 저장될 폴더 지정
				1024*1024*100,
				"utf-8",
				new MelcFileRenamePolicy() // 서버에 실제 저장되는 파일의 이름규칙
				);
		
		//개인정보 수정 
		Member memberVO = new Member();
		memberVO.setNo(Integer.parseInt(mRequest.getParameter("no")));
		memberVO.setName(mRequest.getParameter("name"));
		memberVO.setPass(mRequest.getParameter("pass"));
		memberVO.setEmail(mRequest.getParameter("email"));
		memberVO.setGender(mRequest.getParameter("gender"));
		memberVO.setFavoritePlace(mRequest.getParameter("favoriteplace"));
		
		File f = mRequest.getFile("poto");
		if(f != null) {
			memberVO.setPoto(mRequest.getFilesystemName("poto"));
			memberVO.setPotoAddr(f.getParent());
		}
		
		mapper.updateMember(memberVO);
		
	
//	  	System.out.println(mRequest.getParameter("name"));
//	  	System.out.println(mRequest.getParameter("email"));
//	  	System.out.println(mRequest.getParameter("gender"));
//	  	System.out.println(f);
		response.sendRedirect(request.getContextPath()+"/html/main/main.do");

	}
}
