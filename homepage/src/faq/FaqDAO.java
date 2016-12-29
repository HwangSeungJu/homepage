package faq;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import faq.FaqDTO;
import utility.DBClose;
import utility.DBOpen;

public class FaqDAO {
	
	public boolean delete(int no){
		boolean flag=false;
		Connection con = DBOpen.open(); //연결객체
		PreparedStatement pstmt= null; //전송객체
		StringBuffer sql = new StringBuffer();
		sql.append(" delete from faq where no = ? ");
		
		try {
			pstmt=con.prepareStatement(sql.toString());//전송객체생성
			pstmt.setInt(1, no);
			int cnt = pstmt.executeUpdate();
			if(cnt>0) flag=true;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBClose.close(con, pstmt);
		}
		return flag;
	}
	
	public boolean update(FaqDTO dto){
		boolean flag=false;
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		StringBuffer sql = new StringBuffer();
		sql.append(" UPDATE faq ");
		sql.append(" SET fname=?, title=?, content=? ");
		sql.append(" WHERE no = ? ");
		try {
			pstmt=con.prepareStatement(sql.toString());
			pstmt.setString(1, dto.getFname());
			pstmt.setString(2, dto.getTitle());
			pstmt.setString(3, dto.getContent());
			pstmt.setInt(4, dto.getNo());
			int cnt = pstmt.executeUpdate();
			if(cnt>0) flag=true;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBClose.close(con, pstmt);
		}
		return flag;
	}
	
	
	public boolean create(FaqDTO dto){
		boolean flag = false;
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		StringBuffer sql = new StringBuffer();
		sql.append(" INSERT INTO faq(no, fname, title, content, wdate) ");
		sql.append(" VALUES((SELECT NVL(MAX(no), 0) + 1 as no FROM faq), ");
		sql.append(" ?, ?, ?, sysdate) ");
		
		try {
			pstmt=con.prepareStatement(sql.toString());
			pstmt.setString(1, dto.getFname());
			pstmt.setString(2, dto.getTitle());
			pstmt.setString(3, dto.getContent());

			int cnt = pstmt.executeUpdate();
			if(cnt>0) flag=true;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBClose.close(con, pstmt);
		}
		return flag;
	}

	public int total(String col, String word){
		int total = 0;
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuffer sql = new StringBuffer();
		sql.append(" select count(*) ");
		sql.append(" from faq ");
		if(word.trim().length()>0)
			sql.append(" where "+col+" like '%'||?||'%' ");
		
		try {
			pstmt=con.prepareStatement(sql.toString());
			if(word.trim().length()>0)
				pstmt.setString(1, word);
			
			rs = pstmt.executeQuery();
			if(rs.next()){
				total = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBClose.close(con, pstmt, rs);
		}
		
		return total;
	}
	
	public FaqDTO read(int no){
		FaqDTO dto = null;
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuffer sql = new StringBuffer();
		sql.append(" select no, fname, title, content, to_char(wdate, 'yyyy-mm-dd') wdate from faq");
		sql.append(" where no = ? ");
		try {
			pstmt=con.prepareStatement(sql.toString());
			pstmt.setInt(1, no);
			rs=pstmt.executeQuery();
			if(rs.next()){
				dto = new FaqDTO();
				dto.setNo(rs.getInt("no"));
				dto.setFname(rs.getString("fname"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setWdate(rs.getString("wdate"));
			}
				
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBClose.close(con, pstmt, rs);
		}
		
		
		return dto;
	}
	
	public List<FaqDTO> list(Map map){
		List<FaqDTO> list = new ArrayList<FaqDTO>();
		Connection con = DBOpen.open();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String col = (String)map.get("col");
		String word = (String)map.get("word");
		int sno = (Integer)map.get("sno");
		int eno = (Integer)map.get("eno");
		StringBuffer sql = new StringBuffer();
		sql.append(" select no, title, fname, wdate, r ");
		sql.append(" FROM( ");
		sql.append(" 	select no, title, fname, wdate, rownum r ");
		sql.append(" 	FROM( ");
		sql.append(" 		select no, title, fname, to_char(wdate, 'yyyy-mm-dd') wdate from faq ");
		if(word.trim().length()>0)
			sql.append(" 	where "+col+" like '%'||?||'%' ");
		sql.append(" 		order by no desc ");
		sql.append(" 		) ");
		sql.append(" )WHERE r >=? and r<=? ");
		
		try {
			pstmt = con.prepareStatement(sql.toString());
			int i = 0;
			if(word.trim().length()>0)
				pstmt.setString(++i, word);
			
			pstmt.setInt(++i, sno);
			pstmt.setInt(++i, eno);
			
			rs=pstmt.executeQuery();
			while(rs.next()){
				FaqDTO dto = new FaqDTO();
				dto.setNo(rs.getInt("no"));
				dto.setTitle(rs.getString("title"));
				dto.setFname(rs.getString("fname"));
				dto.setWdate(rs.getString("wdate"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBClose.close(con, pstmt, rs);
		}
		
		return list;
	}
}
