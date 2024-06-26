﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminpublisherman.aspx.cs" Inherits="Demo.adminpublisherman" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
      <br />
      <br />
      <br />
     <div class="container">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Publisher Details</h4>  
                        </center>
                     </div>
                  </div>

                    <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="custom/imgs/publisher.png"/>
                        </center>
                     </div>
                  </div>
               
                      <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
               

                   <div class="row">
                     <div class="col-md-4">
                         <label>Publisher ID</label>
                        <div class="form-group">
                                   <div class="input-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Author ID " required class="input-field"></asp:TextBox>
                            <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="Go" />
                        </div> 
                        </div>
                     </div>

                      <div class="col-md-8">         
                            <label>Publisher Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Author Name"  required class="input-field"></asp:TextBox>
                        </div>
                     </div>
                  </div>


                   
              

                  
                  

                  <div class="row">
                     <div class="col-4">
                         <asp:Button class="btn btn-lg btn-block btn-success"  ID="Button1" runat="server" Text="Add" />  
                     </div>

                       <div class="col-4">
                         <asp:Button class="btn btn-lg btn-block btn-warning"  ID="Button3" runat="server" Text="Update" />  
                     </div>

                       <div class="col-4">
                         <asp:Button class="btn btn-lg btn-block btn-danger"  ID="Button4" runat="server" Text="Delete" />  
                     </div>
                  </div>
               </div>
            </div>
            <a href="Homepage.aspx"><< Back to Home</a><br><br><br><br>
         </div>

          <div class="col-md-7">
                
               <div class="card">
               <div class="card-body">
                    <div class="row">
                     <div class="col">
                        <center>
                           <h4>Publisher List</h4>  
                        </center>
                     </div>
                  </div>
                 
               
                      <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>

                    <div class="row">
                     <div class="col">
                         <asp:GridView Class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                     </div>
                  </div>


               </div>
            </div>

          </div>
      </div>
   </div>

</asp:Content>
