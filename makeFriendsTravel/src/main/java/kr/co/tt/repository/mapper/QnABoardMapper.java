package kr.co.tt.repository.mapper;

import java.util.List;

import kr.co.tt.repository.domain.QnABoard;
import kr.co.tt.repository.domain.QnAComment;
import kr.co.tt.repository.domain.QnAFile;



public interface QnABoardMapper {
	List<QnABoard> selectQnaBoardId(int no);
	List<QnABoard> selectQnaBoard();
	QnABoard selectBoardByNo(int no);
	void insertQnaBoard(QnABoard board);
	int deleteBoard(int no);
	void updateQnaBoard(QnABoard board);
	QnABoard sqcNo(String title);
	
	void insertFile(QnAFile file);
	List<QnAFile> selectFileList(int no);
	
	List<QnAComment> selectCommentList(int no);
	void insertComment(QnAComment comment);
	void updateComment(QnAComment comment);
	int deleteComment(int no);
}