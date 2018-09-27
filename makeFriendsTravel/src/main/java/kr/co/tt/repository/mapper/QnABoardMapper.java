package kr.co.tt.repository.mapper;

import java.util.List;

import kr.co.tt.repository.domain.QnABoard;



public interface QnABoardMapper {
	List<QnABoard> selectBoard();
	QnABoard selectBoardByNo(int no);
	void insertBoard(QnABoard board);
	void deleteBoard(int no);
	void updateBoard(QnABoard board);
}