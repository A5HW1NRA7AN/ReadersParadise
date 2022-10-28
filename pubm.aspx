﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="pubm.aspx.cs" Inherits="Demo.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <link href="datatables/css/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="datatables/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript">
      $(document).ready(function () {
      
          //$(document).ready(function () {
              //$('.table').DataTable();
         // });
      
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
          //$('.table1').DataTable();
      });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br /><br />
    <div class="container">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4 style="background-color:teal; color:white; padding:5px; border-radius:5px;">Publisher Details</h4>  
                        </center>
                     </div>
                  </div>

                   <!-- <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="custom/imgs/publisher.png"/>
                        </center>
                     </div>
                  </div>-->
               
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
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Author ID " ></asp:TextBox>
                            <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="Go" OnClick="Button2_Click" />
                        </div> 
                        </div>
                     </div>

                      <div class="col-md-8">         
                            <label>Publisher Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Author Name"  ></asp:TextBox>
                        </div>
                     </div>
                  </div>


                   
              

                  
                  

                  <div class="row">
                     <div class="col-4">
                         <asp:Button class="btn btn-lg btn-block btn-success"  ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />  
                     </div>

                       <div class="col-4">
                         <asp:Button class="btn btn-lg btn-block btn-warning"  ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />  
                     </div>

                       <div class="col-4">
                         <asp:Button class="btn btn-lg btn-block btn-danger"  ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />  
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
                           <h4 style="background-color:teal; color:white; padding:6px; border-radius:5px;">Publisher List</h4>  
                        </center>
                     </div>
                  </div>
                 
               
                      <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>

                    <div class="row">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibrarydbConnectionString %>" SelectCommand="SELECT * FROM [publisher_master_tbl]"></asp:SqlDataSource>
                     <div class="col">
                         <asp:GridView Class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="publisher_id" DataSourceID="SqlDataSource1">
                             <Columns>
                                 <asp:BoundField DataField="publisher_id" HeaderText="PUBLISHER ID" ReadOnly="True" SortExpression="publisher_id" />
                                 <asp:BoundField DataField="publisher_name" HeaderText="PUBLISHER NAME" SortExpression="publisher_name" />
                             </Columns>
                         </asp:GridView>
                     </div>
                  </div>


               </div>
            </div>

          </div>
      </div>
   </div>


</asp:Content>
