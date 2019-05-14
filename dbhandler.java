import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import StudentReg;

public class StudReg
{
	private static PreparedStatement ps = null;
	private static Connection conn = null;
	String URL = "jdbc:mysql://localhost:3307/edulearn";
	String USERNAME = "root";
	String PASSWORD = "root";
	public void getConnection()
	{
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		}
		catch(Exception e)
		{
			System.out.println("Class not found");
		}
	}
	
	public void getDatabaseConnection()
	{
		try
		{
			conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
		}
		catch(Exception e)
		{
			System.out.println("Connection error");
		}
	}
	
	public int executeQuery(StudentReg obj)
	{
		try
		{
			if(conn != null)
			{	
				String sql="INSERT INTO students VALUES(?,?,?,?,?,?,?,?,?,?)";
					PreparedStatement statement = conn.prepareStatement(sql);
					statement.setString(1, obj.getID());
					statement.setString(2, obj.getFirstName());
					statement.setString(3, obj.getLastName());
					statement.setString(4, obj.getgender());
					statement.setString(5, obj.getbday());
					statement.setString(6, obj.getEmail());
					statement.setString(7, obj.getPassword());
					statement.setString(8, obj.getAddress());
					statement.setString(9, obj.getMobile());
					statement.setBlob(10, inputStream);
				rows = ps.executeUpdate();
			}
			else
				System.out.println("Connection null");
			return i;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println("Query error");
			return i;
		}
	}
	
	public void close()
	{
		try
		{
			ps.close();
			conn.close();	
		}
		catch(Exception e)
		{
			System.out.println("Closing error");
		}
	}

}
