package model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class User {
	private int id;
	private String loginId;
	private String name;
	private Date birthDate;
	private String password;
	private String createDate;
	private String updateDate;

	public User(String loginId, String name) {
		this.loginId = loginId;
		this.name = name;
	}

	public User(String id, String loginId, String name, String birthDate) {
		this.id = Integer.parseInt(id);
		this.loginId = loginId;
		this.name = name;
		this.birthDate = convertDate(birthDate);
	}

	public User(String loginId, String name, String birthDate) {
		this.loginId = loginId;
		this.name = name;
		this.birthDate = convertDate(birthDate);
	}

	public User(int id, String loginId, String name, Date birthDate, String password, String createDate,
			String updateDate) {
		this.id = id;
		this.loginId = loginId;
		this.name = name;
		this.birthDate = birthDate;
		this.password = password;
		this.createDate = createDate;
		this.updateDate = updateDate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	/**
	 * Date型の日付を文字列として取得する
	 * @return
	 */
	public String getBirthDateStr() {
		String str = new SimpleDateFormat("yyyy-MM-dd").format(birthDate);
		return str;

	}


	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}

	/**
	 * 文字列の日付をDate型に変換する
	 * @param strDate
	 * @return
	 */
	private Date convertDate(String strDate) {
		try {

			SimpleDateFormat sdFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date date = sdFormat.parse(strDate);
			return date;

		} catch (ParseException e) {
			e.printStackTrace();
			return null;
		}
	}
}
