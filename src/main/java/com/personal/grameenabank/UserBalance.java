package com.personal.grameenabank;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="userbalance")
public class UserBalance {
	
	@Id
	private long accno;
	private int balance;
	private String date;
	
	public long getAccno() {
		return accno;
	}
	public void setAccno(long accno) {
		this.accno = accno;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	@Override
	public String toString() {
		return "UserBalance [balance=" + balance + ", date=" + date + "]";
	}
	
}
