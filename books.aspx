<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="books.aspx.cs" Inherits="Demo.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <script>

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <!DOCTYPE html>
            <head>
                <meta charset="UTF-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
                <!-- font awesome cdn link  -->
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    
                <!-- custom css file link  -->
                <link href="product%20card%20popup/css/style2.css" rel="stylesheet" />
    
                <!-- custom js file link  -->
                <script src="js/script.js" defer></script>

    
                <!--Bootstrap css-->
                <link href="product%20card%20popup/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    
                <!--Bootstrap js-->
                <script src="product%20card%20popup/bootstrap/js/bootstrap.min.js"></script>
                
                <link href="fav.css" rel="stylesheet" />

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

    
            </head>

    <header>
        <nav class="navbar navbar-expand-lg bg-dark navbar-dark">
            <div class="container-fluid">
              <a class="navbar-brand" href="#">Book Category</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                  <a class="nav-link active" aria-current="page" href="#bio">E-Books</a>
                  <a class="nav-link active" href="#">Audio</a>
                  <a class="nav-link active " href="#comics">Comics</a>
                </div>
              </div>
            </div>
            
          </nav>
    </header>
    <body>

        <br><br />
         <center>
       
            <div class="card" style="margin:20px;">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4 style="  padding:10px; border-radius:5px; color:white;" class="navbar navbar-expand-lg bg-dark navbar-dark">E-Books</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibrarydbConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="True" SortExpression="book_id" />
                               
                                <asp:TemplateField>
                                    <ItemTemplate>
                                       <div class="container-fluid">
                                           <div class="row">
                                               <div class="col-lg-10">
                                               <div class="row">
                                                    <div class="col-12">
                                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("book_name") %>'></asp:Label>
                                                   </div>
                                               </div>

                                                   <div class="row">
                                                    <div class="col-12">

                                                        Author -<asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("author_name") %>'></asp:Label>

                                                        &nbsp;| Genre -
                                                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                        &nbsp;| Language -
                                                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>

                                                   </div>
                                               </div>

                                                   <div class="row">
                                                    <div class="col-12">

                                                        Publisher -
                                                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                        &nbsp;| Publish Date -
                                                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("publish_date") %>'></asp:Label>
                                                        &nbsp;| Pages -
                                                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("no_of_pages") %>'></asp:Label>
                                                        &nbsp;| Edition -
                                                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>

                                                   </div>
                                               </div>

                                                   

                                                   <div class="row">
                                                    <div class="col-12">

                                                        Description -
                                                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("book_description") %>'></asp:Label><br /><br />
                                                        <h4><i>What is it about?<br />
                                                    Mindfulness & Happiness
                                                    Journey of Awakening (1978) is a guide to establishing and solidifying a personal meditation practice. Combining insights from many spiritual traditions, it outlines a path to self-realization through meditation – offering sage advice on how to stay the course through doubt, fear, and ego traps.</i></h4>

                                                   </div>
                                                        <div style="margin-top:10px;">
                                                  
                                                  <asp:LinkButton ID="LinkButton1" class="btn btn-primary btn-lg" target="_blank" href="bookinventory/pdf/theproposal.pdf" runat="server">Read</asp:LinkButton>
                                              </div>
                                               </div>
                                           </div>

                                               <div class="col-lg-2">
                                                   <asp:Image ID="Image1" Class="img-fluid"  runat="server" ImageUrl='<%# Eval("book_img_link") %>' />   
                                                   
                                           </div>
                                             
                                               

                                           </div>
                                       </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                               
                            </Columns>
                         </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>

             <br /><br />

           <div class="card" style="margin:20px;">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                           <h4 style="  padding:10px; border-radius:5px; color:white;" class="navbar navbar-expand-lg bg-dark navbar-dark">Comic(Manga)</h4>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:elibrarydbConnectionString %>" SelectCommand="SELECT * FROM [comic_master_table]"></asp:SqlDataSource>
                     <div class="col">
                         <asp:GridView ID="GridView2" class="table table-striped table-bordered"  runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource2">
                             <Columns>
                                 <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="True" SortExpression="book_id" />


                                 <asp:TemplateField>
                                     <ItemTemplate>
                                   <div class="container-fluid">
                                       <div class="row">
                                            <div class="col-lg-10">
                                                <div class="row">
                                                    <div class="col-12">
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Size="X-Large"></asp:Label>
                                                        </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-12">
                                                        Author -
                                                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("author_name") %>'></asp:Label>
                                                        &nbsp;| Genre -
                                                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                        &nbsp;| Language -
                                                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>
                                                        </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-12">
                                                       
                                                        Publisher -
                                                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                        &nbsp;| Publish Date -
                                                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Overline="False" Text='<%# Eval("publish_date") %>'></asp:Label>
                                                        &nbsp;| Pages -
                                                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("no_of_pages") %>'></asp:Label>
                                                        &nbsp;| Edition -
                                                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>
                                                       
                                                        </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-12">
                                                        Description -
                                                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("book_description") %>'></asp:Label><br /><br />
                                                        <h4><i>What is it about?<br />
                                                    Mindfulness & Happiness
                                                    Journey of Awakening (1978) is a guide to establishing and solidifying a personal meditation practice. Combining insights from many spiritual traditions, it outlines a path to self-realization through meditation – offering sage advice on how to stay the course through doubt, fear, and ego traps.</i></h4>
                                                        </div>
                                                     <div style="margin-top:10px">
                                                  <asp:LinkButton ID="LinkButton1" class="btn btn-primary btn-lg" target="_blank" href="bookinventory/pdf/theproposal.pdf" runat="server">Read</asp:LinkButton>
                                              </div>
                                                </div>
                                       </div>

                                             <div class="col-lg-2">
                                                 <asp:Image class="img-fluid" ID="Image1" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />
                                       </div>
                                           
                                       </div>
                                       </div>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                             </Columns>
                         </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         

       </center>


           
        <br><br>




        <br /><br /><br />

                 <div class="container">

        <h4 style="  padding:10px; border-radius:5px; color:white;" class="navbar navbar-expand-lg bg-dark navbar-dark">AUDIO BOOKS.</h4>
    <br><br>
   
    
    <div class="row row-cols-1 row-cols-md-2 g-4">
        <div class="col">
          <div class="card"  style="width: 350px; margin: 50px; ">
            <img src="product%20card%20popup/images/b1.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h1 class="card-title">Wings of Fire.</h1><br>
                <div>
                    <h5>Intro:</h5>
              <center>
                <audio controls>
                    <source src="music/sample.mp3" type="audio/ogg">
                    <source src="music/sample.mp3" type="audio/mpeg">
                  </audio>
              </center>
                    </div><br />
                  <div>
                    <h5>Chap 1:</h5>
              <center>
                <audio controls>
                    <source src="music/sample.mp3" type="audio/ogg">
                    <source src="music/sample.mp3" type="audio/mpeg">
                  </audio>
              </center>
                    </div>
                  <div>
                    <h5>Chap 2:</h5>
              <center>
                <audio controls>
                    <source src="music/sample.mp3" type="audio/ogg">
                    <source src="music/sample.mp3" type="audio/mpeg">
                  </audio>
              </center>
                    </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card" style="width: 350px; margin: 50px;">
            <img src="product%20card%20popup/images/stjob.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h1 class="card-title">Steve Jobs.</h1><br>
              <div>
                    <h5>Intro:</h5>
              <center>
                <audio controls>
                    <source src="music/sample.mp3" type="audio/ogg">
                    <source src="music/sample.mp3" type="audio/mpeg">
                  </audio>
              </center>
                    </div><br />
                  <div>
                    <h5>Chap 1:</h5>
              <center>
                <audio controls>
                    <source src="music/sample.mp3" type="audio/ogg">
                    <source src="music/sample.mp3" type="audio/mpeg">
                  </audio>
              </center>
                    </div>
                  <div>
                    <h5>Chap 2:</h5>
              <center>
                <audio controls>
                    <source src="music/sample.mp3" type="audio/ogg">
                    <source src="music/sample.mp3" type="audio/mpeg">
                  </audio>
              </center>
                    </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card" style="width: 350px; margin: 50px;">
            <img src="product%20card%20popup/images/martian.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h1 class="card-title">Martian.</h1><br>
               <div>
                    <h5>Intro:</h5>
              <center>
                <audio controls>
                    <source src="music/sample.mp3" type="audio/ogg">
                    <source src="music/sample.mp3" type="audio/mpeg">
                  </audio>
              </center>
                    </div><br />
                  <div>
                    <h5>Chap 1:</h5>
              <center>
                <audio controls>
                    <source src="music/sample.mp3" type="audio/ogg">
                    <source src="music/sample.mp3" type="audio/mpeg">
                  </audio>
              </center>
                    </div>
                  <div>
                    <h5>Chap 2:</h5>
              <center>
                <audio controls>
                    <source src="music/sample.mp3" type="audio/ogg">
                    <source src="music/sample.mp3" type="audio/mpeg">
                  </audio>
              </center>
                    </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card" style="width: 350px; margin: 50px;">
            <img src="product%20card%20popup/images/fvf.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h1 class="card-title">Ford Vs Ferrari.</h1><br>
               <div>
                    <h5>Intro:</h5>
              <center>
                <audio controls>
                    <source src="music/sample.mp3" type="audio/ogg">
                    <source src="music/sample.mp3" type="audio/mpeg">
                  </audio>
              </center>
                    </div><br />
                  <div>
                    <h5>Chap 1:</h5>
              <center>
                <audio controls>
                    <source src="music/sample.mp3" type="audio/ogg">
                    <source src="music/sample.mp3" type="audio/mpeg">
                  </audio>
              </center>
                    </div>
                  <div>
                    <h5>Chap 2:</h5>
              <center>
                <audio controls>
                    <source src="music/sample.mp3" type="audio/ogg">
                    <source src="music/sample.mp3" type="audio/mpeg">
                  </audio>
              </center>
                    </div>
            </div>
          </div>
        </div>
        <div class="col">
            <div class="card" style="width: 350px; margin: 50px; ">
              <img src="product%20card%20popup/images/romance/red white and royal blue.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h1 class="card-title">Red White and Royal Blue.</h1><br>
                <div >
                    <h5>Intro:</h5>
              <center>
                <audio controls>
                    <source src="music/sample.mp3" type="audio/ogg">
                    <source src="music/sample.mp3" type="audio/mpeg">
                  </audio>
              </center>
                    </div><br />
                  <div>
                    <h5>Chap 1:</h5>
              <center>
                <audio controls>
                    <source src="music/sample.mp3" type="audio/ogg">
                    <source src="music/sample.mp3" type="audio/mpeg">
                  </audio>
              </center>
                    </div>
                  <div>
                    <h5>Chap 2:</h5>
              <center>
                <audio controls>
                    <source src="music/sample.mp3" type="audio/ogg">
                    <source src="music/sample.mp3" type="audio/mpeg">
                  </audio>
              </center>
                    </div>
              </div>
            </div>
          </div>
      </div>
    
</div>

      
    </body>
    <br />  

</asp:Content>