package model;

import java.io.IOException;
import java.sql.*;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Request;

public class UserDB {

	static String db = "jdbc:mysql://localhost:3306/db_mpce" ; 
	static String user ="root" ; 
	static String pwd ="" ; 
	
	static {
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	}
	
	//*************************************
	//Connection
	
	
	public static Connection getConn()
	{
		Connection cn = null ; 
		
		
		try {
			cn = DriverManager.getConnection(db , user , pwd) ;
		} catch (SQLException e) {
			
			e.printStackTrace();
		} 
		
		return cn ; 
		
		
	}
	
	//*************************************
	
	public static Vector<User> getAll(){
		
		Connection cn = getConn();
		Vector<User> vu = new Vector<User>();
		User u;
		
		String sql = "select * from user";
		

		try {
			PreparedStatement ps = cn.prepareStatement(sql);
			ResultSet r = ps.executeQuery();
			
			while(r.next()) {
				
				u = new User(r.getInt(1) , r.getString(2) , r.getString(3),r.getString(4)) ; 
				vu .add(u);			
			}
		
		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return vu;
		
	}
	
	//**************************************
	//getUser
	
	public static User getUser(int id) {
		Connection cn = getConn();
		User u = null;
		
		String sql = "select * from user where id = ?";
		
		try {
			
			PreparedStatement ps = cn.prepareStatement(sql);
			ps.setInt(1, id);
			
			ResultSet r = ps.executeQuery();
			r.next();
			u = new User(r.getInt(1) , r.getString(2) , r.getString(3),r.getString(4)) ; 
			
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return u;
		
		
	}
	
	public static User deleteUser(int id) {
		Connection cn = getConn();
		User u = null;
		
		String sql = "delete  from user where id = ?";
		
		try {
			
			PreparedStatement ps = cn.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
			

			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return u;
		
	}
	
	public static void addUser(User user)
	{
		
		Connection cn = getConn();
		
		try {
			String sql = "insert into user(nom, prenom, email) values(?, ?, ?)";
			
			PreparedStatement ps = cn.prepareStatement(sql);
			
			ps.setString(1, user.getNom());
			ps.setString(2, user.getPrenom());
			ps.setString(3, user.getEmail());
			ps.executeUpdate();
			
	
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
	public static void updateUser(User user)
	{
		
		Connection cn = getConn();
		
	String sqli = "select * from user where id = ?";
		
		try {
			
			PreparedStatement ps = cn.prepareStatement(sqli);
			ps.setInt(1, user.getId());
			
			ResultSet r = ps.executeQuery();
			r.next();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		try {
			String sql = "update user set nom = ?, prenom = ?, email = ? where id =?";
			
			PreparedStatement ps = cn.prepareStatement(sql);
			
			ps.setString(1, user.getNom());
			ps.setString(2, user.getPrenom());
			ps.setString(3, user.getEmail());
			ps.setInt(4, user.getId());
			ps.executeUpdate();
			
	
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}
		

	
	
	}
	
	
	
	
	
	
	
	
	
	
	
	

