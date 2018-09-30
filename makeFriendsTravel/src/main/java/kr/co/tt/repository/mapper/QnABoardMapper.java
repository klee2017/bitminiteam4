package kr.co.tt.repository.mapper;

import java.util.List;

import kr.co.tt.repository.domain.QnABoard;
import kr.co.tt.repository.domain.QnAComment;
import kr.co.tt.repository.domain.QnAFile;



public interface QnABoardMapper {
	List<QnABoard> selectBoard();
	QnABoard selectBoardByNo(int no);
	void insertBoard(QnABoard board);
	void deleteBoard(int no);
	void updateBoard(QnABoard board);
	QnABoard sqcNo(String title);
	
	void insertFile(QnAFile file);
	
	List<QnAComment> selectCommentList(int no);
	void insertComment(QnAComment comment);
	void updateComment(QnAComment comment);
	void deleteComment(int no);
}