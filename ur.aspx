<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ur.aspx.cs" Inherits="Demo.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link href="datatables/css/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="datatables/js/jquery.dataTables.min.js"></script>

   <script type="text/javascript">
       $(document).ready(function () {
           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
       });

       function readURL(input) {
           if (input.files && input.files[0]) {
               var reader = new FileReader();

               reader.onload = function (e) {
                   $('#imgview').attr('src', e.target.result);
               };

               reader.readAsDataURL(input.files[0]);
           }
       }

   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <center>
      
        <div class="card" style="margin:20px;">
             <div class="card-body">
                 <div class="row">
                     <div class="col">
                        <center>
                           <h4 style="background-color:teal; color:white;margin-right:500px;margin-left:500px; padding:10px; border-radius:5px;">Mesagges List.</h4>  
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
        <div class="row" style="padding:10px; background-color:azure; color:white;">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibrarydbConnectionString %>" SelectCommand="SELECT * FROM [ur]"></asp:SqlDataSource>
            <div class="col">
                <asp:GridView ID="GridView1" runat="server" Class="table table-striped table-bordered" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="NAME" SortExpression="name" />
                        <asp:BoundField DataField="email" HeaderText="EMAIL" SortExpression="email" />
                        <asp:BoundField DataField="subject" HeaderText="SUBJECT" SortExpression="subject" />
                        <asp:BoundField DataField="message" HeaderText="MESSAGE" SortExpression="message" />
                    </Columns>

                </asp:GridView>
            </div>
        </div>
                 </div>
            </div>
    </center>
</asp:Content>
