package com.DAOobj;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import bean.Userbean;

import com.Dbconnection.Dbconnect;



public class Daoaccess {
	Connection con=null;
	Userbean c=new Userbean();
	List<Userbean> l1=new ArrayList<Userbean>();
	
	public int insertion(Userbean l)
	{
		int i=0;
	try {
		
		Dbconnect db=new Dbconnect();
		con=db.connectionDb();
		Statement stmt=con.createStatement();
		String sql="insert into appguest(full_name,email_address,guestbookentry,entry_date,approved_flag) values ('"+l.getName()+"','"+l.getEmail_id()+"','"+l.getContent()+"','"+l.getDate()+"',0)";
		
		i=stmt.executeUpdate(sql);
		} catch (Exception e) {
		// TODO Auto-generated catch block
			e.printStackTrace();
		}
	return i;
	
	
	}
	
	public boolean valid(String username,String password)
	{
		Dbconnect db=new Dbconnect();
		con=db.connectionDb();
		boolean flag=false;
		String user = "guest";
		String pass = "application";
		
		if(username.equals(user) && password.equals( pass)){
			flag=true;
			System.out.println("usernane and password are guest and application");
		}
		
		return flag;
	}
	

	public ArrayList<Userbean> DataFetch()
	{
		ArrayList<Userbean> userbeanarray = new ArrayList<>();
		try {
			
			Dbconnect db=new Dbconnect();
			con=db.connectionDb();
			
			Statement stmt=con.createStatement();
			String sql="select * from appguest where approved_flag=1" ;
			ResultSet rs=stmt.executeQuery(sql);
			Userbean c = null;
			while(rs.next())
			{	
				c = new Userbean();
				c.setName(rs.getString("full_name"));
				System.out.println( c.getName() );
				c.setUser_id(rs.getString("id"));
				c.setEmail_id(rs.getString("email_address"));
				c.setContent(rs.getString("guestbookentry"));
				c.setDate(rs.getString("entry_date"));
				userbeanarray.add(c);
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return userbeanarray;		
	}
	
	public ArrayList<Userbean> DataManageFetch()
	{
		ArrayList<Userbean> userbeanarray = new ArrayList<>();
		try {
			
			Dbconnect db=new Dbconnect();
			con=db.connectionDb();
			
			Statement stmt=con.createStatement();
			String sql1="select * from appguest" ;
			ResultSet rs=stmt.executeQuery(sql1);
			Userbean c = null;
			while(rs.next())
			{	
				c = new Userbean();
				c.setName(rs.getString("full_name"));
				System.out.println( c.getName() );
				c.setUser_id(rs.getString("id"));
				c.setEmail_id(rs.getString("email_address"));
				c.setContent(rs.getString("guestbookentry"));
				c.setDate(rs.getString("entry_date"));
				userbeanarray.add(c);
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return userbeanarray;		
	}
	
	public void deletion (Userbean l)
	{
		int i;
	try {
		
		Dbconnect db=new Dbconnect();
		con=db.connectionDb();
		Statement stmt=con.createStatement();
		String sql="DELETE from appguest where id="+l.getUser_id();
		
		i=stmt.executeUpdate(sql);
		System.out.println("data deleted successfully");
		
		} catch (Exception e) {
		// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}	
	
	public void updation (Userbean l)
	{
		int i;
	try {
		
		Dbconnect db=new Dbconnect();
		con=db.connectionDb();
		Statement stmt=con.createStatement();
		String sql="Update appguest SET approved_flag=1 where id="+l.getUser_id();
		
		i=stmt.executeUpdate(sql);
		System.out.println("data updated successfully");
		
		} catch (Exception e) {
		// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}	

}


