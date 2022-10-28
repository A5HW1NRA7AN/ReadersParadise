<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="podcast.aspx.cs" Inherits="Demo.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title></title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords"
		content="Nigh Coming Soon Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //Meta tag Keywords -->
	<!--/Style-CSS -->
	<link rel="stylesheet" href="podcast/css/style.css" type="text/css" media="all" />
	<!--//Style-CSS -->
	<!-- font-awesome-icons -->
	<link href="podcast/css/font-awesome.css" rel="stylesheet">
	<!-- //font-awesome-icons -->
</head>

<body>
	<section class="w3l-coming-soon-page">
		<div class="coming-page-info-6">
			<div class="wrapper">
				<div class="coming-block">
					<h1>Podcast <br>Coming <br>Soon</h1>
					<p>There will be something Very Awesome</p>
					<div class="countdown">
						<div class="countdown__days">
							<div class="number"></div>
							<span class>Days</span>
						</div>

						<div class="countdown__hours">
							<div class="number"></div>
							<span class>Hours</span>
						</div>

						<div class="countdown__minutes">
							<div class="number"></div>
							<span class>Minutes</span>
						</div>

						<div class="countdown__seconds">
							<div class="number"></div>
							<span class>Seconds</span>
						</div>
					</div>
				</div>
				<div class="copyright-footer">
					
					
				</div>
			</div>
		</div>
		<script src="podcast/js/jquery-3.3.1.min.js"></script>
		<script>
			(() => {
				// Specify the deadline date
				const deadlineDate = new Date('December 31, 2020 23:59:59').getTime();

				// Cache all countdown boxes into consts
				const countdownDays = document.querySelector('.countdown__days .number');
				const countdownHours = document.querySelector('.countdown__hours .number');
				const countdownMinutes = document.querySelector('.countdown__minutes .number');
				const countdownSeconds = document.querySelector('.countdown__seconds .number');

				// Update the count down every 1 second (1000 milliseconds)
				setInterval(() => {
					// Get current date and time
					const currentDate = new Date().getTime();

					// Calculate the distance between current date and time and the deadline date and time
					const distance = deadlineDate - currentDate;

					// Calculations the data for remaining days, hours, minutes and seconds
					const days = Math.floor(distance / (1000 * 60 * 60 * 24));
					const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
					const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
					const seconds = Math.floor((distance % (1000 * 60)) / 1000);

					// Insert the result data into individual countdown boxes
					countdownDays.innerHTML = days;
					countdownHours.innerHTML = hours;
					countdownMinutes.innerHTML = minutes;
					countdownSeconds.innerHTML = seconds;
				}, 1000);
			})();
        </script>



	</section>
	<!-- //coming-61-w3l-vv-section -->


</body>

</html>
</asp:Content>
