package kr.ott.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

import kr.controller.Action;
import kr.ott.dao.OttDAO;
import kr.ott.vo.OttRankVO;
import kr.util.FileUtil;

public class OttPriceStarAction implements Action{

	private static final OttRankVO OttRankVO = null;

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//로그인 체크
		HttpSession session = request.getSession();
		Integer member_num = (Integer)session.getAttribute("member_num");
		if(member_num == null) {
			return "redirect:/member/loginForm.jsp";
		}
		
		//로그인 된 경우
		request.setCharacterEncoding("utf-8");
		int ott_num = Integer.parseInt(request.getParameter("ott_num"));
		String content = request.getParameter("content");
		OttDAO dao = OttDAO.getInstance();
		//dao.insertStar(ott_num, ott_num, ott_num, ott_num, ott_num);
		
		//
		
		return "/WEB-INF/views/ott/ottReview.jsp";
	}
}