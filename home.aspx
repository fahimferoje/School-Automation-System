<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Barhatta C K P Pilot High School</title>
    <link rel="stylesheet" type="text/css" href="Home.css" >
    <style type="text/css">
      
                 #home
               {
                  position:absolute;
				  top:135px;
				  left:10px;
				  font-size:20px;
				  font-family:Lato;
				  color:whitesmoke;
               }
                 #teachers
               {
				  position:absolute;
				  top:155px;
				  left:10px;
				  font-size:20px;
				  font-family:Lato;
				  color:whitesmoke ;
			   }
                  #activities
               {
				  position:absolute;
				  top:175px;
				  left:10px;
				  font-size:20px;
				  font-family:Lato;
				  color:whitesmoke ;
			   }
                   #admission
               {
				  position:absolute;
				  top:195px;
				  left:10px;
				  font-size:20px;
				  font-family:Lato;
				  color:whitesmoke ;
			   }
                    #result
               {
				  position:absolute;
				  top:215px;
				  left:10px;
				  font-size:20px;
				  font-family:Lato;
				  color:whitesmoke;
			   }
                    #student_corner
               {
				  position:absolute;
				  top:235px;
				  left:10px;
				  font-size:20px;
				  font-family:Lato;
				  color:whitesmoke ;
			   }
                   #about 
               {
                  position:absolute;
				  top:255px;
				  left:10px;
				  font-size:20px;
				  font-family:Lato;
				  color:whitesmoke ;
               }
        body {
                background-color:darkgrey;
                background-image:url(Grey-website-background-1024x575.jpg),url(Grey-website-background-1024x575.jpg);
              
                
             }
        #h1
{
	         padding:5px;
             color:white ;
             font-family:Lato;
             text-align:center;
			 font-size:50px;
			 padding-bottom:7px;

}
                .link{a:link{text-decoration:none;}}
                a:hover{font-weight:bold;}

        
        .auto-style2 {
            width: 900px;
            height: 540px;
            margin-left: 170px;
            margin-top: 0px;
        }
        
    </style>
      <script language="JavaScript1.1">

var image1=new Image()
image1.src="285564_255868481089887_3109473_n.jpg"
var image2=new Image()
image2.src="393194_307030236001894_132925171_n.jpg"
var image3=new Image()
image3.src="393194_307030219335229_1486785247_n.jpg"

</script>
</head>
<body>
    <form id="form1" runat="server">
    </form>
    
   
     <h1><div id="h1">Barhatta C K P Pilot High School</div><hr/></h1>
        <p>
        </p>
        <br />
    <div id="diii" style="position:absolute;top:150px; left:170px ">    
    <!--<img class="" src="285564_255868481089887_3109473_n.jpg" />-->
        <img src="285564_255868481089887_3109473_n.jpg" name="slide" width=900 height=544>
<script>

    //variable that will increment through the images
    var step = 1
    function slideit() {
        //if browser does not support the image object, exit.
        if (!document.images)
            return
        document.images.slide.src = eval("image" + step + ".src")
        if (step < 3)
            step++
        else
            step = 1
        //call function "slideit()" every 2.5 seconds
        setTimeout("slideit()", 2500)
    }
    slideit()

</script>
    </div>
        <a href="home.aspx"><div id="home">Home</div></a>
    <a href="aboutteacher.aspx"><div id="teachers">About Teachers</div></a>
    <a href="registration.aspx"><div id="activities">Registration</div></a>
    <a href="admission.aspx"><div id="admission">Admission</div></a>
    <a href="result.aspx"><div id="result">Result</div></a>
    <a href="student.aspx"><div id="student_corner">Student Corner</div></a>
    <a href="about_school.aspx"><div id="about">About School</div></a>
    
    &nbsp;
    <div id="div2" style="background-color:#EEEEEE; position:absolute; top:130px; left:1080px; font-family: 'Simplified Arabic Fixed'; font-size: 20px; text-decoration: none; color: #000000; font-style: bold;">
        Notice</div>

    <div id="content" style="background-color:#EEEEEE;position:absolute; height:255px; width:270px; top: 155px; left:1080px; font-family: 'Segoe UI Semibold'; font-size: 15px; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none; color: #CC3300">
       
        <marquee behavior="scroll" direction="up" scrollamount="2" scrolldelay="1" > 
         1.SSC xm starting-all routine find in<br />
         school notice board<br/>
      2.2nd term xm starting-29 july<br />
        3.1st term result published<br />
        4.summer vac start on 29 ugust<br />
        5.Must be attend in class 60%</marquee>
        </div>
    <div id="div3" style="background-color:#EEEEEE; position:absolute; top:417px; left:1080px; font-family: 'Simplified Arabic Fixed'; font-size: 20px; text-decoration: none; color: #000000; font-style: bold;">
        Recent</div>
    <div id="Div1" style="background-color:#EEEEEE;position:absolute; height:255px; width:270px; top: 440px; left:1080px; font-family: 'Segoe UI Semibold'; font-size: 15px; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none; color: #CC3300;">
        <marquee behavior="scroll" direction="up" scrollamount="2" >
        1.100 years anniversery will be held<br />
        2.Construction has satrted<br />
        3.Inter-Scool Champion<br />
        4.Scool -----
    </marquee>
        </div>
    
    
    <div id="div4" style="line-height: normal; background-color: #33CCCC; border: medium outset #FFFFFF; position: absolute; top: 700px; left: 165px; width: 280px; height: 270px; font-family: Andalus; font-size: 16px; font-weight: bold; text-decoration: underline; font-style: normal; color: #333300;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Links<br />
        <br />
        1.<a href="www.eprothomalo.com">NewsPaper</a><br />
        2.<a href="www.murchona.com">Story books</a><br />
        3.<a href="www.dhakaeduboard.ac.bd">Dhaka Board</a><br />
        4.<a href="www.facebook.com">Entertainment</a></div>
    <div id="div5" style="border-style: outset none none none; border-width: thick; border-color: #993300; line-height: normal; background-color: #9966FF; position: absolute; top: 700px; left: 480px; width: 280px; height: 270px; font-family: Andalus; font-size: 16px; font-weight: bold; text-decoration: none; font-style: normal; color: #FFFFFF;">
         
        &nbsp;Confernce &amp; Workshop<br />
&nbsp;&nbsp;&nbsp;&nbsp; A conference is goinh to be held.<br />
&nbsp;Workshop on ICT</div>
    <div id="div6" style="border-style: outset none none none; border-width: thick; border-color: #66FFFF; line-height: normal; background-color: #CC66FF; position: absolute; top: 700px; left: 780px; width: 300px; height: 270px; font-family: Andalus; font-size: 16px; font-weight: bold; text-decoration: none; font-style: normal; color: #FFFFFF;">
         &nbsp;Academic<br />
        <ul>
            <li>Academic Programmes</li>
            <li>Class Room</li>
            <li>Seminar</li>
         </ul>
        
    </div>
        
        </body>

</html>
