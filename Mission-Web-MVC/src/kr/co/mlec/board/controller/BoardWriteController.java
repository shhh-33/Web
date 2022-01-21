package kr.co.mlec.board.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import kr.co.mlec.board.vo.BoardFileVO;
import kr.co.mlec.board.vo.BoardVO;
import kr.co.mlec.controller.Controller;
import kr.co.mlec.service.BoardService;
import kr.co.mlec.util.SesacFileNamePolicy;

public class BoardWriteController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");

		String saveFolder = "D:\\web-workspace\\Mission-Web-MVC\\WebContent\\upload";

		MultipartRequest multi = new MultipartRequest(request, saveFolder, 1024 * 1024 * 3, "utf-8",
				new SesacFileNamePolicy());

		// 제목,작성자,내용 추출 =? tbl_board 저장
		String title = multi.getParameter("title");
		String writer = multi.getParameter("writer");
		String content = multi.getParameter("content");

		BoardVO board = new BoardVO();
		board.setTitle(title);
		board.setWriter(writer);
		board.setContent(content);

		// service.insertBoard(board);

		// 파일 여러개면 이렇게 직접입력하지 않고 받아오는 방식 쓰려고
		// multi.getFile("attachfile1");

		// 첨부파일 추출(file_ori_name , save_name, size) => tbl_board_file 저장

		List<BoardFileVO> fileList = new ArrayList<>();

		Enumeration<String> files = multi.getFileNames();
		while (files.hasMoreElements()) {
			String fileName = files.nextElement();
			// System.out.println(fileName);
			File file = multi.getFile(fileName);

			if (file != null) {
				String fileOriName = multi.getOriginalFileName(fileName);
				String fileSaveName = multi.getFilesystemName(fileName);
				int fileSize = (int) file.length();

				BoardFileVO fileVO = new BoardFileVO();
				fileVO.setFileOriName(fileOriName);
				fileVO.setFileSaveName(fileSaveName);
				fileVO.setFileSize(fileSize);

				fileList.add(fileVO);
			}
		}

		BoardService service = new BoardService();
		service.insertBoard(board, fileList);

		return "redirect:/board/list.do";
	}

}
