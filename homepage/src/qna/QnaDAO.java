package qna;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import utility.DBOpen;

public class QnaDAO {
	public List<QnaDTO> list(){
		List<QnaDTO> list = new ArrayList<QnaDTO>();
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuffer sql = new StringBuffer();
		
		
		return list;
	}
}
