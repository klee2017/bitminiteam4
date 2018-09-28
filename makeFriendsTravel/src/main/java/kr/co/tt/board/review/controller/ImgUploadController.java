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
import kr.co.tt.repository.domain.ReviewFile;
import kr.co.tt.repository.mapper.ReviewBoardMapper;

@WebServlet("/jsp/board/review/imgUpload.do")
public class ImgUploadController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String uploadPath = "c:/git/upload";
		
		MultipartRequest mRequest = new MultipartRequest(
				request, 
				uploadPath, 
				1024*1024*100, 
				"utf-8", 
				new DefaultFileRenamePolicy()
		);
		
		ReviewBoardMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(ReviewBoardMapper.class);
		
		Enumeration<String> list = mRequest.getFileNames();
		
		while(list.hasMoreElements()) {
			String fName = list.nextElement();
			File f = mRequest.getFile(fName);
			
			if (f != null) {
				String fileOriginalName = mRequest.getOriginalFileName(fName);
				String fileServerName = mRequest.getFilesystemName(fName);
				
				response.setContentType("application/json; charset=utf-8");
				PrintWriter out = response.getWriter();
				out.println(new Gson().toJson("http://localhost:8000/imgfolder/"+ fileServerName));
			}
		}
	}
	
	
	
}
