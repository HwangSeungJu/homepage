package test;

import java.util.Iterator;
import java.util.List;

import faq.FaqDAO;
import faq.FaqDTO;

public class FaqTest {

	public static void main(String[] args) {
		FaqDAO dao = new FaqDAO();
		list(dao);

	}

	private static void list(FaqDAO dao) {
		List<FaqDTO> list = dao.list();
		Iterator<FaqDTO> iter = list.iterator();
		while(iter.hasNext()){
			FaqDTO dto = iter.next();
			p(dto);
		}
		
	}

	private static void p(String string) {
		System.out.println(string);
		
	}

	private static void p(FaqDTO dto) {
		p("번호 : "+dto.getNo());
		p("제목 : "+dto.getTitle());
		p("작성자 : "+dto.getFname());
		p("등록일 : "+dto.getWdate());
		p("======================");
	}
}
