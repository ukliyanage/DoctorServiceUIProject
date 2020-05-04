$(document).ready(function() {
	if ($("#alertSuccess").text().trim() == "") {
		$("#alertSuccess").hide();
	}
	$("#alertError").hide();
	refresh();

});
// SAVE ============================================
$(document)
		.on(
				"click",
				"#btnSave",
				function(event) {
					// Clear alerts---------------------
					$("#alertSuccess").text("");
					$("#alertSuccess").hide();
					$("#alertError").text("");
					$("#alertError").hide();
					// Form validation-------------------
					var status = validateItemForm();
					if (status != true) {
						$("#alertError").text(status);
						$("#alertError").show();
						return;
					}

					var formObj = $("#formDoctor")
					var doctor = {}
					doctor["fname"] = formObj.find("#fName").val()
							.trim()
					doctor["lname"] = formObj.find("#lName").val()
							.trim()
					doctor["nic"] = formObj.find("#nic").val().trim()
					doctor["phone"] = formObj.find("#phone").val().trim()
					doctor["email"] = formObj.find("#email").val()
							.trim()
					doctor["adline1"] = formObj.find("#addressLine1").val()
							.trim()
					doctor["adline2"] = formObj.find("#addressLine2").val()
							.trim()
					doctor["adline3"] = formObj.find("#addressLine3").val().trim()
					doctor["city"] = formObj.find("#city").val().trim()
					doctor["speciality"] = formObj.find("#speciality").val().trim()
					doctor["workinghospital"] = formObj.find("#workingHospital").val()
							.trim()
					doctor["bank"] = formObj.find("#bank").val()
							.trim()
					doctor["cardtype"] = formObj.find("#cardType").val()
							.trim()
					doctor["cardno"] = formObj.find("#accountNumber").val().trim()
					doctor["charge"] = formObj.find("#charge").val().trim()
					doctor["username"] = formObj.find("#username").val().trim()
					doctor["password"] = formObj.find("#password").val().trim()
					
					

					var type = ($("#hidItemIDSave").val() == "") ? "POST"
							: "PUT";
					serviceUrl = "http://localhost:8081/DoctorService/DoctorService/Doctors/"
					if (type == "PUT") {
						serviceUrl = "http://localhost:8081/DoctorService/DoctorService/Doctors/"
								+ $("#hidItemIDSave").val().trim()
					}
					
					$.ajax({
						url : serviceUrl,
						type : type,
						data : JSON.stringify(doctor),
						contentType : "application/json",
						beforeSend : function(xhr) {
							xhr.setRequestHeader("Authorization", "Basic "
									+ btoa("admin" + ":" + "admin"));
						},
						complete : function(response, status) {
							onItemSaveComplete(response.responseText, status);
						}
					});
				});
// UPDATE==========================================
$(document)
		.on(
				"click",
				".btnUpdate",
				function(event) {
					$("#heading").text("Update Doctor")
					$("#hidItemIDSave").val(
							$(this).closest("tr").find('#hidItemIDUpdate')
									.val());
					$("#fName").val(
							$(this).closest("tr").find('td:eq(0)').text());
					$("#lName").val(
							$(this).closest("tr").find('td:eq(1)').text());
					$("#nic").val(
							$(this).closest("tr").find('td:eq(2)').text());
					$("#phone")
							.val($(this).closest("tr").find('td:eq(3)').text());
					$("#email").val(
							$(this).closest("tr").find('td:eq(4)').text());
					$("#addressLine1").val(
							$(this).closest("tr").find('td:eq(5)').text());
					$("#addressLine2").val(
							$(this).closest("tr").find('td:eq(6)').text());
					$("#addressLine3").val(
							$(this).closest("tr").find('td:eq(7)').text());
					$("#city")
							.val($(this).closest("tr").find('td:eq(8)').text());
					$("#speciality").val(
							$(this).closest("tr").find('td:eq(9)').text());
					$("#workingHospital").val(
							$(this).closest("tr").find('td:eq(10)').text());
					$("#bank").val(
							$(this).closest("tr").find('td:eq(11)').text());
					$("#cardType").val(
							$(this).closest("tr").find('td:eq(12)').text());
					$("#accountNumber")
							.val($(this).closest("tr").find('td:eq(13)').text());
					$("#charge")
					.val($(this).closest("tr").find('td:eq(14)').text());
					$("#username")
					.val($(this).closest("tr").find('td:eq(15)').text());
					$("#password")
					.val($(this).closest("tr").find('td:eq(16)').text());
	
				
				});

$(document)
		.on(
				"click",
				".btnRemove",
				function(event) {
					var r = confirm("Do you want to delete this record");
					if (r == true) {
						serviceUrl = "http://localhost:8081/DoctorService/DoctorService/Doctors/"
				//				+ $(this).data("id")
						$.ajax({
							url : serviceUrl,
							type : "DELETE",
							data : "{d_ID : " + $(this).data("id") +"}",
							contentType : "application/json",
							beforeSend : function(xhr) {
								xhr.setRequestHeader("Authorization", "Basic "
										+ btoa("admin" + ":" + "admin"));
							},
							complete : function(response, status) {
								onItemDeleteComplete(response.responseText,
										status);
								console.log(status)
							}

						});
					}
				});

