package kr.co.tt.repository.mapper;

import java.util.List;

import kr.co.tt.repository.domain.ReviewBoard;
import kr.co.tt.repository.domain.ReviewFile;



public interface ReviewBoardMapper {
	List<ReviewBoard> selectBoard();
	ReviewBoard selectBoardByNo(int no);
	void insertBoard(ReviewBoard board);
	void deleteBoard(int no);
	void updateBoard(ReviewBoard board);
	ReviewBoard sqcNo(String title);
	
	void insertFile(ReviewFile file);
}