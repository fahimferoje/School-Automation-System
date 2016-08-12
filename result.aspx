<%@ Page Language="C#" AutoEventWireup="true" CodeFile="result.aspx.cs" Inherits="result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
				  color:wheat ;
               }
        body {
                background-color:darkgrey;
                background-image:url('antique-background-2.jpg');
                background-repeat:no-repeat;
                background-size:3000px;
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

        .auto-style1 {
            width: 100%;
            border: 5px solid #000000;
            background-color: #FFFFFF;
        }

        .auto-style2 {
            width: 100%;
            border: 6px solid #000000;
            background-color: #FFFFFF;
        }

        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <h1><div id="h1">Results</div><hr/></h1>
        <a href="home.aspx"><div id="home">Home</div></a>
    <a href="aboutteacher.aspx"><div id="teachers">About Teachers</div></a>
    <a href="registration.aspx"><div id="activities">Registration</div></a>
    <a href="admission.aspx"><div id="admission">Admission</div></a>
    <a href="result.aspx"><div id="result">Result</div></a>
    <a href="student.aspx"><div id="student_corner">Student Corner</div></a>
    <a href="about_school.aspx"><div id="about">About School</div></a>
    </div>
        <div id="div1" style="position:absolute; border-style: solid none solid solid; border-width: medium; border-color: #000000; background-color:#CCCCFF; width: 800px; height: 700px; top: 150px; left: 300px;">
            Class SIX<br />
            </br>
            <table class="auto-style1">
                <tr>
                    <td>Name</td>
                    <td>Roll</td>
                    <td>1st term</td>
                    <td>2nd term</td>
                    <td>Annual</td>
                </tr>
                <tr>
                    <td>Karim</td>
                    <td>6001</td>
                    <td>80%</td>
                    <td>70%</td>
                    <td>80%</td>
                </tr>
                <tr>
                    <td>Rahim</td>
                    <td>6002</td>
                    <td>75%</td>
                    <td>75%</td>
                    <td>75%</td>
                </tr>
                <tr>
                    <td>Mina</td>
                    <td>6003</td>
                    <td>75%</td>
                    <td>75%</td>
                    <td>75%</td>
                </tr>
                <tr>
                    <td>Karimma</td>
                    <td>6004</td>
                    <td>75%</td>
                    <td>75%</td>
                    <td>75%</td>
                </tr>
            </table>
            </br>
            Class <b>SEVEN</b>
            </br>
            <div style="height: 47px">
                <table cellpadding="4" class="auto-style2">
                    <tr>
                        <td>Name</td>
                        <td>Roll</td>
                        <td>1st term</td>
                        <td>2nd term</td>
                        <td>Annual</td>
                    </tr>
                    <tr>
                        <td>Karim</td>
                        <td>7001</td>
                    <td>80%</td>
                    <td>70%</td>
                    <td>80%</td>
                    </tr>
                    <tr>
                        <td>Rahim</td>
                        <td>7002</td>
                    <td>75%</td>
                    <td>75%</td>
                    <td>75%</td>
                    </tr>
                    <tr>
                        <td>Mina</td>
                        <td>7003</td>
                    <td>75%</td>
                    <td>75%</td>
                    <td>75%</td>
                    </tr>
                    <tr>
                        <td>Karimma</td>
                        <td>7004</td>
                    <td>75%</td>
                    <td>75%</td>
                    <td>75%</td>
                    </tr>
                </table>
                </div>
            </div>
    </form>
</body>
</html>