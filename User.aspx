<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User</title>
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
         <asp:Label ID="Label5" runat="server" Text="Name" Font-Underline="True">Hi</asp:Label>
           </div>
           <div id="div1" style="position:absolute; top: 300px; left: 400px;font-family: 'Buxton Sketch';">
         <asp:Label ID="Label1" runat="server" Text="Name">Name</asp:Label>
           </div>
        <div id="div2" style="position:absolute; top: 340px; left: 400px;font-family: 'Buxton Sketch';">
         <asp:Label ID="Label2" runat="server" Text="id">ID</asp:Label>
           </div>
        <div id="div3" style="position:absolute; top: 380px; left: 400px;font-family: 'Buxton Sketch';">
         <asp:Label ID="Label3" runat="server" Text="Result">Result</asp:Label>
           </div>
        <div id="div4" style="position:absolute; top: 420px; left: 400px; font-family: 'Buxton Sketch';">
         <asp:Label ID="Label4" runat="server" Text="Phone Number">Phone Number</asp:Label>
           </div>
        <div id="div5" style="position:absolute; top:300px;left:320px; font-size: x-large;font-family: 'Buxton Sketch';">
            Name:
            </div>
        <div id="div6" style="position:absolute; top:340px;left:350px; font-size:x-large;font-family: 'Buxton Sketch';">
            ID:
            </div>
        <div id="div8" style="position:absolute; top:380px;left:310px;font-size:x-large;font-family: 'Buxton Sketch';">
            Result:
            </div>
        <div id="div7" style="position:absolute; top:420px;left:225px;font-size:x-large;font-family: 'Buxton Sketch';">
            Phone Number:
            </div>
           <div id="div11" style="position:absolute; top:50px;left:320px;font-size:xx-large;font-family: 'Buxton Sketch';">
            Hi
            </div>
           <asp:LinkButton ID="LinkButton1" runat="server" OnClick="sign_out_Click">Logout</asp:LinkButton>
           </div>
    </form>
</body>
</html>
