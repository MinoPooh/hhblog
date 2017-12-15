package first.sample.dao;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import first.common.dao.AbstractDAO;
import first.sample.vo.MemberVO;

@Repository("sampleDAO")
public class SampleDAO extends AbstractDAO {
	
    @Autowired
    private SqlSessionTemplate sqlSession;


	@SuppressWarnings("unchecked")
	public Map<String, Object> selectBoardList(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectPagingList("sample.selectBoardList", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectCodeBoardList(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectPagingList("sample.selectCodeBoardList", map);
	}


	public void insertBoard(Map<String, Object> map) throws Exception {
		insert("sample.insertBoard", map);
	}

	public void updateHitCnt(Map<String, Object> map) throws Exception {
		update("sample.updateHitCnt", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> selectBoardDetail(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("sample.selectBoardDetail", map);
	}

	public void updateBoard(Map<String, Object> map) throws Exception {
		update("sample.updateBoard", map);
	}

	public void deleteBoard(Map<String, Object> map) throws Exception {
		update("sample.deleteBoard", map);
	}

	public void insertFile(Map<String, Object> map) throws Exception {
		insert("sample.insertFile", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectFileList(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("sample.selectFileList", map);
	}

	public void deleteFileList(Map<String, Object> map) throws Exception {
		update("sample.deleteFileList", map);
	}

	public void updateFile(Map<String, Object> map) throws Exception {
		update("sample.updateFile", map);
	}

	//17.11.30 회원관리
	
	public void insertJoin(Map<String, Object> map) throws Exception {
		insert("sample.insertJoin", map);
	}

	public boolean loginCheck(MemberVO vo) {
		String name = sqlSession.selectOne("sample.loginCheck", vo);
		return (name == null) ? false : true;
	};
	
    public MemberVO viewMember(MemberVO vo) {
        return sqlSession.selectOne("sample.viewMember", vo);
    }
	

	public void logout(HttpSession session) {
	};

}
