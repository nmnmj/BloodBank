<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link
	href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css'
	rel='stylesheet'
	integrity='sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC'
	crossorigin='anonymous'>
<script
	src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js'
	integrity='sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM'
	crossorigin='anonymous'></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script>
        $(document).ready(function(){
            $("#wholeBlood").show()
            $("#plasma").hide()
            $("#platelet").hide()
            $("#wb").click(()=>{
                $("#wholeBlood").show()
                $("#plasma").hide()
                $("#platelet").hide()
            })
            $("#pls").click(()=>{
                $("#plasma").show()
                $("#wholeBlood").hide()
                $("#platelet").hide()
            })
            $("#plt").click(()=>{
                $("#platelet").show()
                $("#plasma").hide()
                $("#wholeBlood").hide()
            })

        })
    </script>
<style>
* {
	margin: 0;
	padding: 0;
}

.ni:hover {
	background-color: red;
}
</style>
<body>
	<%@include file="Navbar.jsp"%>
	<!-- img -->
	<img
		src="https://www.eraktkosh.in/BLDAHIMS/bloodbank/transactions/assets/webp/updated_NewYear2022.webp"
		class="img-fluid mt-3" alt="...">





	<!-- registered and unit collected -->
	<div class="d-flex container justify-content-center mt-5">
		<div class="bg-danger "
			style="width: 25vw; height: 20vh; border-radius: 40%; text-align: center;">
			<h5 class="mt-4 text-white">Donors Registered</h5>
			<jsp:useBean id="ddao" class="pp.Ddao" />
			<%
				int i = ddao.nofdoners();
			%>
			<h5 class="mt-4 text-white"><%=i%></h5>

		</div>

	</div>
	<small class="d-flex justify-content-center container"
		style="font-weight: bolder;">Data from 31|03|2023</small>

	<!-- learn -->
	<div class="container-fluid mt-5">
		<h3 class="text-danger" style="text-align: center;">LEARN ABOUT
			DONATION</h3>
		<div class="d-flex justify-content-center ">
			<div>
				<img width="80%"
					src="https://www.eraktkosh.in/BLDAHIMS/bloodbank/transactions/assets/webp/donationFact.webp"
					class="img-fluid" alt="...">
				<h6>
					After donating blood, the body works to replenish the blood loss.
					This stimulates <br> the production of new blood cells and in
					turn, helps in maintaining good health.
				</h6>
				<button	style="width: 15%; font-size: 1.8vh;
					background-color: red; color: white;"  data-bs-toggle="modal"
							data-bs-target="#exampleModal">
					DONATE NOW
				</button>
			</div>
			<div>
				<table class="table" style="font-size: 80%;">
					<thead>
						<tr>
							<td colspan="3" style="background-color: red; color: white;">
								Compatible Blood Type Donors</td>
						</tr>
					</thead>
					<thead>
						<tr>
							<th scope="col">Blood Type</th>
							<th scope="col">Donate Blood to</th>
							<th scope="col">Recieve Blood from</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>A+</td>
							<td>A+ AB+</td>
							<td>A+ A- O+ O-</td>
						</tr>
						<tr>
							<td>O+</td>
							<td>O+ A+ B+ AB+</td>
							<td>O+ O-</td>
						</tr>
						<tr>
							<td>B+</td>
							<td>B+ AB+</td>
							<td>B+ B- O+ O-</td>
						</tr>
						<tr>
							<td>AB+</td>
							<td>AB+</td>
							<td>Everyone</td>
						</tr>
						<tr>
							<td>A-</td>
							<td>A+ A- AB+ AB-</td>
							<td>A- O-</td>
						</tr>
						<tr>
							<td>O-</td>
							<td>Everyone</td>
							<td>O-</td>
						</tr>
						<tr>
							<td>B-</td>
							<td>B+ B- AB+ AB-</td>
							<td>B- O-</td>
						</tr>
						<tr>
							<td>AB-</td>
							<td>AB+ AB-</td>
							<td>AB- A- B- O-</td>
						</tr>

					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="container-fluid "
		style="background-color: rgb(245, 238, 238); padding: 1%;">
		<div class="d-flex justify-content-center">
			<i class="fa fa-tint mt-5 text-danger d-flex justify-content-center"
				style="font-size: 5vw;"></i>
		</div>
		<div class="d-flex justify-content-center">
			<h6 style="color: red;">HOW DONATION WORKS</h6>
		</div>
	</div>

	<!-- carousel -->
	<div id="carouselExampleCaptions" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img
					src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw8PEhUPEA8VFRUVFRcVFRUVFRUVFRUXFRcXFxUVFRUYHSggGBolHRUXITEhJSkrLi4uFx8zODMtNygtLisBCgoKBQUFDgUFDisZExkrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIAMIBAwMBIgACEQEDEQH/xAAXAAEBAQEAAAAAAAAAAAAAAAAAAQIH/8QAGxABAQADAQEBAAAAAAAAAAAAAAFBofARkVH/xAAUAQEAAAAAAAAAAAAAAAAAAAAA/8QAFBEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEQMRAD8A7QABUVAAAAAAAAAQAAAFRUBQAAAAQFEAUQBRAFEUAPAFRUAAAgAAAAAAAIKAgAAAAAAAAAAhAURQAAFAFD0BAoAAAIoAAAAAAAAIKgAAAAAAAAAFAAABQAAKFABABQBFRQBFAAAAAAARUABQQVAAAAAAACAAoAAACgMrAAAoIAACgCKAAAAACACoAKgAAAAEAAAAVFAABRAFRUAABAAAAFRQAABFAQABUAFQAAAAAAAABUAURQAAUAEAoCKAIAAAAACoAoiggKCCoAAAAAAAAAAAqAKCA0AAlUoIACAAAAAoIqAAKAioCoqAoAIVUAAAEUEVFAABYJAG0AAAEAAQAAAUQAABUUBFQBQAAAEUBAAAAAAEUAQAbBAVAABAAAAAFAAAEUAQUAAAAAABAUEAAAAAA8FAVFqUAABBQQABUUAAAAAAAEBQAAAAAEVAAAAABQFggCooCAAAAAAAAAABQAAAAAAAABFAEAAAAAFABKHgDaACGAAMIAt76XtAAACkQAhO2AGFQAEAVMAC0AAqAKgAHaAFz36gAqXtAC0AH//Z"
					class="d-block w-100" height="200px" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<div class="d-flex justify-content-center">
						<!-- <i class="fa fa-inr donationWork" aria-hidden="true"></i> -->
						<i
							class="fa fa-inr donationWork text-danger d-flex justify-content-center"
							style="font-size: 3vw;"></i>
					</div>
					<div class="d-flex justify-content-center">
						<h6 style="color: black;">It Costs Nothing Give blood and
							stay healthy, Read Blood Donation Facts</h6>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<img
					src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw8PEhUPEA8VFRUVFRcVFRUVFRUVFRUXFRcXFxUVFRUYHSggGBolHRUXITEhJSkrLi4uFx8zODMtNygtLisBCgoKBQUFDgUFDisZExkrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIAMIBAwMBIgACEQEDEQH/xAAXAAEBAQEAAAAAAAAAAAAAAAAAAQIH/8QAGxABAQADAQEBAAAAAAAAAAAAAAFBofARkVH/xAAUAQEAAAAAAAAAAAAAAAAAAAAA/8QAFBEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEQMRAD8A7QABUVAAAAAAAAAQAAAFRUBQAAAAQFEAUQBRAFEUAPAFRUAAAgAAAAAAAIKAgAAAAAAAAAAhAURQAAFAFD0BAoAAAIoAAAAAAAAIKgAAAAAAAAAFAAABQAAKFABABQBFRQBFAAAAAAARUABQQVAAAAAAACAAoAAACgMrAAAoIAACgCKAAAAACACoAKgAAAAEAAAAVFAABRAFRUAABAAAAFRQAABFAQABUAFQAAAAAAAABUAURQAAUAEAoCKAIAAAAACoAoiggKCCoAAAAAAAAAAAqAKCA0AAlUoIACAAAAAoIqAAKAioCoqAoAIVUAAAEUEVFAABYJAG0AAAEAAQAAAUQAABUUBFQBQAAAEUBAAAAAAEUAQAbBAVAABAAAAAFAAAEUAQUAAAAAABAUEAAAAAA8FAVFqUAABBQQABUUAAAAAAAEBQAAAAAEVAAAAABQFggCooCAAAAAAAAAABQAAAAAAAABFAEAAAAAFABKHgDaACGAAMIAt76XtAAACkQAhO2AGFQAEAVMAC0AAqAKgAHaAFz36gAqXtAC0AH//Z"
					class="d-block w-100" height="200px" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<div class="d-flex justify-content-center">
						<!-- <i class="fa fa-beer donationWork" aria-hidden="true"></i> -->
						<i
							class="fa fa-beer donationWork text-danger d-flex justify-content-center"
							style="font-size: 3vw;"></i>
					</div>
					<div class="d-flex justify-content-center">
						<h6 style="color: black;">You will get free refreshments
							after donation Donation of blood is safe and healthy, Read Blood
							Donation Facts</h6>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<img
					src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw8PEhUPEA8VFRUVFRcVFRUVFRUVFRUXFRcXFxUVFRUYHSggGBolHRUXITEhJSkrLi4uFx8zODMtNygtLisBCgoKBQUFDgUFDisZExkrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIAMIBAwMBIgACEQEDEQH/xAAXAAEBAQEAAAAAAAAAAAAAAAAAAQIH/8QAGxABAQADAQEBAAAAAAAAAAAAAAFBofARkVH/xAAUAQEAAAAAAAAAAAAAAAAAAAAA/8QAFBEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEQMRAD8A7QABUVAAAAAAAAAQAAAFRUBQAAAAQFEAUQBRAFEUAPAFRUAAAgAAAAAAAIKAgAAAAAAAAAAhAURQAAFAFD0BAoAAAIoAAAAAAAAIKgAAAAAAAAAFAAABQAAKFABABQBFRQBFAAAAAAARUABQQVAAAAAAACAAoAAACgMrAAAoIAACgCKAAAAACACoAKgAAAAEAAAAVFAABRAFRUAABAAAAFRQAABFAQABUAFQAAAAAAAABUAURQAAUAEAoCKAIAAAAACoAoiggKCCoAAAAAAAAAAAqAKCA0AAlUoIACAAAAAoIqAAKAioCoqAoAIVUAAAEUEVFAABYJAG0AAAEAAQAAAUQAABUUBFQBQAAAEUBAAAAAAEUAQAbBAVAABAAAAAFAAAEUAQUAAAAAABAUEAAAAAA8FAVFqUAABBQQABUUAAAAAAAEBQAAAAAEVAAAAABQFggCooCAAAAAAAAAABQAAAAAAAABFAEAAAAAFABKHgDaACGAAMIAt76XtAAACkQAhO2AGFQAEAVMAC0AAqAKgAHaAFz36gAqXtAC0AH//Z"
					class="d-block w-100" height="200px" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<div class="d-flex justify-content-center">
						<!-- <i class="fa fa-clock-o donationWork" aria-hidden="true"></i> -->
						<i
							class="fa fa-clock donationWork text-danger d-flex justify-content-center"
							style="font-size: 3vw;"></i>
					</div>
					<div class="d-flex justify-content-center">
						<h6 style="color: black;">It Takes Only an Hour Donate blood
							save lives ! Read Blood Donation Facts</h6>
					</div>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
			<span class="carousel-control-prev-icon"
				style="background-color: red;" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
			<span class="carousel-control-next-icon"
				style="background-color: red;" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	
	<!-- types -->
	<div class="col-md-12  donationTypeInfoWindow text-center mt-5">
		<!-- col-md-offset-2 -->
		<header class="typeHeading">
		<h1 class="text-danger">Types of donation</h1>
		</header>
		<!-- /Header -->

		<!-- Content -->
		<div class="content">
			<p style="text-align: center;">
				The human body contains five liters of blood, which is made of
				several useful components i.e. <strong class="text-danger">Whole
					blood</strong>, <strong class="text-danger">Platelet</strong>, and <strong
					class="text-danger">Plasma</strong>.
			</p>
			<p style="text-align: center;">Each type of component has several
				medical uses and can be used for different medical treatments. your
				blood donation determines the best donation for you to make.</p>
			<p style="text-align: center;">
				For <strong class="text-danger">plasma</strong> and <strong
					class="text-danger">platelet</strong> donation you must have
				donated whole blood in past two years.
			</p>

		</div>
		<br> <br>
		<!-- "Tabs" -->
		<ul class="nav nav-tabs">
			<li id="wb" class=" active infoLink">
				<button class="nav-link text-danger ">WholeBlood ||</button>
			</li>
			<li id="pls" class=" infoLink">
				<button class="nav-link text-danger">Plasma ||</button>
			</li>
			<li id="plt" class=" infoLink">
				<button class="nav-link text-danger">Platelet ||</button>
			</li>
		</ul>

		<!-- wholeblood -->
		<div class="row tabInfo m-5" id="wholeBlood">
			<div class="col-md-4 ">

				<h3 class="text-danger">What is it?</h3>

				<p>Blood Collected straight from the donor after its donation
					usually separated into red blood cells, platelets, and plasma.</p>

				<h3 class="text-danger">Who can donate?</h3>

				<p>You need to be 18-65 years old, weigh 45kg or more and be fit
					and healthy.</p>


			</div>
			<div class="col-md-4 infoContent">
				<h3 class="text-danger">User For?</h3>

				<p>Stomach disease, kidney disease, childbirth, operations,
					blood loss, trauma, cancer, blood diseases, haemophilia, anemia,
					heart disease.</p>

				<h3 class="text-danger">Lasts For?</h3>

				<p>Red cells can be stored for 42 days.</p>

			</div>
			<div class="col-md-4 ">
				<h3 class="text-danger">How long does it take?</h3>

				<p>15 minutes to donate.</p>

				<h3 class="text-danger">How often can I donate?</h3>

				<p>Every 12 weeks</p>

			</div>
		</div>
		<!-- plasma -->
		<div class="row tabInfo m-5" id="plasma">
			<div class="col-md-4 ">

				<h3 class="text-danger">What is it?</h3>

				<p>The straw-coloured liquid in which red blood cells, white
					blood cells, and platelets float in.Contains special nutrients
					which can be used to create 18 different type of medical products
					to treat many different medical conditions.</p>

				<h3 class="text-danger">Who can donate?</h3>

				<p>You need to be 18-70 (men) or 20-70 (women) years old, weigh
					50kg or more and must have given successful whole blood donation in
					last two years.</p>


			</div>
			<div class="col-md-4 infoContent">
				<h3 class="text-danger">User For?</h3>

				<p>Immune system conditions, pregnancy (including anti-D
					injections), bleeding, shock, burns, muscle and nerve conditions,
					haemophilia, immunisations.</p>

				<h3 class="text-danger">Lasts For?</h3>

				<p>Plasma can last up to one year when frozen.</p>

			</div>
			<div class="col-md-4 ">
				<h3 class="text-danger">How does it work?</h3>

				<p>We collect your blood, keep plasma and return rest to you by
					apheresis donation.</p>

				<h3 class="text-danger">How long does it take?</h3>

				<p>15 minutes to donate.</p>

				<h3 class="text-danger">How often can I donate?</h3>

				<p>Every 2-3 weeks.</p>

			</div>
		</div>

		<!-- platelet -->
		<div class="row tabInfo m-5" id="platelet">
			<div class="col-md-4 ">

				<h3 class="text-danger">What is it?</h3>

				<p>The tiny 'plates' in blood that wedge together to help to
					clot and reduce bleeding. Always in high demand, Vital for people
					with low platelet count, like malaria and cancer patients.</p>

				<h3 class="text-danger">Who can donate?</h3>

				<p>You need to be 18-70 years old (men), weigh 50kg or more and
					have given a successful plasma donation in the past 12 months</p>


			</div>
			<div class="col-md-4 infoContent">
				<h3 class="text-danger">User For?</h3>

				<p>Cancer, blood diseases, haemophilia, anaemia, heart disease,
					stomach disease, kidney disease, childbirth, operations, blood
					loss, trauma, burns.</p>

				<h3 class="text-danger">Lasts For?</h3>

				<p>Just five days..</p>

			</div>
			<div class="col-md-4 ">
				<h3 class="text-danger">How does it work?</h3>

				<p>We collect your blood, keep platelet and return rest to you
					by apheresis donation.</p>

				<h3 class="text-danger">How long does it take?</h3>

				<p>45 minutes to donate.</p>

				<h3 class="text-danger">How often can I donate?</h3>

				<p>Every 2 weeks</p>

			</div>
		</div>

	</div>
	<!-- footer -->
	<%@include file="Footer.jsp"%>
</body>
</html>