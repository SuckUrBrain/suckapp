package com.suckapp.data;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "PLAYER")
public class Player {
	@Id
	private String register_email;
	private String register_username;
	private String register_mobile;
	private String register_password;
	@Transient
	private String register_cpassword;
	public String getRegister_email() {
		return register_email;
	}
	public void setRegister_email(String register_email) {
		this.register_email = register_email;
	}
	public String getRegister_username() {
		return register_username;
	}
	public void setRegister_username(String register_username) {
		this.register_username = register_username;
	}
	public String getRegister_mobile() {
		return register_mobile;
	}
	public void setRegister_mobile(String register_mobile) {
		this.register_mobile = register_mobile;
	}
	public String getRegister_password() {
		return register_password;
	}
	public void setRegister_password(String register_password) {
		this.register_password = register_password;
	}
	public String getRegister_cpassword() {
		return register_cpassword;
	}
	public void setRegister_cpassword(String register_cpassword) {
		this.register_cpassword = register_cpassword;
	}
	
	
}
