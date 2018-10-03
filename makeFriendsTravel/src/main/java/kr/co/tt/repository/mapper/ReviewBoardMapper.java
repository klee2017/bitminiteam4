package kr.co.tt.repository.mapper;

import java.util.List;

import kr.co.tt.repository.domain.ReviewBoard;
import kr.co.tt.repository.domain.ReviewComment;
import kr.co.tt.repository.domain.ReviewFile;



public interface ReviewBoardMapper {
	List<ReviewBoard> rselectBoardId(int no);
	List<ReviewBoard> selectBoard();
	List<ReviewBoard> bestCnt();
	ReviewBoard selectBoardByNo(int no);
	void insertBoard(ReviewBoard board);
	void deleteBoard(int no);
	void updateBoard(ReviewBoard board);
	void updateRecommendCount(int no);
	ReviewBoard sqcNo(String title);
	
	void insertFile(ReviewFile file);
	
	List<ReviewComment> selectCommentList(int no);
	void insertComment(ReviewComment comment);
	void updateComment(ReviewComment comment);
	void deleteComment(int no);
	
	void deleteSequence();
	void createSequence();
}