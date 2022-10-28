<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="contact.aspx.cs" Inherits="Demo.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Free Contact Form :: W3layouts</title>
  <link rel="stylesheet" href="custom/css/contact.css">
  <link rel="stylesheet" href="custom/css/font-awesome.css">
</head>

<body>
  <!-- contact1 -->
  <section class="w3l-contact-1">
    <div class="contacts-9 section-gap">
      <div class="wrapper">
        <h4 class="sub-title text-center">Find us</h4>
        <h3 class="global-title text-center" style="color:white;" >Contact us</h3>
        <div class="d-grid contact-view">
          <div class="cont-details">
            <div class="cont-top">
              <div class="cont-left text-center">
                <span class="fa fa-phone text-primary"></span>
              </div>
              <div class="cont-right">
                <h6 style="color:white;" >Call Us</h6>
                <p "><a href="tel:+91 9972297297" style="color:white;" >9972297297</a></p>
              </div>
            </div>
            <div class="cont-top margin-up">
              <div class="cont-left text-center">
                <span class="fa fa-envelope-o text-primary"></span>
              </div>
              <div class="cont-right">
                <h6 style="color:white;">Email Us</h6>
                <p style="color:white;"><a href="mailto:example@mail.com" style="color:white;" class="mail">example@mail.com</a></p>
              </div>
            </div>
            <div class="cont-top margin-up">
              <div class="cont-left text-center">
                <span class="fa fa-map-marker text-primary"></span>
              </div>
              <div class="cont-right">
                <h6 style="color:white;">Address</h6>
                <p style="color:white;"> No 17 Trainer Avenue street, Karnataka, Bangalore - 560043.</p>
              </div>
            </div>
          </div>
          <div class="map-content-9">
            <form action="https://sendmail.w3layouts.com/submitForm" method="post">
              <div class="twice-two">
                <!--<input type="text" class="form-control" name="w3lName" id="w3lName" placeholder="Name" required="">-->
                   <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Name " ></asp:TextBox>
                <!--<input type="email" class="form-control" name="w3lSender" id="w3lSender" placeholder="Email"
                  required="">-->
                   <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Email" ></asp:TextBox>
              </div>
              <div class="twice">
                <!--<input type="text" class="form-control" name="w3lSubject" id="w3lSubject" placeholder="Subject"
                  required="">-->
                   <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder=" Subject" ></asp:TextBox>
              </div>
              <!--<textarea name="w3lMessage" class="form-control" id="w3lMessage" placeholder="Message"
                required=""></textarea>-->
                 <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Message" TextMode="MultiLine"></asp:TextBox>
                <br />
                <asp:Button class="btn btn-danger" ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" />
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- /contact1 -->
</body>

</html>
    <br /><br /><br /><br /><br /><br /><br /><br /><br />
</asp:Content>
