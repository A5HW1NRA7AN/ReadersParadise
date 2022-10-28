<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="Demo.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br /><br />
        <div class="container">
      <div class="row">
         <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="custom/imgs/user.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Member Signup</h4>
                        </center>
                     </div>
                  </div>
               

                   <div class="row">
                     <div class="col-md-6">
                         <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name" required class="input-field"></asp:TextBox>
                        </div>
                     </div>

                      <div class="col-md-6">        
                           <label>DOB</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date of Birth" TextMode="Date" required class="input-field"></asp:TextBox>
                        </div>
                     </div>
                  </div>


                   
                   <div class="row">
                     <div class="col-md-6">
                          <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Number" required class="input-field"></asp:TextBox>
                        </div>
                     </div>

                      <div class="col-md-6">                  
                        <div class="form-group">
                             <label>Email ID</label>
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email" required class="input-field"></asp:TextBox>
                        </div>
                     </div>
                  </div>


                       
                   <div class="row">
                     <div class="col-md-4">
                         <label>State</label>
                        <div class="form-group">
                            <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">

                                <asp:ListItem Text="Select" Value="Select" />
                         
                            </asp:DropDownList>
                        </div>
                     </div>

                      <div class="col-md-4">  
                           <label>City</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="City"  required class="input-field"></asp:TextBox>
                        </div>
                     </div>

                        <div class="col-md-4">     
                             <label>Pincode</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Pincode" TextMode="Number" required class="input-field"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                   <div class="row">
                     <div class="col">
                         <label>Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Address" TextMode="MultiLine" required class="input-field" Rows="2"></asp:TextBox><br>
                        </div>
                     </div>
                  </div>


                     <div class="row">
                     <div class="col">
                         <center>
                        <span class="badge badge-pill badge-info">Login Credentials</span><br><br>
                        </center>
                     </div>
                  </div>


                     <div class="row">
                     <div class="col-md-6">
                         <label>User Id</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="User Id" required class="input-field"></asp:TextBox>
                        </div>
                     </div>

                      <div class="col-md-6">     
                          <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password"  required class="input-field"></asp:TextBox>
                        </div>
                     </div>
                  </div>


                  
                  

                  <div class="row">
                     <div class="col">
                        <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="SignUp" OnClick="Button1_Click" />
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a href="Homepage.aspx"><< Back to Home</a><br><br><br><br>
         </div>
      </div>
   </div>



</asp:Content>
