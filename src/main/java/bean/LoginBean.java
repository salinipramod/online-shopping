package bean;  
  
public class LoginBean {  
@Override
	public String toString() {
		return "LoginBean [userName=" + userName + ", password=" + password + "]";
	}

public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

public String userName,password;  
  
} 