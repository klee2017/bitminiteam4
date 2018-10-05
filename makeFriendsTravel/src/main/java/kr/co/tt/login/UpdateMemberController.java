package kr.co.tt.login;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import kr.co.tt.common.db.MyAppSqlConfig;
import kr.co.tt.repository.domain.Member;
import kr.co.tt.repository.domain.QnABoard;
import kr.co.tt.repository.mapper.LoginMapper;
import kr.co.tt.repository.mapper.QnABoardMapper;

@WebServlet("/login/update.do")

public class UpdateMemberController extends HttpServlet {
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LoginMapper mapper = 
			 	MyAppSqlConfig.getSqlSessionInstance().getMapper(LoginMapper.class);
		request.setCharacterEncoding("utf-8");
		
		QnABoardMapper mapper2 = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(QnABoardMapper.class);	
		
	
		List<QnABoard> list = mapper2.selectQnaBoard();
		String id;
		List<String> idList = new ArrayList<>();
		for(QnABoard b : list) {
			id  = mapper.selectMemberId(b.getMemNo());
			idList.add(id);
		}
		
		request.setAttribute("list", list);
		request.setAttribute("idList", idList);


		String uploadPath = "C:/git/naverMail/makeFriendsTravel/src/main/webapp/image";
		
		
		//file 업로드
		File file = new File(uploadPath);
		if(file.exists() == false) file.mkdirs();
		
		MultipartRequest mRequest = new MultipartRequest(
				request,   
				uploadPath,  // 사용자 선정한 파일 저장될 폴더 지정
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
		
		System.out.println(mRequest.getFilesystemName("poto"));
		File f = mRequest.getFile("poto");
		System.out.println(f.getParent());
		if(f != null) {
			memberVO.setPoto(mRequest.getFilesystemName("poto"));
			memberVO.setPotoAddr(f.getParent());
		}else {
			memberVO.setPoto("");
			memberVO.setPotoAddr("");
		}
		
		mapper.updateMember(memberVO);
		
	
//	  	System.out.println(mRequest.getParameter("name"));
//	  	System.out.println(mRequest.getParameter("email"));
//	  	System.out.println(mRequest.getParameter("gender"));
//	  	System.out.println(f);
		
		response.sendRedirect(request.getContextPath()+"/html/main/main.do");

	}
}
