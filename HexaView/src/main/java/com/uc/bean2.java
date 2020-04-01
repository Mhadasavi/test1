package com.uc;


public class bean2 {
private String name,age,gender,mail,mobile;
private int id;
public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getAge() {
	return age;
}

public void setAge(String age) {
	this.age = age;
}

public String getGender() {
	return gender;
}

public void setGender(String gender) {
	this.gender = gender;
}

public String getMail() {
	return mail;
}

public void setMail(String mail) {
	this.mail = mail;
}

public String getMobile() {
	return mobile;
}

public void setMobile(String mobile) {
	this.mobile = mobile;
}

@Override
public String toString() {
	return "bean2 [name=" + name + ", age=" + age + ", gender=" + gender + ", mail=" + mail + ", mobile=" + mobile
			+ ", id=" + id + "]";
}

}
