<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="WebApplication9.signup" %>
<%@ Register Assembly="BotDetect" Namespace="BotDetect.Web.UI" TagPrefix="BotDetect" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Sign up</title>
    <link rel="stylesheet" href="css/style.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">

    <style>
    body {
        background-image : url('Images/0Bd3hGk.jpg');
           font-family: 'Comic Sans MS'; 
           
           
    }
    
    image{
        align:center;

    }
    .main {
        background-color: #FFFFFF;
        width: 450px;
        height: 950px;
        margin: 7em auto;
        border-radius: 1.5em;
        box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
    }
    
    .sign {
        padding-top: 30px;
        color:  rgb(38, 50, 56);
        font-family: 'Comic Sans MS';
        font-weight: bold;
        font-size: 35px;
    }
    
    .un {
    width: 76%;
    color: rgb(38, 50, 56);
    font-weight: 700;
    font-size: 14px;
    letter-spacing: 1px;
    background: rgba(136, 126, 126, 0.04);
    padding: 10px 20px;
    border: none;
    border-radius: 20px;
    outline: none;
    box-sizing: border-box;
    border: 2px solid rgba(0, 0, 0, 0.02);
    margin-bottom: 5px;
    margin-left: 46px;
    text-align: center;
    
    font-family: 'Comic Sans MS';
    }
    
    form.form1 {
        padding-top: 30px;
    }
    
    .pass {
            width: 76%;
    color: rgb(38, 50, 56);
    font-weight: 700;
    font-size: 14px;
    letter-spacing: 1px;
    background: rgba(136, 126, 126, 0.04);
    padding: 10px 20px;
    border: none;
    border-radius: 20px;
    outline: none;
    box-sizing: border-box;
    border: 2px solid rgba(0, 0, 0, 0.02);
    margin-bottom: 5px;
    margin-left: 46px;
    text-align: center;
   
    font-family: 'Comic Sans MS';
    }
    
   
    .un:focus, .pass:focus {
        border: 2px solid rgba(0, 0, 0, 0.18) !important;
        
    }
    
    .submit {
      cursor: pointer;
        border-radius: 6px;
        color: #fff;
        background: #4CAF50;
        border: 0;
        padding-left: 40px;
        padding-right: 40px;
        padding-bottom: 10px;
        padding-top: 10px;
        font-family: 'Comic Sans MS';
        margin-left: 35%;
        font-size: 14px;
        box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
    }
   
 
    
    
    
    
    @media (max-width: 600px) {
        .main {
            border-radius: 0px;
        }
    </style>
</head>
<body>
   <div class="main">
    <h1><p class="sign" align="center">Image Online</p></h1>
    <center><img src="Images/oie_18172226eJY0iNwt.gif"  width="100" height="100"></center> 
      
        <form class="form1" runat="server">
            <asp:TextBox ID="Id" runat="server" class="un " type="number" align="center" placeholder="Id"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Id" ErrorMessage="Id is required"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="fname" runat="server" class="un " type="text" align="center" placeholder="Firstname"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="lname" runat="server" class="un " type="text" align="center" placeholder="Lastname"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="uname" runat="server" class="un " type="text" align="center" placeholder="Username"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="pass" runat="server" class="pass " type="password" align="center" placeholder="Password"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pass" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="confirmpass" runat="server" class="pass " type="password" align="center" placeholder="Confirm password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass" ControlToValidate="confirmpass" ErrorMessage="it must be same as password field."></asp:CompareValidator>
            <br />
            <BotDetect:WebFormsCaptcha ID="CaptchaBox" runat="server" CssClass="cap"/>
            <br />
            <br />
                 <table>
                     <tr>
                         <td> <asp:TextBox ID="txtCaptcha" CssClass="un" runat="server" placeholder="Enter captcha code"></asp:TextBox></td>
                         <td><asp:Button ID="captcha_button" runat="server" Text="Verify" CssClass="submit" OnClick="captcha_button_Click" /></td>
                     </tr>
                 </table>  
                
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
      
            <br />
             <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Signup"  class="submit" align="center" PostBackUrl="~/login.aspx" />
     
                    

        </form>
        </div>
</body>
</html>
