package kr.co.tt.board.qna.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.tt.common.db.MyAppSqlConfig;
import kr.co.tt.repository.domain.QnABoard;
import kr.co.tt.repository.mapper.BoardMapper;
import kr.co.tt.repository.mapper.QnABoardMapper;

@WebServlet("/qnaDetail.do")
public class QnADetailController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		QnABoardMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(QnABoardMapper.class);		
		List<QnABoard> list = mapper.selectBoard();
		// 화면에 보낸다.(json 문자열로 변환)
		for(QnABoard l : list) {
			System.out.println(l.getContent());
		}
		response.setContentType("application/json; charset=utf-8");
		
	}
}
	

