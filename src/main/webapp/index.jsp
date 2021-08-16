<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
.inine {
	display: inline-block;
}
</style>
<title>Amit Saini Academy (ASA)</title>
</head>
<body style="background-color: powderblue;">
	<h1 style="color: blue;">Registration Form</h1>

	<form>
		<table style="with: 50%">
			<tr>
				<td>First Name</td>
				<td><input type="text" id="firstName" name="first_name" /></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td><input type="text" id="lastName" name="last_name" /></td>
			</tr>
			<tr>
				<td>UserName</td>
				<td><input type="text" id="username" name="username" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" id="password" name="password" /></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><input type="text" id="address" name="address" /></td>
			</tr>
			<tr>
				<td>Contact No</td>
				<td><input type="text" id="contact" name="contact" /></td>
			</tr>
		</table>
		<!-- 			<input type="submit" onclick = "save()" value="Submit" /></form> -->
		</br>
		<button onclick="save()" id="btnSave" class="inner">Save
			Details</button>
	</form>

	</br>
	<button onclick="get()" id="getDetails" class="inner">Show
		Details</button>
	</br>
	<div id="r_firstname" style="color: blue;"></div>
	<div id="r_lastname" style="color: blue;"></div>
	<div id="r_username" style="color: blue;"></div>
	<div id="r_address" style="color: blue;"></div>
	<div id="r_contact" style="color: blue;"></div>
	</br>
	</br>
	<a href="radaur.html">See Radaur Town Details</a>
</body>
<script>
	// var storedItem = localStorage.getItem("storedItem");

	function save() {
		var firstName = document.getElementById("firstName").value;
		var lastName = document.getElementById("lastName").value;
		var username = document.getElementById("username").value;
		var address = document.getElementById("address").value;
		var contact = document.getElementById("contact").value;
		localStorage.setItem("firstname", firstName);
		localStorage.setItem("lastname", lastName);
		localStorage.setItem("username", username);
		localStorage.setItem("address", address);
		localStorage.setItem("contact", contact);
		window.alert("Data saved successfully");
		var x = document.getElementById("getDetails");
		x.style.display = "block";
	}
	function get() {
		document.getElementById("r_firstname").innerHTML = "First Name: "
				+ localStorage.getItem("firstname");
		document.getElementById("r_lastname").innerHTML = "Last Name: "
				+ localStorage.getItem("lastname");
		document.getElementById("r_username").innerHTML = "Username: "
				+ localStorage.getItem("username");
		document.getElementById("r_address").innerHTML = "Address: "
				+ localStorage.getItem("address");
		document.getElementById("r_contact").innerHTML = "Contact: "
				+ localStorage.getItem("contact");

	}
	function hide() {
		var x = document.getElementById("getDetails");
		x.style.display = "none";
	}
</script>
</html>