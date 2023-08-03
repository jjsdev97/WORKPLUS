package net.cafe.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.cafe.db.CafeItemBean;
import net.cafe.db.CafeItemDAO;

public class CafeTeaAction implements Action {

	 @Override
	    public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        CafeItemDAO idao = new CafeItemDAO();
	        List<CafeItemBean> teaItemList = idao.getTeaItems(); // 커피 메뉴 아이템들만 가져오도록 수정

	        request.setAttribute("teaItemList", teaItemList); // 커피 메뉴 아이템 리스트를 request에 저장

	        ActionForward forward = new ActionForward();
	        forward.setPath("cafe/tea.jsp");
	        forward.setRedirect(false);

	        return forward;
	    }
	}