// CLIENTMODEL=========================================================================
function validateItemForm() {
	// First Name
	if ($("#fName").val().trim() == "") {
		return "Insert First Name of Doctor.";
	}
	// Last Name
	if ($("#lName").val().trim() == "") {
		return "Insert Last Name of Doctor.";
	}

	// NIC-------------------------------
	if ($("#nic").val().trim() == "") {
		return "Insert NIC of Doctor.";
	}

	// Phone-------------------------------
	if ($("#phone").val().trim() == "") {
		return "Insert Contact Number.";
	}
	// Email
	if ($("#email").val().trim() == "") {
		return "Insert email Address.";
	}
	// Address Line 1
	if ($("#addressLine1").val().trim() == "") {
		return "Insert Address Line 1.";
	}

	// Address Line 2-------------------------------
	if ($("#addressLine2").val().trim() == "") {
		return "Insert  Address Line 2.";
	}

	// Address Line 3-------------------------------
	if ($("#addressLine3").val().trim() == "") {
		return "Insert  Address Line 3.";
	}
	
	// City-------------------------------
	if ($("#city").val().trim() == "") {
		return "Insert Living City of Doctor.";
	}

	// Speciality-------------------------------
	if ($("#speciality").val().trim() == "") {
		return "Insert Special Section of Doctor.";
	}
	
	// Working Hospital
	if ($("#workingHospital").val().trim() == "") {
		return "Insert Current Working Hospital.";
	}
	
	// Bank------------------------
	if ($("#bank").val().trim() == "") {
		return "Select a Bank.";
	}
	
	// Card Type------------------------
	if ($("#cardType").val().trim() == "") {
		return "Select a Card Type.";
	}
	
	// Account Number-------------------------------
	if ($("#accountNumber").val().trim() == "") {
		return "Insert Account Number.";
	}

	// Charge-------------------------------
	if ($("#charge").val().trim() == "") {
		return "Insert Doctor Charge.";
	}
	
	// Username
	if ($("#username").val().trim() == "") {
		return "Insert Username for authentication.";
	}
	
	// Password
	if ($("#password").val().trim() == "") {
		return "Insert Password for Authentication.";
	}
	
	
	// is numerical value
	var AccountNo = $("#accountNumber").val().trim();
	var Charge = $("#charge").val().trim();
	if (!$.isNumeric(AccountNo)) {
		return "Account Number should be numeric.";
	}

	if (!$.isNumeric(Charge)) {
		return "Doctor Charge should be numeric.";
	}


	return true;
}

function onItemSaveComplete(response, status) {
	if (status == "success") {
		var resultSet = JSON.parse(response);
		if (resultSet.status.trim() == "success") {
			$("#alertSuccess").text("Successfully saved.");
			$("#alertSuccess").show();
			$("#divItemsGrid").html(resultSet.data);
		} else if (resultSet.status.trim() == "error") {
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
	} else if (status == "error") {
		$("#alertError").text("Error while saving.");
		$("#alertError").show();
	} else {
		$("#alertError").text("Unknown error while saving..");
		$("#alertError").show();
	}
	$("#hidItemIDSave").val("");
	$("#formDoctor")[0].reset();
	$("#heading").text("Create Doctor");
	refresh();

}

function onItemDeleteComplete(response, status) {
	if (status == "success") {
		var resultSet = JSON.parse(response);
		if (resultSet.status.trim() == "success") {
			$("#alertSuccess").text("Successfully deleted.");
			$("#alertSuccess").show();
			$("#divItemsGrid").html(resultSet.data);
		} else if (resultSet.status.trim() == "error") {
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
	} else if (status == "error") {
		$("#alertError").text("Error while deleting.");
		$("#alertError").show();
	} else {
		$("#alertError").text("Unknown error while deleting..");
		$("#alertError").show();
	}
	refresh()
}

function viewDoctors(data) {
	$("#doctorTable tbody").empty();
	var content = ""
	$
			.each(
					data,
					function(index, obj) {
						content += "<tr><td><input id='hidItemIDUpdate' name='hidItemIDUpdate' type='hidden' value='"
								+ obj["id"] + "'>" + obj["fname"] + "</td>";
						content += "<td>" + obj["lname"] + "</td><td>"
								+ obj["nic"] + "</td><td>" + obj["phone"]
								+ "</td><td>" + obj["email"] + "</td><td>"
								+ obj["adline1"] + "</td><td>" + obj["adline2"] + "</td><td>"
								+ obj["adline3"] + "</td><td>" + obj["city"] + "</td><td>"
								+ obj["speciality"] + "</td><td>" + obj["workinghospital"] + "</td><td>"
								+ obj["bank"] + "</td><td>" + obj["cardtype"] + "</td><td>"
								+ obj["cardno"] + "</td><td>" + obj["charge"] + "</td>";
								
						content += "<td><input name='btnUpdate' type='button' value='Update' class='btnUpdate btn btn-success'></td>"
								+ "<td><input name='btnRemove' type='button' value='Remove' class='btnRemove btn btn-danger' data-id='"
								+ obj["id"] + "'>" + "</td></tr>";
					});

	$("#doctorTable tbody").append(content);
}

function refresh() {

	serviceUrl = "http://localhost:8081/DoctorService/DoctorService/Doctors/"
	$.ajax({
		dataType : 'json',
		url : serviceUrl,
		beforeSend : function(xhr) {
			xhr.setRequestHeader("Authorization", "Basic "
					+ btoa("admin" + ":" + "admin"));
		},
		success : function(data) {
			viewDoctors(data)
		}
	});

}
