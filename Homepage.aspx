<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Demo.Homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.104.2">
    <title>Hompage</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/carousel/">


<link href="custom/assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;

      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      
      
      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      } 
    </style>

    
    <!-- Custom styles for this template -->
    <link href="custom/assets/carousel.css" rel="stylesheet">
  </head>
  <body>
    


<main>

  <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <!--<svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/></svg>-->
          <img src="custom/home/audio11.png" alt="1"  width="100%" height="130%" />
        <div class="container">
          <div class="carousel-caption text-start">
    
            <h1 style="text-shadow:2px 2px black"><i> Place where readers can call home.</i> </h1>
            <p>
                <!--<a class="btn btn-lg btn-primary" href="usersignup.aspx">Sign up today</a>-->
               

            </p>
          </div>
        </div>
      </div>
      <div class="carousel-item">
        <!--<svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/></svg>-->
          <img src="custom/home/lib.jpg" alt="2" width="100%" height="130%"/>
        <div class="container">
          <div class="carousel-caption">
        
            <h1 style="text-shadow:2px 2px black"><b><i>Browse through our most popular Books.</i></b> </h1>
            <p><a class="btn btn-lg btn-primary" href="#mrb">Browse..</a></p>
          </div>
        </div>
      </div>
      <div class="carousel-item">
       <!-- <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/></svg>-->
          <img src="custom/home/z.jpg" alt="4"  width="100%" height="130%"  preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/>
        <div class="container">
          <div class="carousel-caption text-end">
          <center>
                 <h1 style="text-shadow:2px 2px black" ><i>Bring words to life with Reader's Paradise.</i></h1>
          </center>
         
           <!-- <p><a class="btn btn-lg btn-primary" href="#">Browse gallery</a></p>--> 
          </div>
        </div>
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>


  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->

    
      <div style="color:white; ">
          <center>
              <i>
                  <u >
                   <h4 class="featurette-heading fw-normal lh-1">-WHAT WE <span class="text-muted" style="color:white;">PROVIDE-</span></h4><br /><br />
              </u>
                  </i>
             
          </center>       
      </div><br />


  <div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4" style="color:white;">
        <!--<svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>-->
            <img src="custom/images/b2.jpg" alt="b2"  width="140" height="200" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false" style="box-shadow: 5px 5px rgb(0,0,0)"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"/ <br><br><br>     
        <h2 class="fw-normal">E-Book</h2>
        <p>100's of Books at your fingertips.</p>
  
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4" style="color:white;">
        <!--<svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>-->
          <img src="custom/images/5.jpeg" alt="5"  width="140" height="200" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false" style="box-shadow: 5px 5px rgb(0,0,0)"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"/><br><br>
        <h2 class="fw-normal">Audio Book</h2>
        <p>Don't feel like reading?</p>
      
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4" style="color:white;">
        <!--<svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>-->
          <img src="custom/images/comics/naruto.jpg" alt="naruto"  width="140" height="200" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false" style="box-shadow: 5px 5px rgb(0,0,0)"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"/><br><br>
        <h2 class="fw-normal">Comics(manga..)</h2>
        <p>Spoil yourself!..</p>
   
      </div><!-- /.col-lg-4 -->

        
    </div><!-- /.row -->

      </div>



    <!-- START THE FEATURETTES -->

    <hr class="featurette-divider" style="color:snow;">

      

      <div id="mrb">
           <center>
               <I>
                   <u style="color:white;">
                       <h4 class="featurette-heading fw-normal lh-1">-OUR <span class="text-muted"> NEW ADDITIONS-</span></h4><br /><br />
                       </u>
               </I>
          
          </center>  

      </div>

    <div class="row featurette" style="color:white;margin-left:20px;">
      <div class="col-md-7">
        <h2 class="featurette-heading fw-normal lh-1">LET'S MAKE THE  <span class="text-muted">BEST INVESTMENT</span></h2><br />
        <p class="lead" style="font-size:25px">Read More And Make Success The Result Of Perfection<br />

"Today a reader, tomorrow a leader."<br />
– Margaret Fuller

