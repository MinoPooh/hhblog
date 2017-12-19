package first.sample.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import first.common.common.CommandMap;
import first.sample.service.SampleService;
import first.sample.vo.MemberVO;

@Controller
public class SampleController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "sampleService")
	private SampleService sampleService;

	// 메인 리스트 화면 index
	@RequestMapping(value = "/sample/openIndex.do")
	public ModelAndView openIndex(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/blog/index");
		Map<String, Object> resultMap = sampleService.selectBoardList(commandMap.getMap());
		mv.addObject("paginationInfo", (PaginationInfo) resultMap.get("paginationInfo"));
		mv.addObject("list", resultMap.get("result"));
		return mv;
	}

	// 상세 보기 post
	@RequestMapping(value = "/sample/openPost.do")
	public ModelAndView openPost(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("/blog/post");
		Map<String, Object> map = sampleService.selectBoardDetail(commandMap.getMap());
		mv.addObject("map", map.get("map"));
		mv.addObject("list", map.get("list"));

		return mv;
	}

	@RequestMapping(value = "/sample/openAbout.do")
	public ModelAndView openAbout(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("/blog/about");
		
		return mv;
	}

	@RequestMapping(value = "/sample/openJoin.do")
	public ModelAndView openJoin(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/blog/join");
		
		return mv;
	}
	
	 @RequestMapping(value = "/sample/insertJoin.do") 
	 public ModelAndView insertJoin(CommandMap commandMap, HttpServletRequest request) throws Exception { 
		 ModelAndView mv = new ModelAndView("redirect:/sample/openLogin.do");
		 sampleService.insertJoin(commandMap.getMap(), request);
	 
	 return mv; 
	 
	 }

	@RequestMapping(value = "/sample/openLogin.do")
	public ModelAndView openLogin(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/blog/login");
		
		return mv;
	}

	@RequestMapping(value = "/sample/loginCheck.do")
	public ModelAndView loginCheck(@ModelAttribute MemberVO vo, HttpSession session) throws Exception {
		boolean result = sampleService.loginCheck(vo, session);

		ModelAndView mv = new ModelAndView();
		if (result == true) { // 로그인 성공
			mv.setViewName("redirect:/sample/openIndex.do");
			mv.addObject("msg", "success");
		} else { // 로그인 실패
			mv.setViewName("/blog/login");
			mv.addObject("msg", "failure");
		}
		return mv;
	}
	
	@RequestMapping(value = "sample/logout.do")
	public ModelAndView logout(HttpSession session) throws Exception {

		System.out.println("로그아웃");
		sampleService.logout(session);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/sample/openIndex.do");
		mv.addObject("msg", "logout");
		return mv;
	}

	  @RequestMapping(value = "/sample/openWrite.do") 
	  public ModelAndView openWrite(CommandMap commandMap, HttpServletRequest request) throws Exception { 
	  ModelAndView mv = new ModelAndView("/blog/write");
	  
	  return mv; 
	}
	  
	@RequestMapping(value = "/sample/insertWrite.do") //입력
	public ModelAndView insertWrite(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/sample/openIndex.do");
		
		sampleService.insertBoard(commandMap.getMap(), request);

		return mv;
	}
	  
	  @RequestMapping(value = "/sample/openEdit.do") 
	  public ModelAndView openEdit(CommandMap commandMap, HttpServletRequest request) throws Exception { 
	  ModelAndView mv = new ModelAndView("/blog/edit");
	  
	  Map<String, Object> map = sampleService.selectBoardDetail(commandMap.getMap());
	  mv.addObject("map",map.get("map")); mv.addObject("list", map.get("list"));
	  
	  return mv; 
	}

	  @RequestMapping(value = "/sample/updateEdit.do") //수정
	public ModelAndView updateEdit(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView("redirect:/sample/openIndex.do");

		sampleService.updateBoard(commandMap.getMap(), request);

		mv.addObject("IDX", commandMap.get("IDX"));
		return mv;
	}

	@RequestMapping(value = "/sample/delete.do") //삭제
	public ModelAndView delete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/sample/openIndex.do");

		sampleService.deleteBoard(commandMap.getMap());
		return mv;
	}

	/*
	 * @RequestMapping(value = "/sample/openBoardWrite.do") public ModelAndView
	 * openBoardWrite(CommandMap commandMap, HttpServletRequest request) throws
	 * Exception { URL = request.getParameter("BOARD_CODE");
	 * 
	 * if (Integer.parseInt(URL) == 1) { BOARD_NAME = "/sample/freeboardWrite";
	 * 
	 * } else if (Integer.parseInt(URL) == 2) { BOARD_NAME =
	 * "/sample/QAboardWrite";
	 * 
	 * } else if (Integer.parseInt(URL) == 3) { BOARD_NAME =
	 * "/sample/infoboardWrite";
	 * 
	 * } else if (Integer.parseInt(URL) == 4) { BOARD_NAME =
	 * "/sample/notiboardWrite"; }
	 * 
	 * ModelAndView mv = new ModelAndView(BOARD_NAME);
	 * 
	 * return mv; }
	 * 
	 * @RequestMapping(value = "/sample/insertBoard.do") public ModelAndView
	 * insertBoard(CommandMap commandMap, HttpServletRequest request) throws
	 * Exception { ModelAndView mv = new
	 * ModelAndView("redirect:/sample/openBoardList.do");
	 * System.out.println(request.getParameter("BOARD_CODE"));
	 * System.out.println(request.getParameter("CREA_ID"));
	 * System.out.println(request.getParameter("TITLE"));
	 * sampleService.insertBoard(commandMap.getMap(), request);
	 * 
	 * return mv; }
	 * 
	 * @RequestMapping(value = "/sample/openBoardDetail.do") public ModelAndView
	 * openBoardDetail(CommandMap commandMap, HttpServletRequest request) throws
	 * Exception { URL = request.getParameter("BOARD_CODE");
	 * 
	 * if (Integer.parseInt(URL) == 0) { BOARD_NAME = "/sample/boardDetail";
	 * 
	 * } else if (Integer.parseInt(URL) == 1) { BOARD_NAME =
	 * "/sample/freeboardDetail";
	 * 
	 * } else if (Integer.parseInt(URL) == 2) { BOARD_NAME =
	 * "/sample/QAboardDetail";
	 * 
	 * } else if (Integer.parseInt(URL) == 3) { BOARD_NAME =
	 * "/sample/infoboardDetail";
	 * 
	 * } else if (Integer.parseInt(URL) == 4) { BOARD_NAME =
	 * "/sample/notiboardDetail"; }
	 * 
	 * System.out.println(BOARD_NAME); ModelAndView mv = new
	 * ModelAndView(BOARD_NAME);
	 * 
	 * Map<String, Object> map =
	 * sampleService.selectBoardDetail(commandMap.getMap()); mv.addObject("map",
	 * map.get("map")); mv.addObject("list", map.get("list"));
	 * 
	 * return mv; }
	 * 
	 * @RequestMapping(value = "/sample/openBoardUpdate.do") public ModelAndView
	 * openBoardUpdate(CommandMap commandMap, HttpServletRequest request) throws
	 * Exception { URL = request.getParameter("BOARD_CODE");
	 * 
	 * System.out.println("게시판 코드 :" + URL); System.out.println("update");
	 * 
	 * if (Integer.parseInt(URL) == 1) { BOARD_NAME = "/sample/freeboardUpdate";
	 * 
	 * } else if (Integer.parseInt(URL) == 2) { BOARD_NAME =
	 * "/sample/QAboardUpdate";
	 * 
	 * } else if (Integer.parseInt(URL) == 3) { BOARD_NAME =
	 * "/sample/infoboardUpdate";
	 * 
	 * } else if (Integer.parseInt(URL) == 4) { BOARD_NAME =
	 * "/sample/notiboardUpdate"; }
	 * 
	 * ModelAndView mv = new ModelAndView(BOARD_NAME);
	 * 
	 * Map<String, Object> map =
	 * sampleService.selectBoardDetail(commandMap.getMap()); mv.addObject("map",
	 * map.get("map")); mv.addObject("list", map.get("list"));
	 * 
	 * return mv; }
	 * 
	 * @RequestMapping(value = "/sample/updateBoard.do") public ModelAndView
	 * updateBoard(CommandMap commandMap, HttpServletRequest request) throws
	 * Exception {
	 * 
	 * ModelAndView mv = new ModelAndView("redirect:/sample/openBoardList.do");
	 * 
	 * sampleService.updateBoard(commandMap.getMap(), request);
	 * 
	 * mv.addObject("IDX", commandMap.get("IDX")); return mv; }
	 * 
	 * @RequestMapping(value = "/sample/deleteBoard.do") public ModelAndView
	 * deleteBoard(CommandMap commandMap) throws Exception { ModelAndView mv =
	 * new ModelAndView("redirect:/sample/openBoardList.do");
	 * 
	 * sampleService.deleteBoard(commandMap.getMap());
	 * 
	 * return mv; }
	 * 
	 * // 17.11.30 회원관리 시작
	 * 
	 * @RequestMapping(value = "/sample/openJoin.do") public ModelAndView
	 * openJoin(CommandMap commandMap) throws Exception { ModelAndView mv = new
	 * ModelAndView("/sample/joinForm");
	 * 
	 * return mv; }
	 * 
	 * @RequestMapping(value = "/sample/insertJoin.do") public ModelAndView
	 * insertJoin(CommandMap commandMap, HttpServletRequest request) throws
	 * Exception { ModelAndView mv = new
	 * ModelAndView("redirect:/sample/openBoardList.do");
	 * 
	 * sampleService.insertJoin(commandMap.getMap(), request);
	 * 
	 * return mv; }
	 * 
	 * @RequestMapping(value = "/sample/openlogin.do") public ModelAndView
	 * openLoin(CommandMap commandMap) throws Exception { ModelAndView mv = new
	 * ModelAndView("/sample/loginForm");
	 * 
	 * return mv; }
	 * 
	 * @RequestMapping(value = "/sample/loginCheck.do") public ModelAndView
	 * loginCheck(@ModelAttribute MemberVO vo, HttpSession session) throws
	 * Exception { boolean result = sampleService.loginCheck(vo, session);
	 * ModelAndView mv = new ModelAndView(); if (result == true) { // 로그인 성공 //
	 * main.jsp로 이동 mv.setViewName("redirect:/sample/openBoardList.do");
	 * mv.addObject("msg", "success"); } else { // 로그인 실패 // login.jsp로 이동
	 * mv.setViewName("/sample/loginForm"); mv.addObject("msg", "failure"); }
	 * return mv; }
	 * 
	 * @RequestMapping(value = "sample/logout.do") public ModelAndView
	 * logout(HttpSession session) throws Exception {
	 * 
	 * System.out.println("로그아웃"); sampleService.logout(session); ModelAndView
	 * mav = new ModelAndView();
	 * mav.setViewName("redirect:/sample/openBoardList.do");
	 * mav.addObject("msg", "logout"); return mav; }
	 * 
	 * @RequestMapping(value = "/sample/openIntro.do") public ModelAndView
	 * openIntro(CommandMap commandMap) throws Exception { ModelAndView mv = new
	 * ModelAndView("/sample/intro");
	 * 
	 * return mv; }
	 */
	/*
	 * @RequestMapping(value = "/blog/index.do") public ModelAndView
	 * openblog(CommandMap commandMap) throws Exception { ModelAndView mv = new
	 * ModelAndView("/blog/index");
	 * 
	 * return mv; }
	 */

}
