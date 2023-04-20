package pp;

public class Doner {
	private String name, email, password, age, weight, bg, state, city;

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public Doner() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getBg() {
		return bg;
	}

	public void setBg(String bg) {
		this.bg = bg;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	@Override
	public String toString() {
		return "Doner [name=" + name + ", email=" + email + ", password=" + password + ", age=" + age + ", weight="
				+ weight + ", bg=" + bg + ", state=" + state + ", city=" + city + "]";
	}

	public Doner(String name, String email, String bg, 
			String password, String age, String weight, String state, String city) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.age = age;
		this.weight = weight;
		this.bg = bg;
		this.city = city;
		this.state = state;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
	
}
