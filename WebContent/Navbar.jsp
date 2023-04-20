

<body>
	<nav class="navbar navbar-light sticky-top">
		<div class="container">
			<a href="index.jsp" class="navbar-brand" style="color: red;"> <i
				class="fa fa-tint text-danger"></i> Rakt-Kosh
			</a>
			<div class="d-flex">
				<a href="index.jsp" class="btn ni">AboutUs</a>
				<div class="dropdown ni">
					<button class="btn dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">Looking For Blood</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="Avaibility.jsp">Blood Avaibility</a></li>
						<li><a class="dropdown-item" href="Brequests.jsp?pno=1">Requests</a></li>
					</ul>
				</div>
				<div class="dropdown ni">
					<button class="btn dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">Want to Donate Blood</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="#" data-bs-toggle="modal"
							data-bs-target="#exampleModal">Register as Donor</a></li>
						<li><a class="dropdown-item" href="#" data-bs-toggle="modal"
							data-bs-target="#exampleModal1">Donor's Login</a></li>
					</ul>
				</div>

			</div>
		</div>
	</nav>
	<!-- Register Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Register</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="Register.jsp">
						<input type="text" name="name" id="" placeholder="name*" required>
						<input type="email" name="email" id="" placeholder="email*"
							required> <input type="password" name="password" id=""
							placeholder="password*" required> <input type="text"
							name="city" id="" placeholder="city*" required> <input
							type="text" name="state" id="" placeholder="state*" required>
						<input type="number" name="age" id="" placeholder="age*" min="18"
							required> <input type="number" name="weight" id=""
							placeholder="weight*" min="45" required> <select
							name="bg" id="">
							<option>BloodGroup</option>
							<option>A+</option>
							<option>A-</option>
							<option>B+</option>
							<option>B-</option>
							<option>AB+</option>
							<option>AB-</option>
							<option>O+</option>
							<option>O-</option>
						</select>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-danger">Register</button>
				</div>
				</form>
			</div>
		</div>
	</div>

	<!-- login model -->
	<div class="modal fade" id="exampleModal1" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Login</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="Donorlogin.jsp">
						<input type="email" name="email" id="" placeholder="email*"
							required> 
						<input type="password" name="password" id=""
							placeholder="password*" required>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-danger">Login</button>
				</div>
				</form>
			</div>
		</div>
	</div>
</body>

