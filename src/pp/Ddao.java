package pp;

import pp.Doner;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Ddao {

	public Connection con;
	public Connection getCon() throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/sprnew","root","5412");
	}
	
	public int newregister(Doner d) throws ClassNotFoundException, SQLException{
		con=getCon();
		String qr = "insert into doners(age, bg, email, name, password, city, state, weight) values (?,?,?,?,?,?, ?,?)";
		PreparedStatement ps = con.prepareStatement(qr);
		ps.setString(1, d.getAge());
		ps.setString(2, d.getBg());
		ps.setString(3, d.getEmail());
		ps.setString(4, d.getName());
		ps.setString(5, d.getPassword());
		ps.setString(6, d.getCity());
		ps.setString(7, d.getState());
		ps.setString(8, d.getWeight());
		int i = ps.executeUpdate();
		return i;
	}
	
	public Doner login(String email, String password) throws ClassNotFoundException, SQLException{
		con=getCon();
		String qr = "select * from doners where email=? and password=?";
		PreparedStatement ps = con.prepareStatement(qr);
		ps.setString(1, email);
		ps.setString(2, password);
		ResultSet rs = ps.executeQuery();
//		Doner d = new Doner();
//		d.setAge(rs.getString("age"));
//		d.setName(rs.getString("name"));
//		d.setEmail(rs.getString("email"));
//		d.setBg(rs.getString("bg"));
//		d.setWeight(rs.getString("weight"));
//		d.setCity(rs.getString("city"));
//		d.setState(rs.getString("state"));
//		System.out.println(d);
//		List<Doner> al = new ArrayList<Doner>();
		Doner d = new Doner();
		while(rs.next()){
			d.setAge(rs.getString("age"));
			d.setName(rs.getString("name"));
			d.setEmail(rs.getString("email"));
			d.setBg(rs.getString("bg"));
			d.setPassword(rs.getString("password"));
			d.setWeight(rs.getString("weight"));
			d.setCity(rs.getString("city"));
			d.setState(rs.getString("state"));
		}
		return d;
	}
	
	public List<Doner> alldoners() throws ClassNotFoundException, SQLException{
		con=getCon();
		String qr = "select * from doners";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(qr);
		List<Doner> al = new ArrayList<Doner>();
		while(rs.next()){
			Doner d = new Doner();
			d.setAge(rs.getString("age"));
			d.setName(rs.getString("name"));
			d.setEmail(rs.getString("email"));
			d.setBg(rs.getString("bg"));
			d.setPassword(rs.getString("password"));
			d.setWeight(rs.getString("weight"));
			d.setCity(rs.getString("city"));
			d.setState(rs.getString("state"));
			al.add(d);
		}
		return al;
	}
	
	public int nofdoners() throws ClassNotFoundException, SQLException{
		con=getCon();
		String qr = "select * from doners";
		Statement st = con.createStatement();
		int i=0;
		ResultSet rs = st.executeQuery(qr);
		while(rs.next()){
			i++;
		}
		return i;
	}
	
	public Integer apblood() throws ClassNotFoundException, SQLException{
		con=getCon();
		String qr = "select bg from doners where bg='A+'";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(qr);
		Integer i = 0;
		while(rs.next()){
			i++;
		}
		return i;
	}
	public Integer anblood() throws ClassNotFoundException, SQLException{
		con=getCon();
		String qr = "select bg from doners where bg='A-'";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(qr);
		Integer i = 0;
		while(rs.next()){
			i++;
		}
		return i;
	}
	public Integer bpblood() throws ClassNotFoundException, SQLException{
		con=getCon();
		String qr = "select bg from doners where bg='B+'";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(qr);
		Integer i = 0;
		while(rs.next()){
			i++;
		}
		return i;
	}
	public Integer bnblood() throws ClassNotFoundException, SQLException{
		con=getCon();
		String qr = "select bg from doners where bg='B-'";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(qr);
		Integer i = 0;
		while(rs.next()){
			i++;
		}
		return i;
	}
	public Integer opblood() throws ClassNotFoundException, SQLException{
		con=getCon();
		String qr = "select bg from doners where bg='O+'";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(qr);
		Integer i = 0;
		while(rs.next()){
			i++;
		}
		return i;
	}
	public Integer onblood() throws ClassNotFoundException, SQLException{
		con=getCon();
		String qr = "select bg from doners where bg='O-'";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(qr);
		Integer i = 0;
		while(rs.next()){
			i++;
		}
		return i;
	}
	public Integer abpblood() throws ClassNotFoundException, SQLException{
		con=getCon();
		String qr = "select bg from doners where bg='AB+'";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(qr);
		Integer i = 0;
		while(rs.next()){
			i++;
		}
		return i;
	}
	public Integer abnblood() throws ClassNotFoundException, SQLException{
		con=getCon();
		String qr = "select bg from doners where bg='AB-'";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(qr);
		Integer i = 0;
		while(rs.next()){
			i++;
		}
		return i;
	}
}
