<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student.aspx.cs" Inherits="student" %>

<!DOCTYPE html>

<script runat="server">
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Student Login Page</title>
    <link rel="stylesheet" type="text/css" href="error.css">
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
				  color:wheat;
			   }
                   #h1
{
	         padding:5px;
             color:whitesmoke ;
             font-family:Lato;
             text-align:center;
			 font-size:50px;
			 padding-bottom:7px;

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
        .image
         {
            width: 269px;
            height: 225px;
            margin-left: 499px;
            margin-top: 0px; 
        }
        body {
                background-color:darkgrey;
                background-image:url('background-check.jpg');
                background-repeat:no-repeat;
                background-size:2000px;
             }
           .link{a:link{text-decoration:none;}}
                a:hover{font-weight:bold;}
        #h1
{
	         padding:5px;
             color:black ;
             font-family:Lato;
             text-align:center;
			 font-size:50px;
			 padding-bottom:7px;

}
        </style>
</head>
<body>
     <h1><div id="h1">Barhatta C K P Pilot High School</div><hr/></h1>
    
    <a href="home.aspx"><div id="home">Home</div></a>
    <a href="aboutteacher.aspx"><div id="teachers">About Teachers</div></a>
    <a href="registration.aspx"><div id="activities">Registration</div></a>
    <a href="admission.aspx"><div id="admission">Admission</div></a>
    <a href="result.aspx"><div id="result">Result</div></a>
    <a href="student.aspx"><div id="student_corner">Student Corner</div></a>
    <a href="about_school.aspx"><div id="about">About School</div></a>
    <div id="des" style="position:absolute; top:140px;left:340px; font-family: 'Buxton Sketch'; font-size: xx-large; color: #FFFFFF;">
        Please Log in to see your result,notice,class shedule
        </div>
    
    <form id="form1" runat="server">
<div>
<!--<img class="image" src="images (1).jpg" /> -->
<!-- Username -->
<p>
<asp:TextBox id="usernameTextBox" runat="server" Height="47px" style="margin-left:500px;margin-top:80px" Width="211px"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="usernameTextBox" CssClass="ErrorMessage" ErrorMessage="Enter Your Name">* Enter Your Name</asp:RequiredFieldValidator>
</p>
<!-- Password -->
<p>
<asp:TextBox id="passwordTextBox" runat="server"
TextMode="Password" Height="48px" style="margin-left: 500px" Width="208px" />
</p>
    
        <div id="reme" style="position:absolute; top:310px;left:750px; font-family: 'Buxton Sketch'; font-size: large; color: #CC0000;">
        <asp:CheckBox ID="CheckBox1" runat="server"  Text="Remember Me" />
        </div>

<!-- Submit Button -->
<p>
<asp:Button id="submitButton" runat="server"
Text="Submit" style="margin-left: 546px; margin-right: 0px; margin-top: 0px;" OnClick="submitButton_Click" Width="135px" Height="28px" />
    
</p>
</div>
        <div id="div1" style="position:absolute; left:360px;top:290px; font-size: xx-large; height: 24px; font-family: 'Buxton Sketch'; color: #FFFFFF;">
        Password:    
        </div>
        <div id="div2" style="position:absolute; left:460px;top:225px; font-size: xx-large; font-family: 'Buxton Sketch'; color: #FFFFFF;">
        ID:    
        </div>
        <div id="crea" style="position:absolute; left:800px;top:500px;font-family: 'Buxton Sketch'; font-size: x-large; font-weight: bolder; color: #FF0000">
            Not Registered !!!!!! </br>
            <a href="registration.aspx" style="font-family: 'Buxton Sketch'; font-size: x-large; font-weight: bolder; text-decoration: underline; color: #FF0000">Complete Your Regisration</a>
            </div>
</form>
</body>
</html>