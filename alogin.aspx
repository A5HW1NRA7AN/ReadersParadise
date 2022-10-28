<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false"   CodeBehind="alogin.aspx.cs" Inherits="Demo.alogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="custom/adminlogin/css/style.css">
</head>
<body>
    <form id="form1" runat="server">
       <section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap py-5">
		      	<div class="img d-flex align-items-center justify-content-center" style="background-image: url(custom/images/admin.png);"></div>
		      	<h3 class="text-center mb-0">Welcome</h3>
		      	
						<form action="#" class="login-form">
		      		<div class="form-group">
		      			<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-user"></span></div>
		      			<!--<input type="text" class="form-control" placeholder="Username" required>-->
						  <asp:TextBox ID="TextBox2" class="form-control" runat="server"  placeholder="Admin ID" ></asp:TextBox>
		      		</div>
	            <div class="form-group">
	            	<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-lock"></span></div>
	             <!-- <input type="password" class="form-control" placeholder="Password" required>-->
					<asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="Password" TextMode="Password" ></asp:TextBox>
	            </div>
	          
	            <div class="form-group">
	            	<!--<button type="submit" class="btn form-control btn-primary rounded submit px-3">Login</button>-->
					<asp:Button ID="Button1" class="btn form-control btn-primary rounded submit px-3" runat="server" Text="Login" ValidateRequestMode="Disabled" ClientIDMode="AutoID" ViewStateMode="Enabled" />
	            </div>

							<div class="form-group">
								<asp:Button ID="Button2" class="btn form-control  btn-outline-secondary rounded submit px-3" runat="server" OnClick="Button2_Click" Text="User Login" />
							</div>
	          </form>
	          
	        </div>
				</div>
			</div>
		</div>
	</section>
		<script src="custom/adminlogin/js/jquery.min.js"></script>
  <script src="custom/adminlogin/js/popper.js"></script>
  <script src="custom/adminlogin/js/bootstrap.min.js"></script>
  <script src="custom/adminlogin/js/main.js"></script>

    </form>
</body>
</html>
