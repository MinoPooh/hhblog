package first.sample.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import first.sample.vo.MemberVO;

public interface SampleService {

	Map<String, Object> selectBoardList(Map<String, Object> map) throws Exception;

	Map<String, Object> selectCodeBoardList(Map<String, Object> map) throws Exception;
	
	void insertBoard(Map<String, Object> map, HttpServletRequest request) throws Exception;

	Map<String, Object> selectBoardDetail(Map<String, Object> map) throws Exception;

	void updateBoard(Map<String, Object> map, HttpServletRequest request) throws Exception;

	void deleteBoard(Map<String, Object> map) throws Exception;

	// 17.11.30 회원가입
	void insertJoin(Map<String, Object> map, HttpServletRequest request) throws Exception;

	public boolean loginCheck(MemberVO vo, HttpSession session) throws Exception;

	public MemberVO viewMember(MemberVO vo) throws Exception;

	public void logout(HttpSession session) throws Exception;

}
