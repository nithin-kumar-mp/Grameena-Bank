package com.personal.grameenabank;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="transaction")
public class Transaction {
	
	@Id
	private long accno;
	private long raccno;
	private int amount;
	private String status;
	private String type;
	private String date;
	
	public long getAccno() {
		return accno;
	}
	public void setAccno(long accno) {
		this.accno = accno;
	}
	public long getRaccno() {
		return raccno;
	}
	public void setRaccno(long raccno) {
		this.raccno = raccno;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	@Override
	public String toString() {
		return "Transaction [accno=" + accno + ", raccno=" + raccno + ", amount=" + amount + ", status=" + status
				+ ", type=" + type + ", date=" + date + "]";
	}
	
}
