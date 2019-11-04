package project_entity;

import java.util.Date;

public class User {
	
	private Integer uid;		//用户ID
	private String name;		//用户真实姓名
	private String usex;		//用户性别
	private String login;		//用户账号
	private String password;	//用户密码
	private String phone;		//用户电话
	private String idCard;		//用户身份证号
	private Integer credit;		//消费积分（普通用户为0）
	private Integer VIPLevel;	//VIP等级(普通用户为0)
	private Date rDate;			//VIP的注册日期
	
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUsex() {
		return usex;
	}
	public void setUsex(String usex) {
		this.usex = usex;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public Integer getCredit() {
		return credit;
	}
	public void setCredit(Integer credit) {
		this.credit = credit;
	}
	public Integer getVIPLevel() {
		return VIPLevel;
	}
	public void setVIPLevel(Integer vIPLevel) {
		VIPLevel = vIPLevel;
	}
	public Date getrDate() {
		return rDate;
	}
	public void setrDate(Date rDate) {
		this.rDate = rDate;
	}
	
}
