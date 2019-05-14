public class StudentReg 
{
	private String id;
	private String fname;
	private String lname;
	private String gender;
	private String bday;
	private String email;
	private	String password;
	private String address;
	private String mobile;
	private Object[] profilepic;
	
	
	public void setID() 
	{
		Random random=new Random();
		int i = random.nextInt(2000) ;//Limiting upto 2000
		id=String.valueOf(i);
	}
	public String getID() 
	{
		return id;
	}
	public String getFirstName() 
	{
		return fname;
	}
	public void setFirstName(String fname) 
	{
		this.fname = fname;
	}
	public String getLastName() 
	{
		return lname;
	}
	public void setLastName(String lname) 
	{
		this.lname = lname;
	}
	public String getgender() 
	{
		return gender;
	}
	public void setgender(String gender) 
	{
		this.gender = gender;
	}
	public String getbday() 
	{
		return bday;
	}
	public void setbday(String bday) 
	{
		this.bday = bday;
	}
	public String getEmail() 
	{
		return email;
	}
	public void setEmail(String email) 
	{
		this.email = email;
	}
	public String getPassword() 
	{
		return password;
	}
	public void setPassword(String password)
	{
		this.password = password;
	}
	public String getAddress() 
	{
		return address;
	}
	public void setAddress(String address)
	{
		this.address = address;
	}
	public String getMobile() 
	{
		return mobile;
	}
	public void setMobile(String mobile)
	{
		this.mobile = mobile;
	}
	public Object[] getProfile() 
	{
		return profilepic;
	}
	public void setProfile(Object[] inputstream)
	{
		this.inputstream = profilepic;
	}
}