</p>
      </div>
      <div class="col-md-5">
        <!--<svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>-->
        <img src="custom/images/b1.png"  class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500"    style="box-shadow: 7px 12px rgb(0,0,0)">
      </div>
    </div>

    <hr class="featurette-divider" style="color:snow;"  >

    <div class="row featurette" style="color:white;margin-left:20px;">
      <div class="col-md-7 order-md-2">
        <h2 class="featurette-heading fw-normal lh-1">Oh yeah, it’s that good. <span class="text-muted">See for yourself.</span></h2>
        <p class="lead">Another featurette? Of course. More placeholder content here to give you an idea of how this layout would work with some actual real-world content in place.</p>
      </div>
      <div class="col-md-5 order-md-1">
        <!--<svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>-->
          <img src="custom/images/7.png"  class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" style="box-shadow: 7px 12px rgb(0,0,0)">
      </div>   
    </div>

    <hr class="featurette-divider" style="color:snow;">

     <div class="row featurette" style="color:white;margin-left:20px;">
      <div class="col-md-7">
        <h2 class="featurette-heading fw-normal lh-1">LOVE? <span class="text-muted">“ I NEED A LOT OF LOVE."
</span></h2><br />
        <p class="lead" style="font-size:25px">Of course you do. Everyone does. It's funny that we never say it. It's OK to scream, 'I'm starving' in public if you are hungry; it's OK to make a fuss and say, 'I'm so sleepy', if you are tired; but somehow we cannot say, 'I need some more love.' Why can't we say it? It's just as basic a need.”<br />

"Today a reader, tomorrow a leader."<br />
– Chetan Bhagat

</p>
      </div>
      <div class="col-md-5">
        <!--<svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>-->
        <img src="custom/images/8.png"  class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500"    style="box-shadow: 7px 12px rgb(0,0,0)">
      </div>
    </div>

    <hr class="featurette-divider" style="color:snow;">



    <div class="row featurette" style="color:white;margin-left:20px;" >
      <div class="col-md-7" id="aus">
        <h2 class="featurette-heading fw-normal lh-1">ABOUT <span class="text-muted">US.</span> </h2><br />
          <h3>What</h3>
        <p class="lead">We are a place to find free public domain audio books and eBooks.

You can explore over 100,000 Kindle, ePUB, and audio books using our free bookshelves.

Our powerful search engine not only looks hard for free digital books from great sources such as Librivox, Gutenberg, Google Books, and Open Library, but also includes results from Amazon to give you the best choice.    </p>

          <br />
           <h3>Why</h3>
        <p class="lead">Our goal is to help as many people as possible find and enjoy digital books.

We wanted to build an experience that was simple, easy-to-use and accessible no matter where you are in the world.

To provide a solution that works across thousands of device and platform combinations; on mobile, tablet or desktop.    </p>
           
            <br />
          <!--<h3>Legal Stuff</h3>
        <p class="lead"> Terms and Conditons.   </p>-->
          <div class="row">
                <br /><br />

            <h3>Who</h3><br />
           <div class="col-lg-4">
            <img src="custom/images/ash.png" class="bd-placeholder-img rounded-circle" alt="b2"  width="100" height="100" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false" style="box-shadow: 3px 3px rgb(0,0,0)"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"/ <br><br><br> 
  
        <p><b>Ashwin Rajan.</b></p>
  
      </div><!-- /.col-lg-4 -->

              <div class="col-lg-4">
            <img src="custom/images/kris.png" class="bd-placeholder-img rounded-circle" alt="b2"  width="100" height="100" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false" style="box-shadow: 3px 3px rgb(0,0,0)"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"/ <br><br><br> 
  
        <p><b>Krishna S.</b></p>
  
      </div><!-- /.col-lg-4 -->


              <div class="col-lg-4">
            <img src="custom/images/team.png" class="bd-placeholder-img rounded-circle" alt="b2"  width="100" height="100" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false" style="box-shadow: 3px 3px rgb(0,0,0)"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"/ <br><br><br> 
  
        <p><b>Team.</b></p>
  
      </div><!-- /.col-lg-4 -->





          </div>

          <br />

           <h3>Legal Stuff</h3>
        <p class="lead"> Terms and Conditons.   </p>
           
      </div>
      <div class="col-md-5
        <!--<svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em"></svg>
          <img src="custom/images/lufy.jpg"  class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" style="box-shadow: 7px 12px rgb(0,0,0)">
      </div>
    </div>

    <hr class="featurette-divider">

    <!-- /END THE FEATURETTES -->

  </div><!-- /.container -->


 
</main>


    <script src="custom/assets/dist/js/bootstrap.bundle.min.js"></script>

      
  </body>
</html>

 


</asp:Content>
