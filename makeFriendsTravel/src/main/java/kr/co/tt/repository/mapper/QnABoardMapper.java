package kr.co.tt.repository.mapper;

import java.util.List;

import kr.co.tt.repository.domain.QnABoard;



public interface QnABoardMapper {
	List<QnABoard> selectQnaBoard();
	QnABoard selectBoardByNo(int no);
	void insertQnaBoard(QnABoard board);
	void deleteBoard(int no);
	void updateBoard(QnABoard board);

}