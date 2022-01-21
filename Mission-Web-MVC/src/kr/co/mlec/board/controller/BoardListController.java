package kr.co.mlec.board.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.mlec.board.vo.BoardVO;
import kr.co.mlec.controller.Controller;
import kr.co.mlec.service.BoardService;

// board/list.do(전체리스트조회) 호출되었을 때
/* 1.비즈니스 로직 수행 (DB 조회  tbl_board에서 전체게시글 조회)
 * 2.servlet에게 forward 시킬  jsp/board/list.jsp 알려줌
 * 
 */
public class BoardListController implements Controller {
	 
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) 
			throws Exception {

	 
		BoardService service = new BoardService();
		List<BoardVO> list = service.selectAllBoard();
		
		
		
		
		//list.jsp에 출력하고 싶음 ->list.jsp가 볼수 있게 해야함 ->공유영역에 등록하기
		
		
		request.setAttribute("list", list); //공유영역등록
		
		return "/jsp/board/list.jsp";

	}
}