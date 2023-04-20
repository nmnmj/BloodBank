package pp;

public class Patient {
	private String name, unit, mobile, bg;

	@Override
	public String toString() {
		return "Patient [name=" + name + ", unit=" + unit + ", mobile=" + mobile + ", bg=" + bg + "]";
	}

	public Patient() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Patient(String name, String unit, String mobile, String bg) {
		super();
		this.name = name;
		this.unit = unit;
		this.mobile = mobile;
		this.bg = bg;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getBg() {
		return bg;
	}

	public void setBg(String bg) {
		this.bg = bg;
	}
}
