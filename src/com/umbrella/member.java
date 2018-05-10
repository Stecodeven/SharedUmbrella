package com.umbrella;

public class member {
	private String name;
	private String sex;
	private String phone;
	public member(){
		
	}
	public member(String n,String s,String p){
		this.name = n;
		this.sex = s;
		this.phone = p;
	}
	public void setname(String n){
		this.name = n;
	}
	public void setsex(String n){
		this.sex = n;
	}
	public void setphone(String n){
		this.phone = n;
	}
	public String getname(){
		return this.name;
	}
	public String getsex(){
		return this.sex;
	}
	public String getphone(){
		return this.phone;
	}
	

}
