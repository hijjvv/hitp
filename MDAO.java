package tp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MDAO {

	
	final String JDBC_DRIVER = "org.h2.Driver";
	final String JDBC_URL = "jdbc:h2:tcp://localhost/~/jwbookdb";
	
	//DB 연결을 하는 메서드,
	
	public Connection open() {
		Connection conn = null;
		
		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(JDBC_URL,"jwbook","1234");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	
	
	public void addUser(UserDo u) throws Exception {
		
		Connection conn = open();
		
		String sql = "insert into USER(ID,PW,EMAIL,NAME) values (?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		try(conn;pstmt) {
			pstmt.setString(1, u.getId());
			pstmt.setString(2, u.getPw());
			pstmt.setString(3, u.getEmail());
			pstmt.setString(4, u.getName());
			pstmt.executeUpdate();
		}
		
	}
	
	
	public int login(String id,String pw) {
		
	Connection conn = open();
		
    String sql = "SELECT pw from user where id= ? ";
	try {
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,  id);
		ResultSet rs = pstmt.executeQuery();
		
		if (rs.next()) {
			
			if (rs.getString("pw").equals(pw)) {
				return 1; // 로그인 성공
			} else {
				return 0; // 비밀번호 불일치
			}
			
		
		} return -1; //아이디가 없음
		
		}catch (SQLException e) {
		}
	return -2;
		
	}
	
	
	public int selectOne(String userid) {
		Connection conn = open();
		
		String sql = "select id from user where id =?";
		
		
		

		try {
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			ResultSet rs = pstmt.executeQuery();
			
			
			if (rs.next()) {
				if (rs.getString("id").equals(userid)) {
					return 1; //중복
				} else {
					return 0; //비중복
				}
			

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0; //오류
	}
	
	
	public List<Board> getAll() throws Exception {
		Connection conn = open();
		List<Board> boardList = new ArrayList<>();
		
		String sql = "select AID, TITLE, PARSEDATETIME(date,'yyyy-MM-dd') as cdate , count from board;";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		try(conn; pstmt; rs) {
			while(rs.next()) {
				Board n = new Board();
				n.setAid(rs.getInt("aid"));
				n.setTitle(rs.getString("title"));
				n.setDate(rs.getString("cdate"));
				n.setCount(rs.getInt("count"));
				boardList.add(n);
			}
			return boardList;
		}
	}
	//게시글 한 개를 클릭했을 때 세부 내용을 보여주는 메서드
	public Board getBoard(int aid) throws SQLException {
		Connection conn = open();
		Board n = new Board();
		String sql = "select aid, title, img, PARSEDATETIME(date,'yyyy-MM-dd') as cdate, content from board where aid=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, aid);
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		
		try(conn; pstmt; rs) {
			n.setAid(rs.getInt("aid"));
			n.setTitle(rs.getString("title"));
			n.setImg(rs.getString("img"));
			n.setDate(rs.getString("cdate"));
			n.setContent(rs.getString("content"));
			pstmt.executeQuery();
			return n;
		}
	}
	//게시글 추가 메서드
	public void addBoard(Board n) throws Exception {
		Connection conn = open();
		String sql = "insert into board(title,img,date,content,count) values(?,?,CURRENT_TIMESTAMP(),?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		try(conn; pstmt) {
			pstmt.setString(1,  n.getTitle());
			pstmt.setString(2,  n.getImg());
			pstmt.setString(3,  n.getContent());
			pstmt.setInt(4,  0);
			pstmt.executeUpdate();	
		}
	}
	//게시글 삭제 메서드
	public void delBoard(int aid) throws SQLException {
		Connection conn = open();
		String sql = "delete from board where aid=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		try(conn; pstmt) {
			pstmt.setInt(1, aid);
			if(pstmt.executeUpdate() == 0) {
				throw new SQLException("DB에러");
			}
		}
	}
	
	
	//뉴스 수정 메서드
	public void updateBoard(Board n) throws Exception {
		Connection conn = open();
		String sql = "UPDATE board SET title=?, content=? WHERE aid=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
			
			try(conn; pstmt) {
				pstmt.setString(1,  n.getTitle());
				pstmt.setString(2,  n.getContent());
				pstmt.setInt(3, n.getAid());
				pstmt.executeUpdate();	
			}
		
	}
	
	//조회수 증가 메서드
	public void updateCount(int aid) throws SQLException {		
		Connection conn = open();
		String sql = "UPDATE BOARD SET COUNT = COUNT + 1 WHERE AID=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);

		try(conn; pstmt) {
			pstmt.setInt(1, aid);			
			if(pstmt.executeUpdate() == 0) {
				throw new SQLException("조회수 에러");
			}			
		}				
	}
	
	
	
}
