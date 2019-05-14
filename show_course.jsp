<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
    <title>Add New Course</title>
</head>

<body>
<%@ include file="header.jsp" %>
<%
String FILENAME = "book\Java.txt";
		BufferedReader br = null;
		FileReader fr = null;

		try 
		{
			fr = new FileReader(FILENAME);
			br = new BufferedReader(fr);

			String sCurrentLine;

			while ((sCurrentLine = br.readLine()) != null) 
			{
				System.out.println("Now displaying the content of the file...");
				System.out.println(sCurrentLine);
			}
		}
		catch(FileNotFoundException e) 
			{
				System.out.println("Error creating File");
				System.err.println(""+e);
				e.printStackTrace();
			}
			catch (IOException e) 
			{
				System.out.println(""+e);
				e.printStackTrace();
			}
					
			finally 
			{
				br.close();
				fr.close();
			}
%>
<%@ include file="footer.jsp" %>
</body>
</html>