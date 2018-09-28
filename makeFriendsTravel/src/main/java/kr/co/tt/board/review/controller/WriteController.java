package kr.co.tt.board.review.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.tt.common.db.MyAppSqlConfig;
import kr.co.tt.repository.domain.ReviewBoard;
import kr.co.tt.repository.domain.ReviewFile;
import kr.co.tt.repository.mapper.ReviewBoardMapper;

@WebServlet("/jsp/board/review/write.do")
public class WriteController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String uploadPath = "c:/git/upload";
		
//		MultipartRequest mRequest = new MultipartRequest(
//				request, 
//				uploadPath, 
//				1024*1024*100, 
//				"utf-8", 
//				new DefaultFileRenamePolicy()
//		);
//		
//		String title = mRequest.getParameter("title");
//		String content = mRequest.getParameter("editordata");
		
		
		String title = request.getParameter("title");
		String content = request.getParameter("editordata");
		
		ReviewBoardMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(ReviewBoardMapper.class);
		ReviewBoard board = new ReviewBoard();
		
		board.setTitle(title);
		board.setContent(content);
		board.setMemNo(5);
		
		mapper.insertBoard(board);
		
		ReviewBoard r =mapper.sqcNo(title);
		int no = r.getNo();		
		
//		Enumeration<String> list = mRequest.getFileNames();
//		
//		while(list.hasMoreElements()) {
//			String fName = list.nextElement();
//			File f = mRequest.getFile(fName);
//			
//			if (f != null) {
//				String fileOriginalName = mRequest.getOriginalFileName(fName);
//				String fileServerName = mRequest.getFilesystemName(fName);
//				
//				ReviewFile rf = new ReviewFile();
//				rf.setNo(no);
//				rf.setFileOriginalName(fileOriginalName);
//				rf.setFileServerName(fileServerName);
//				rf.setFilePath(uploadPath);
//				rf.setFileSize((int)f.length());
//				
//				mapper.insertFile(rf);
//				
//				response.setContentType("application/json; charset=utf-8");
//				PrintWriter out = response.getWriter();
//				out.println(new Gson().toJson("http://localhost:8000/imgfolder/"+ fileServerName));
//				out.close();
//			}
//		}
		
		response.sendRedirect("/makeFriendsTravel/jsp/board/review/detail.do?no="+no);
	}
	
}
