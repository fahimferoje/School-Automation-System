<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_result.aspx.cs" Inherits="user_result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Result</title>
     <style type="text/css">
                 #home
               {
                  position:absolute;
				  top:135px;
				  left:10px;
				  font-size:20px;
				  font-family:Lato;
				  color:wheat;
               }
                 #teachers
               {
				  position:absolute;
				  top:155px;
				  left:10px;
				  font-size:20px;
				  font-family:Lato;
				  color:wheat ;
			   }
                  #activities
               {
				  position:absolute;
				  top:175px;
				  left:10px;
				  font-size:20px;
				  font-family:Lato;
				  color:wheat ;
			   }
                   #admission
               {
				  position:absolute;
				  top:195px;
				  left:10px;
				  font-size:20px;
				  font-family:Lato;
				  color:wheat ;
			   }
                    #result
               {
				  position:absolute;
				  top:215px;
				  left:10px;
				  font-size:20px;
				  font-family:Lato;
				  color:wheat ;
			   }
                    #student_corner
               {
				  position:absolute;
				  top:235px;
				  left:10px;
				  font-size:20px;
				  font-family:Lato;
				  color:wheat ;
			   }
                   #about 
               {
                  position:absolute;
				  top:255px;
				  left:10px;
				  font-size:20px;
				  font-family:Lato;
				  color:wheat;
               }
        body {
                background-color:darkgrey;
                background-image:url('images (10).jpg');
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

         .auto-style1 {
             width: 66%;
             background-color: #FFFFFF;
             left:200px;
             position:absolute;
             top: 193px;
             height: 184px;
         }

        </style>
</head>
<body>
    <form id="form1" runat="server">
  
     <h1><div id="h1">Barhatta C K P Pilot High School</div><hr/></h1>
       <a href="user.aspx"><div id="home">Profile</div></a>
    <a href="user_notice.aspx"><div id="teachers">Notice</div></a>
    <a href="user_result.aspx"><div id="activities">Result</div></a>
    <a href="user_class.aspx"><div id="admission">Class Shedule</div></a>
    <a href="user_result.aspx"><div id="result">Result</div></a>
    <a href="student.aspx"><div id="student_corner">Student Corner</div></a>
    <a href="about_school.aspx"><div id="about">About School</div></a>
        <div>
        <table class="auto-style1" style="border-style: groove; border-width: thin">
            <tr>
                <td>Attendence</td>
                <td>Class Performance</td>
                <td>&nbsp;</td>
                <td>GPA</td>
            </tr>
            <tr>
                <td>60%</td>
                <td colspan="2">20</td>
                <td>4.50</td>
            </tr>
            <tr>
                <td>30%</td>
                <td colspan="2">20</td>
                <td>3.50</td>
            </tr>
            </table>
           
        </div>
   
    </form>
</body>
</html>
