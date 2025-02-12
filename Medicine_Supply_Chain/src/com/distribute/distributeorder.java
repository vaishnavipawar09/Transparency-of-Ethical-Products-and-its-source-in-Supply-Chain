package com.distribute;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




import Blockchain.ChainConsensus;

import com.user.DBconn;

/**
 * Servlet implementation class distributeorder
 */
@WebServlet("/distributeorder")
public class distributeorder extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static int noofnode=4;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public distributeorder() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
		HttpSession session = request.getSession(false);
		String id = request.getParameter("id");
		String Medicine_No = request.getParameter("Medicine_No");
		String qty = request.getParameter("qty");
String Distribute_Email_ID=(String)session.getAttribute("Cuserid");
String Distribute_Mobile_No=(String)session.getAttribute("Cmobile");
		try {
			Connection con = DBconn.conn();

			Statement st = (Statement) con.createStatement();
			String query = "select * from medicine_info where MID='" + id
					+ "'";
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			if (rs.next()) {
				String MedicineName=rs.getString("MedicineName");
				String CompanyName=rs.getString("CompanyName");
				st.executeUpdate("insert into medicine_info_order(Distribute_Email_ID, Medicine_No,MedicineName,CompanyName,Order_Qty,MId,Distribute_Mobile_No,Status_Info) values ('"
						+ Distribute_Email_ID
						+ "','"
						+ Medicine_No
						+ "','"
						+ MedicineName
						+ "','"
						+ CompanyName
						+ "','"
						+ qty
						+ "','"
						+ id
						+ "','"
						+ Distribute_Mobile_No
						+ "','0')");
				String datainfo=Distribute_Email_ID+Medicine_No+MedicineName+CompanyName+qty+id+Distribute_Mobile_No;
			//	ptop.ptopverify(noofnode,datainfo);
				ChainConsensus.Consensus(datainfo);

			}
		} catch (Exception e) {
			System.out.println(e);
		}
		pw.println("<html><script>alert('Order Medicine Save Successfully');</script><body>");
		pw.println("");
		pw.println("</body></html>");
		response.sendRedirect("OrderShow.jsp?Order");

	}

}
