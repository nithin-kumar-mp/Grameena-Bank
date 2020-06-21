package com.personal.grameenabank;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="users")
public class Users {
	
	@Id
	private long accno;
	private String username;
	private String password;
	private String name;
	private String email;
	private long phnno;
	private String address;
	private String branch;
	private String acctype;
	private String ifsc;
	private String createddate;
	
	public long getAccno() {
		return accno;
	}
	public void setAccno(long accno) {
		this.accno = accno;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getPhnno() {
		return phnno;
	}
	public void setPhnno(long phnno) {
		this.phnno = phnno;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getAcctype() {
		return acctype;
	}
	public void setAcctype(String acctype) {
		this.acctype = acctype;
	}
	public String getIfsc() {
		return ifsc;
	}
	public void setIfsc(String ifsc) {
		this.ifsc = ifsc;
	}
	public String getCreateddate() {
		return createddate;
	}
	public void setCreateddate(String createddate) {
		this.createddate = createddate;
	}
	
	@Override
	public String toString() {
		return "Users [accno=" + accno + ", username=" + username + ", password=" + password + ", name=" + name
				+ ", email=" + email + ", phnno=" + phnno + ", address=" + address + ", branch=" + branch + ", acctype="
				+ acctype + ", ifsc=" + ifsc + ", createddate=" + createddate + "]";
	}
	
}
