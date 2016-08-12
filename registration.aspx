<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <style type="text/css">
        
        body {
        background-color:darkgray;
        background-image:url('images (8).jpg');
        
       
        
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
                   .link{a:link{text-decoration:none;}}
                a:hover{font-weight:bold;}
        .image {
            width:281px;
            height: 134px;
            margin-left:778px;
            margin-top: 0px;
            margin-bottom: 62px;
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
    <form id="form1" runat="server">
        <asp:ScriptManager ID="scriptmanager1" runat="server">
    </asp:ScriptManager>
 <script type="text/javascript">
        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
        function BeginRequestHandler(sender, args) {
            var state = document.getElementById('loadingdiv').style.display;
            if (state == 'block') {
                document.getElementById('loadingdiv').style.display = 'none';
            } else {
                document.getElementById('loadingdiv').style.display = 'block';
            }
            args.get_postBackElement().disabled = true;
        }
</script>
        
       <div id="kkk" style="position:absolute; left:300px; top:150px; font-family: 'Buxton Sketch'; font-size: x-large; font-weight: bold; color: #990000;">
        If you are a student of this school complete your registration</br>
           Please complete the form by giving your school id correctly</br>    
       </div>
         <div id="klklkl" style="position:absolute; left:1100px;top:200px; font-family: Constantia; font-size: large; font-weight: bold; color: #990000;">
            Already registered</br>
            <a href="student.aspx">Sign in </a>

            </div>
        <asp:TextBox ID="TextBox1" runat="server" style="margin-top:125px; margin-left: 386px;" Width="387px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="ErrorMessage2" ErrorMessage="Name Required" SetFocusOnError="True">Name is Required</asp:RequiredFieldValidator>
    
    
       <p>
 <asp:TextBox ID="TextBox2" runat="server" style="left: 197px; margin-left: 386px;" Width="282px"></asp:TextBox>
       </p>
       
        
            <asp:TextBox ID="TextBox3" runat="server" style="margin-left:386px" Width="290px" AutoPostBack="true" ontextchanged="txtUsername_TextChanged"></asp:TextBox>
            <div id="kkk" style="position:absolute; left:400px; top:370px" >
            <div id="checkusername" runat="server"  Visible="false">
      
        <asp:Label ID="lblStatus" runat="server" ></asp:Label>
               
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" CssClass="ErrorMessage3" ErrorMessage="Must be give ID"></asp:RequiredFieldValidator>
            </div>
                </br>
        
          </br>
                <div id="kkjf" style="position:absolute; top:75px;">
                 <asp:TextBox ID="TextBox4" runat="server" style="margin-left:0px" TextMode="Password" Width="261px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" CssClass="ErrorMessage4" Display="Dynamic" ErrorMessage="Give Password">*Give Password</asp:RequiredFieldValidator>
        </div>
        
            
         <div id="lll" style="position:absolute;top:125px;">
                  <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 0px" TextMode="Password" Width="285px"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Password dont match"></asp:CompareValidator>
       </div>
        <div id="lala" style="position:absolute;top:170px;">
            <asp:Button ID="Button1" runat="server" OnClick="submit_to_database" style="margin-left: 50px" Text="Submit" Width="113px" />
        </div>
          
        <div id="div1" style="position:absolute; left:-60px; top:-112px;">
        Name:   
        </div>
        <div id="div2" style="position:absolute; left:-113px; top:-70px;">
        Phone Number:   
        </div>
         <div id="div3" style="position:absolute; left:-38px; top:-28px;">
        ID:   
        </div>
         <div id="div4" style="position:absolute; left:-75px; top:75px;">
        Password:   
        </div>
         <div id="div5" style="position:absolute; left:-136px; top:127px;">
       Re-enter Password:   
        </div>
        </form>
    
</body>
</html>
