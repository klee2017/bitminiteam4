package kr.co.tt.repository.mapper;

import java.util.List;

import kr.co.tt.repository.domain.Board;



public interface BoardMapper {
	List<Board> selectBoard();
	void insertBoard(Board board);
	Board selectBoardByNo(int no);
	int deleteBoard(int no);	
	int updateBoard(Board board);
	

}