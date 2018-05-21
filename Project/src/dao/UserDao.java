package dao;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.DatatypeConverter;

import model.User;

public class UserDao {

	public User findByLoginInfo(String loginId, String password) {
		Connection conn = null;

		try {
			conn = DBManager.getConnection();

			String sql = "SELECT * FROM user WHERE login_id = ? and password = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);
            pStmt.setString(1, loginId);
            pStmt.setString(2, changepassword(password));
            ResultSet rs = pStmt.executeQuery();

            if(!rs.next()) {
            	return null;
            }

            String loginIdData = rs.getString("login_id");
            String nameData = rs.getString("name");
            return new User (loginIdData, nameData);

		}catch(SQLException e) {
			e.printStackTrace();
			return null;

		}finally {
			if(conn != null);{
				try {
					conn.close();
				}catch (SQLException e) {
					e.printStackTrace();
					return null;
				}
			}
		}
	}

	public User findByLoginId(String loginId) {
		Connection conn = null;

		try {
			conn = DBManager.getConnection();

			String sql = "SELECT * FROM user WHERE login_id = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);
            pStmt.setString(1, loginId);
            ResultSet rs = pStmt.executeQuery();

            if(!rs.next()) {
            	return null;
            }

            String loginIdData = rs.getString("login_id");
            String nameData = rs.getString("name");
            return new User (loginIdData,nameData);

		}catch(SQLException e) {
			e.printStackTrace();
			return null;

		}finally {
			if(conn != null);{
				try {
					conn.close();
				}catch (SQLException e) {
					e.printStackTrace();
					return null;
				}
			}
		}
	}
	public User findByUserInfo(String id) {
		Connection conn = null;

		try {
			conn = DBManager.getConnection();

			String sql = "SELECT * FROM user WHERE id = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);
            pStmt.setString(1, id);
            ResultSet rs = pStmt.executeQuery();

            if(!rs.next()) {
            	return null;
            }

            int id2 = rs.getInt ("id");
			String login_Id = rs.getString("login_id");
			String name = rs.getString("name");
			Date birthDate = rs.getDate("birth_date");
			String password = rs.getString("password");
			String createDate = rs.getString("create_date");
			String updateDate = rs.getString("update_date");

			User user = new User(id2, login_Id, name, birthDate, password, createDate, updateDate);
			return user;

		}catch(SQLException e) {
			e.printStackTrace();
			return null;

		}finally {
			if(conn != null);{
				try {
					conn.close();
				}catch (SQLException e) {
					e.printStackTrace();
					return null;
				}
			}
		}
	}

	public User findByUserUpdate(String id) {
		Connection conn = null;

		try {
			conn = DBManager.getConnection();

			String sql = "SELECT * FROM user WHERE id = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);
            pStmt.setString(1, id);
            ResultSet rs = pStmt.executeQuery();

            if(!rs.next()) {
            	return null;
            }

            int id2 = rs.getInt ("id");
			String login_Id = rs.getString("login_id");
			String name = rs.getString("name");
			Date birthDate = rs.getDate("birth_date");
			String password = rs.getString("password");
			String createDate = rs.getString("create_date");
			String updateDate = rs.getString("update_date");

			User user = new User(id2, login_Id, name, birthDate, password, createDate, updateDate);
			return user;

		}catch(SQLException e) {
			e.printStackTrace();
			return null;

		}finally {
			if(conn != null);{
				try {
					conn.close();
				}catch (SQLException e) {
					e.printStackTrace();
					return null;
				}
			}
		}
	}

