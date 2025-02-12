package com.user;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBconn {

	public static String filepath="F:\\BE2021-2022\\D.Y.patil\\QRCode";
	public static String newfilepath="F:/BE2021-2022/D.Y.patil/QRCode";
	public static String PrevHash1=null,PrevHash2=null,PrevHash3=null,PrevHash4=null;
	public static int blockchain1msg=0,blockchain2msg=0,blockchain3msg=0,blockchain4msg=0;
	public static Connection conn() throws ClassNotFoundException, SQLException
	{
		Connection con;
		 Class.forName("com.mysql.jdbc.Driver");
		  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine_supply_chain","root","admin");
		   
	return con;
	}
	public static Connection conn1() throws SQLException, ClassNotFoundException {
		Connection con;
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blockchain1", "root", "admin");

		return (con);

	}
	public static Connection conn2() throws SQLException, ClassNotFoundException {
		Connection con;
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blockchain2", "root", "admin");

		return (con);

	}
	public static Connection conn3() throws SQLException, ClassNotFoundException {
		Connection con;
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blockchain3", "root", "admin");

		return (con);

	}
	public static Connection conn4() throws SQLException, ClassNotFoundException {
		Connection con;
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blockchain4", "root", "admin");

		return (con);

	}
}
