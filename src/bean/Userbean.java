package bean;

import java.sql.Date;

public class Userbean {
	String name,user_id,content,email_id,date;
	Boolean flag; 
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}

	public Boolean getApprovedflag() {
		return flag;
	}
	public void setApprovedflag(Boolean flag) {
		this.flag = flag;
	}
	

}
