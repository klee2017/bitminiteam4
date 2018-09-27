package kr.co.tt.repository.mapper;

import kr.co.tt.repository.domain.Member;

public interface LoginMapper {
	
	Member selectMember(Member member);
	void insertMember(Member member);
}
