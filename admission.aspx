<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admission.aspx.cs" Inherits="admission" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admission</title>
    <style type="text/css">
     #home
               {
                  position:absolute;
				  top:135px;
				  left:10px;
				  font-size:20px;
				  font-family:Lato;
				  color:#282828;
               }
                 #teachers
               {
				  position:absolute;
				  top:155px;
				  left:10px;
				  font-size:20px;
				  font-family:Lato;
				  color:#282828 ;
			   }
                  #activities
               {
				  position:absolute;
				  top:175px;
				  left:10px;
				  font-size:20px;
				  font-family:Lato;
				  color:#282828 ;
			   }
                   #admission
               {
				  position:absolute;
				  top:195px;
				  left:10px;
				  font-size:20px;
				  font-family:Lato;
				  color:#282828 ;
			   }
                    #result
               {
				  position:absolute;
				  top:215px;
				  left:10px;
				  font-size:20px;
				  font-family:Lato;
				  color:#282828 ;
			   }
                    #student_corner
               {
				  position:absolute;
				  top:235px;
				  left:10px;
				  font-size:20px;
				  font-family:Lato;
				  color:#282828 ;
			   }
                   #about 
               {
                  position:absolute;
				  top:255px;
				  left:10px;
				  font-size:20px;
				  font-family:Lato;
				  color:#282828 ;
               }
        body {
                background-color:darkgrey;
                background-image:url('1-mp900439473.jpg');
                background-repeat:no-repeat;
                background-size:2000px;
             }
        #h1
{
	         padding:5px;
             color:black ;
             font-family:Lato;
             text-align:center;
			 font-size:50px;
			 padding-bottom:7px;

}
                .link{a:link{text-decoration:none;}}
                a:hover{font-weight:bold;}

        </style>
</head>
<body>
    <h1><div id="h1">Barhatta C K P Pilot High School</div><hr/></h1>
    <form id="form1" runat="server">
    <div>
    <a href="home.aspx"><div id="home">Home</div></a>
    <a href="aboutteacher.aspx"><div id="teachers">About Teachers</div></a>
    <a href="registration.aspx"><div id="activities">Registration</div></a>
    <a href="admission.aspx"><div id="admission">Admission</div></a>
    <a href="result.aspx"><div id="result">Result</div></a>
    <a href="student.aspx"><div id="student_corner">Student Corner</div></a>
    <a href="about_school.aspx"><div id="about">About School</div></a>
    </div>
        <div id="klklkl" style="position:absolute; left:1200px;top:200px; font-family: Constantia; font-size: large; font-weight: bold; color: #990000;">
            Already registered</br>
            <a href="student.aspx">Sign in </a>

            </div>
        <div id="div1" style="position:absolute; border-style: hidden none solid double; border-width: medium; border-color: #CCCCFF; background-color:#FFFFCC; width: 800px; height: 700px; top: 150px; left: 300px; color: #00CC00; font-family: 'Bookman Old Style'; font-size: xx-large;">
            How To Apply
               <div id="kom" style="position:absolute; left:5px;top:60px; font-family: 'Buxton Sketch'; color: #000000; font-size: medium;">
                  At Undergraduate level enrollment is made only after a formal combined admission test for all the departments. To sit for the Admission Test one must fulfill pre-specified requirements. The requirements are set by the Admission Committee. Generally admission requirements, rules and the availability of forms are published in the national dailies after the result of H.S.C (Higher-Secondary School Certificate) Examination.A certain number of students are given chance to sit for the admision test according to the cumulitative G.P.A. of Physics , Chemistry , Mathematices and English of H.S.C. result
                   </br>
                   </br>
                   Generally, there are two parts in the Admission</br></br>
1.<b>MCQ Test:</b> The students are to sit for MCQ test onPhysics , Chemistry , Mathematices and English subjects in H.S.C level. In MCQ test the students are to select the correct answers from the available options. For worng answer the students have to penaltized by negative marking. The students qualified in the test are called for subject choice.
                   </br>
                   </br>
2.<b>Subject Choice:</b> After qualifying in the MCQ test the students are called for subject choice. In this phase students are to fillup subjects choice form.The students are allocated in the departments according to their merits in admission test with available seats.
            </div>
    </form>
</body>
</html>
