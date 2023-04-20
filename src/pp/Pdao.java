package pp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Pdao {
	public Connection con;
	public Connection getCon() throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/sprnew","root","5412");
	}
	public int newregister(Patient d) throws ClassNotFoundException, SQLException{
		con=getCon();
		String qr = "insert into bloodrequirement(bg, name, mobile, unit) values (?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(qr);
		ps.setString(1, d.getBg());
		ps.setString(2, d.getName());
		ps.setString(3, d.getMobile());
		ps.setString(4, d.getUnit());
		
		int i = ps.executeUpdate();
		return i;
	}
	
	public List<Patient> allrequirement() throws ClassNotFoundException, SQLException{
		con=getCon();
		String qr = "select * from bloodrequirement";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(qr);
		List<Patient> al = new ArrayList<Patient>();
		while(rs.next()){
			Patient d = new Patient();
			d.setName(rs.getString("name"));
			d.setBg(rs.getString("bg"));
			d.setUnit(rs.getString("unit"));
			al.add(d);
		}
		
		return al;
	}
	public List<Patient> showbypage(int s, int i) throws ClassNotFoundException, SQLException{
		con=getCon();
		String qr = "select * from bloodrequirement limit "+s+","+i;
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(qr);
		List<Patient> al = new ArrayList<Patient>();
		while(rs.next()){
			Patient d = new Patient();
			d.setName(rs.getString("name"));
			d.setBg(rs.getString("bg"));
			d.setUnit(rs.getString("unit"));
			al.add(d);
		}
		
		return al;
	}
}
