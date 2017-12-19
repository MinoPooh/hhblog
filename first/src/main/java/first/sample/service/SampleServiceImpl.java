package first.sample.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import first.common.util.FileUtils;
import first.sample.dao.SampleDAO;
import first.sample.vo.MemberVO;

@Service("sampleService")
public class SampleServiceImpl implements SampleService {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "fileUtils")
	private FileUtils fileUtils;

	@Resource(name = "sampleDAO")
	private SampleDAO sampleDAO;

	@Override
	public Map<String, Object> selectBoardList(Map<String, Object> map) throws Exception {
		return sampleDAO.selectBoardList(map);
	}

	@Override
	public Map<String, Object> selectCodeBoardList(Map<String, Object> map) throws Exception {
		return sampleDAO.selectCodeBoardList(map);
	}
	
	@Override
	public void insertBoard(Map<String, Object> map, HttpServletRequest request) throws Exception {
		sampleDAO.insertBoard(map);

/*		List<Map<String, Object>> list = fileUtils.parseInsertFileInfo(map, request);
		for (int i = 0, size = list.size(); i < size; i++) {
			sampleDAO.insertFile(list.get(i));
		}*/
	}

	@Override
	public Map<String, Object> selectBoardDetail(Map<String, Object> map) throws Exception {
		/*sampleDAO.updateHitCnt(map);*/
		Map<String, Object> resultMap = new HashMap<String, Object>();
		Map<String, Object> tempMap = sampleDAO.selectBoardDetail(map);
		resultMap.put("map", tempMap);

		/*List<Map<String, Object>> list = sampleDAO.selectFileList(map);
		resultMap.put("list", list);*/

		return resultMap;
	}

	@Override
	public void updateBoard(Map<String, Object> map, HttpServletRequest request) throws Exception {
		sampleDAO.updateBoard(map);

/*		sampleDAO.deleteFileList(map);
		List<Map<String, Object>> list = fileUtils.parseUpdateFileInfo(map, request);
		Map<String, Object> tempMap = null;
		for (int i = 0, size = list.size(); i < size; i++) {
			tempMap = list.get(i);
			if (tempMap.get("IS_NEW").equals("Y")) {
				sampleDAO.insertFile(tempMap);
			} else {
				sampleDAO.updateFile(tempMap);
			}
		}*/
	}

	@Override
	public void deleteBoard(Map<String, Object> map) throws Exception {
		sampleDAO.deleteBoard(map);
	}

	// 17.11.30 회원가입
	@Override
	public void insertJoin(Map<String, Object> map, HttpServletRequest request) throws Exception {
		sampleDAO.insertJoin(map);
	}

	@Override
	public boolean loginCheck(MemberVO vo, HttpSession session) {
		boolean result = sampleDAO.loginCheck(vo);
		if (result) { // true일 경우 세션에 등록
			MemberVO vo2 = viewMember(vo);
			// 세션 변수 등록
			session.setAttribute("userId", vo2.getInputEmail());
			session.setAttribute("userName", vo2.getUserName());
		}
		return result;
	}

	@Override
	public MemberVO viewMember(MemberVO vo) {
		return sampleDAO.viewMember(vo);
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}
}
