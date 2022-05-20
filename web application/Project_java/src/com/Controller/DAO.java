package com.Controller;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.Controller.VO;

public class DAO {
	Connection conn = null;
	PreparedStatement pst = null;
	int cnt = 0;
	ResultSet rs = null;
	VO vo = null;

	public void getConn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";
			System.out.println("연결성공");
			conn = DriverManager.getConnection(url, dbid, dbpw);
			// url을 통해서 DB에 접근한뒤 DBID와 DBPW를 인증받는 절차
			// 성공적으로 인증을 받으면 Connection(DB조작 )객체를 리턴

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void close() {
		try {
			pst.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public int insert(String id, String pw, String iherbId, String iherbPw, String phone, String gender, String birth) {
		try {
			getConn();

			String sql = "insert into MBR values(?,?,?,?,?,?,?)";
			pst = conn.prepareStatement(sql);
			// DB에 명령하려고 하는 SQL문에 오류가 없는지 검사.
			pst.setString(1, id);
			pst.setString(2, pw);
			pst.setString(3, iherbId);
			pst.setString(4, iherbPw);
			pst.setString(5, phone);
			pst.setString(6, gender);
			pst.setString(7, birth);

			cnt = pst.executeUpdate();
			// sql문을 실행하는 단계// 명령 후 처리

		} catch (Exception e) {
			e.printStackTrace();
		} finally {// 모든 예외처리가 끝난 후 명령
			close();

		}
		return cnt;

	}

	public int delete(String id) {

		try {
			getConn();

			String sql = "delete from MBR where id=?";
			pst = conn.prepareStatement(sql);
			// DB에 명령하려고 하는 SQL문에 오류가 없는지 검사.
			pst.setString(1, id);

			cnt = pst.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {// 모든 예외처리가 끝난 후 명령

			close();

		}
		return cnt;

	}

	public int update(String id, String pw, String phone) {

		try {
			getConn();

			String sql = "update MBR set pw = ?,phone =? where id = ?";

			pst = conn.prepareStatement(sql);
			// DB에 명령하려고 하는 SQL문에 오류가 없는지 검사.

			pst.setString(1, pw);
			pst.setString(2, phone);
			pst.setString(3, id);

			cnt = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {// 모든 예외처리가 끝난 후 명령
			// 모든 명령이 끝난 후 연결종료.
			close();

		}
		return cnt;
	}

	public VO select(String id) {
		String pw;
		String iherbId;
		String iherbPw;
		String phone;
		String gender;
		String birth;

		VO vo = null;

		try {
			getConn();
			pst = conn.prepareStatement("select * from MBR where ID=?");
			// DB에 명령하려고 하는 SQL문에 오류가 없는지 검사.
			pst.setString(1, id);
			rs = pst.executeQuery();
			while (rs.next()) {
				id = rs.getString(1);
				pw = rs.getString(2);
				iherbId = rs.getString(3);
				iherbPw = rs.getString(4);
				phone = rs.getString(5);
				gender = rs.getString(6);
				birth = rs.getString(7);
				vo = new VO(id, pw, iherbId, iherbPw, phone, gender, birth);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			close();

		}
		return vo;

	}

	public VO login(String id, String pw) {

		VO vo = null;

		try {
			getConn();

			String sql = "select * from MBR where id = ?";

			pst = conn.prepareStatement(sql);

			pst.setString(1, id); // 물음표에 대입할 변수 지정

			ResultSet rs = pst.executeQuery();

			if (rs.next()) {
				String get_pw = rs.getString(2); // () : db에서 가져올 컬럼의 순서를 의미
				String iherbId = rs.getString(3);
				String iherbPw = rs.getString(4);
				String phone = rs.getString(5);
				String gender = rs.getString(6);
				String birth = rs.getString(7);

				if (pw.equals(get_pw)) { // 로그인에 성공했을 때
					// session이라는 공간에 로그인에 성공한 사람의 id값을 저장

					vo = new VO(id, pw, iherbId, iherbPw, phone, gender, birth);

				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return vo;
	}

	public boolean memberSelect(String id) {
		boolean check = true;
		try {
			getConn();

			String sql = "select * from MBR where id = ?";

			pst = conn.prepareStatement(sql);

			pst.setString(1, id); // 물음표에 대입할 변수 지정

			ResultSet rs = pst.executeQuery();

			if (rs.next()) {
				check = true;
			} else {
				check = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return check;
	}

	public ArrayList<VO> select() {

		VO vo = null;

		ArrayList<VO> arr = new ArrayList<VO>();

		try {
			getConn();

			String sql = "select * from MBR";

			pst = conn.prepareStatement(sql);
			// java ---(sql)--- DB <-sql문에 오류 있는지 확인, 오류 있으면 콘솔창에 오류뜸

			ResultSet rs = pst.executeQuery();
			// select : executeQuery() -> DB가 검색한 정보 담김(id에 해당하는 행)
			// insert, delete, update : executeUpdate() -> cnt 개수가 담김

			// response.setContentType("text/html;charset=euc-kr"); -> 이미 지시자에서 선언됨
			// PrintWriter out = response.getWriter(); -> jsp파일 내장객체

			while (rs.next()) { // rs에 담긴 데이터의 개수를 모를 때는 while문 사용

				String id = rs.getString(1);
				String pw = rs.getString(2);
				String iherbId = rs.getString(3);
				String iherbPw = rs.getString(4);
				String phone = rs.getString(5);
				String gender = rs.getString(6);
				String birth = rs.getString(7);

				vo = new VO(id, pw, iherbId, iherbPw, phone, gender, birth);

				arr.add(vo);

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return arr;
	}

	public ArrayList<VO> basketSelect(String id) {
		ArrayList<VO> vo = new ArrayList<VO>();

		try {
			getConn();

			String sql = "select pcode, img_url, title, price from drug where pcode in ( SELECT pcode from ordered where next_date_purchase = to_char(sysdate,'yyyy-mm-dd') AND ID = ?)";

			pst = conn.prepareStatement(sql);

			pst.setString(1, id); // 물음표에 대입할 변수 지정

			ResultSet rs = pst.executeQuery();

			while(rs.next()) {
				String pcode = rs.getString(1);
				String img_url = rs.getString(2);
				String title = rs.getString(3);
				int price = rs.getInt(4);

				vo.add(new VO(pcode, img_url, title,price));

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return vo;
	}
	
	public ArrayList<VO> recomSelect(String id) {
		ArrayList<VO> vo = new ArrayList<VO>();

		try {
			getConn();

			String sql = "SELECT pcode, img_url,title,price,url FROM drug WHERE pcode IN (SELECT pcode FROM recom WHERE id=?)";

			pst = conn.prepareStatement(sql);

			pst.setString(1, id); // 물음표에 대입할 변수 지정

			ResultSet rs = pst.executeQuery();

			while(rs.next()) {
				String pcode = rs.getString(1);
				String img_url = rs.getString(2);
				String title = rs.getString(3);
				int price = rs.getInt(4);
				String url = rs.getString(5);

				vo.add(new VO(pcode, img_url, title,price,url));

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return vo;
	}
	
}