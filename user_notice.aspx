<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_notice.aspx.cs" Inherits="user_notice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Notice</title>
    <link rel="stylesheet" type="text/css" href="Home.css" >
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

        .auto-style2 {
           width: 83%;
             background-color: #FFFFFF;
             left:64px;
             position:absolute;
             top: 42px;
             height: 258px;
        }

        .auto-style3 {
            width: 180px;
        }

        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    </div>
        <h1><div id="h1">Barhatta C K P Pilot High School</div><hr/></h1>
       <a href="user.aspx"><div id="home">Profile</div></a>
    <a href="user_notice.aspx"><div id="teachers">Notice</div></a>
    <a href="user_result.aspx"><div id="activities">Result</div></a>
    <a href="user_class.aspx"><div id="admission">Class Shedule</div></a>
    <a href="user_result.aspx"><div id="result">Result</div></a>
    <a href="student.aspx"><div id="student_corner">Student Corner</div></a>
    <a href="about_school.aspx"><div id="about">About School</div></a>
       <div id="div9" style="position:absolute; border-style: solid none solid solid; border-width: medium; border-color: #000000; background-color:#CCCCFF; width: 800px; height: 700px; top: 150px; left: 300px; font-size: x-large;">
        <div id="div10" style="position:absolute; top: 50px; left: 380px; font-size: xx-large; font-style: italic; color: #FFFFCC;">
           </div>
           
           <table align="center" class="auto-style2" style="border-style:groove;">
               <tr>
                   <td class="auto-style3">Date</td>
                   <td colspan="2">Notice</td>
                   <td>&nbsp;</td>
               </tr>
               <tr>
                   <td class="auto-style3">26.06.13</td>
                   <td>Xm will be start on 30.07.13<br />
                       Please Collect your admit card</td>
                   <td>&nbsp;</td>
                   <td>&nbsp;</td>
               </tr>
               <tr>
                   <td class="auto-style3">04.04.13</td>
                   <td colspan="2">Result will be published 13.04.13</td>
                   <td>&nbsp;</td>
               </tr>
           </table>
           
    </form>
</body>
</html>
