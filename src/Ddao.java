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
		return DriverManager.getConnection("jdbc:mysqsl://localhost:3306/sprnew","root","5412");
	}
	
	public int newregister(Doner d) throws ClassNotFoundException, SQLException{
		con=getCon();
		String qr = "insert into doners values (?,?,?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(qr);
		ps.setString(1, d.getAge());
		ps.setString(2, d.getBg());
		ps.setString(3, d.getEmail());
		ps.setString(4, d.getName());
		ps.setString(5, d.getPassword());
		ps.setString(6, d.getBg());
		int i = ps.executeUpdate();
		return i;
	}
	
	public List<Doner> login(String email, String password) throws ClassNotFoundException, SQLException{
		con=getCon();
		String qr = "select * from doners where email=? and password=?";
		PreparedStatement ps = con.prepareStatement(qr);
		ps.setString(1, email);
		ps.setString(2, password);
		ResultSet rs = ps.executeQuery();
		List<Doner> al = new ArrayList<Doner>();
		while(rs.next()){
			Doner d = new Doner();
			d.setAge(rs.getString("age"));
			d.setName(rs.getString("name"));
			d.setEmail(rs.getString("email"));
			d.setBg(rs.getString("bg"));
			d.setPassword(rs.getString("password"));
			d.setWeight(rs.getString("weight"));
			al.add(d);
		}
		return al;
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
			al.add(d);
		}
		return al;
	}
	
}
