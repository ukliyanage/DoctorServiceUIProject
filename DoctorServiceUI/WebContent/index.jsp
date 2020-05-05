<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Health Care System</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.3.1.min.js"></script>
<script src="Components/Main.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4">

				<h1 id="heading">Insert Doctor</h1>

				<form id="formDoctor" name="formDoctor">
				
					Fname:<input id="fName" name="fName" type="text"
						class="form-control form-control-sm"> <br>
						 
					Lname: <input id="lName" name="lName" type="text"
						class="form-control form-control-sm"> <br> 
				
					NIC: <input id="nic" name="nic" type="text"
						class="form-control form-control-sm"> <br> 
				
					Phone: <input id="phone" name="phone" type="number"
						class="form-control form-control-sm"> <br>
				
					Email: <input id="email" name="email" type="email" 
						class="form-control form-control-sm"> <br>
				
					Address Line 1: <input id="addressLine1" name="addressLine1" type="text"
						class="form-control form-control-sm"> <br>	
				
					Address Line 2: <input id="addressLine2" name="addressLine2" type="text"
						class="form-control form-control-sm"> <br>	
				
					Address Line 3: <input id="addressLine3" name="addressLine3" type="text"
						class="form-control form-control-sm"> <br>
				
					City: <input id="city" name="city" type="text"
						class="form-control form-control-sm"> <br>
				
					Speciality: <input id="speciality" name="speciality" type="text"
						class="form-control form-control-sm"> <br>
				
					Working Hospital (gov): <input id="workingHospital" name="workingHospital" type="text"
						class="form-control form-control-sm"> <br>
				
					Bank: <select class="form-control form-control-sm" id='bank'
						name="bank">
						<option selected value=''>--Select Bank--</option>
						<option value='BOC'>BOC</option>
						<option value='Peoples'>Peoples' Bank</option>
						<option value='Sampath'>Sampath Bank</option>
						<option value='Commercial'>Commercial Bank</option>
						<option value='HNB'>HNB</option>
						<option value='NTB'>NTB</option>
						<option value='HSBC'>HSBC</option>
						</select>
				
					Card Type: <select class="form-control form-control-sm" id='cardType'
						name="cardType">
						<option selected value=''>--Select Card Type--</option>
						<option value='Master'>Master Card</option>
						<option value='Visa'>Visa Card</option>	
						</select>
				
					Account Number: <input id="accountNumber" name="accountNumber" type="number"
						class="form-control form-control-sm"> <br>
				
					Charge: <input id="charge" name="charge" type="number"
						class="form-control form-control-sm"> <br>
						
					Username: <input id="username" name="username" type="text"
						class="form-control form-control-sm"> <br>
					
					Password: <input id="password" name="password" type="password"
						class="form-control form-control-sm"> <br>
					

					</select> <br> <input id="btnSave" name="btnSave" type="button"
						value="Save" class="btn btn-primary"> <input type="hidden"
						id="hidItemIDSave" name="hidItemIDSave" value="">
				</form>
				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>
				<br>



			</div>
			<div class="col-md-8">

				<div class="container">
					<h2>Doctors Table</h2>
					<p>Available Doctors In The System</p>
					<table class="table table-striped" id="doctorTable">
						<thead>
							<tr>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Nic</th>
								<th>Phone</th>
								<th>Email</th>
								<th>AddressL1</th>
								<th>AddressL2</th>
								<th>AddressL3</th>
								<th>City</th>
								<th>Speciality</th>
								<th>Working Hospital</th>
								<th>Bank</th>
								<th>Card Type</th>
								<th>Banc Acc No</th>
								<th>Charge</th>
								<th>Update</th>
								<th>Remove</th>
							</tr>
						</thead>
						<tbody>
							
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>



</html>