	public List<User> findAll(){
		Connection conn = null;
		List<User> userList = new ArrayList <User>();

		try {
			conn = DBManager.getConnection();
			String sql = "SELECT * FROM user WHERE login_id NOT IN ('admin') ";

			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);

			while(rs.next()) {
				int id = rs.getInt ("id");
				String loginId = rs.getString("login_id");
				String name = rs.getString("name");
				Date birthDate = rs.getDate("birth_date");
				String password = rs.getString("password");
				String createDate = rs.getString("create_date");
				String updateDate = rs.getString("update_date");

				User user = new User(id, loginId, name, birthDate, password, createDate, updateDate);

				userList.add(user);
			}
		}catch (SQLException e) {
			e.printStackTrace();
			return null;
		}finally {
			if(conn != null) {
				try {
					conn.close();
				}catch (SQLException e) {
					e.printStackTrace();
					return null;
				}
			}

		}
		return userList;
	}

	public List<User> findSearchl(String loginId, String username ,Date birthday){
		Connection conn = null;
		List<User> userList = new ArrayList <User>();

		try {
			conn = DBManager.getConnection();
			String sql = "SELECT * FROM user WHERE login_id NOT IN ('admin') ";

			if(!loginId.equals("")) {
				sql += " and login_id = '" + loginId + "'";
			}
			if(!username.equals("")) {
				sql += " and LIKE %{name}% = '" + username + "'";
			}
			if(!loginId.equals("")) {
				sql += " and login_id = '" + loginId + "'";
			}

			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);

			while(rs.next()) {
				int id = rs.getInt ("id");
				String loginId2 = rs.getString("login_id");
				String name = rs.getString("name");
				Date birthDate = rs.getDate("birth_date");
				String password = rs.getString("password");
				String createDate = rs.getString("create_date");
				String updateDate = rs.getString("update_date");

				User user = new User(id, loginId2, name, birthDate, password, createDate, updateDate);

				userList.add(user);
			}
		}catch (SQLException e) {
			e.printStackTrace();
			return null;
		}finally {
			if(conn != null) {
				try {
					conn.close();
				}catch (SQLException e) {
					e.printStackTrace();
					return null;
				}
			}

		}
		return userList;
	}

	public void UserEntry(String loginId, String password, String name, String birthDate) {
		Connection conn = null;

		try {
			conn = DBManager.getConnection();

			String sql = "INSERT INTO user (login_id , password , name , birth_date, create_date, update_date ) VALUE (?,?,?,?,now(), now())";
			PreparedStatement pStmt = conn.prepareStatement(sql);
            pStmt.setString(1, loginId);
            pStmt.setString(2, changepassword(password));
            pStmt.setString(3, name);
            pStmt.setString(4, birthDate);
            pStmt.executeUpdate();


		}catch(SQLException e) {
			e.printStackTrace();

		}finally {
			if(conn != null);{
				try {
					conn.close();
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
	public void UserUpdate(String password, String name, String birthDate,String id) {
		Connection conn = null;

		try {
			conn = DBManager.getConnection();

			String sql = "UPDATE user SET password = ? , name = ?, birth_date = ?, create_date = now(), update_date = now()  WHERE id = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);
            pStmt.setString(1, changepassword(password));
            pStmt.setString(2, name);
            pStmt.setString(3, birthDate);
            pStmt.setString(4, id);
            pStmt.executeUpdate();


		}catch(SQLException e) {
			e.printStackTrace();

		}finally {
			if(conn != null);{
				try {
					conn.close();
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
	public void UserDelete(String id) {
		Connection conn = null;

		try {
			conn = DBManager.getConnection();

			String sql = "DELETE FROM user WHERE id = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);
            pStmt.setString(1, id);
            pStmt.executeUpdate();


		}catch(SQLException e) {
			e.printStackTrace();

		}finally {
			if(conn != null);{
				try {
					conn.close();
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}

	private String changepassword(String password) {
		//ハッシュ生成前にバイト配列に置き換える際のCharset
		Charset charset = StandardCharsets.UTF_8;
		//ハッシュアルゴリズム
		String algorithm = "MD5";

		//ハッシュ生成処理
		byte[] bytes = null;
		try {
			bytes = MessageDigest.getInstance(algorithm).digest(password.getBytes(charset));
		} catch (NoSuchAlgorithmException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		String result = DatatypeConverter.printHexBinary(bytes);

		return result;

	}

}
