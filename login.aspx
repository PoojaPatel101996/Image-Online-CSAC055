<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication9.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="css/style.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">

    <style>
    body {
        background-image : url('Images/0Bd3hGk.jpg');
           font-family: 'Comic Sans MS'; }
    image{
        align:center;

    }
    .main {
          
        background-color: #FFFFFF;
        width: 400px;
        height: 800px;
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
        padding-top: 60px;
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
    .submit1 {
      cursor: pointer;
        border-radius: 6px;
        color: #fff;
        background: #008CBA;
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
    
    .forgot {
        text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
        color:  rgb(38, 50, 56);
        padding-top: 20px;
    }
    
    a {
        text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
        color: #E1BEE7;
        text-decoration: none
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
     
            <br />
            <br />
            <asp:TextBox ID="Id" runat="server" class="un " type="number" align="center" placeholder="Id"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="uname" runat="server" class="un " type="text" align="center" placeholder="Username"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="pass" runat="server" class="pass" type="password" align="center" placeholder="Password"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" class="submit" align="center" PostBackUrl="~/home.aspx" />

             <p class="forgot" align="center"><b>Don't have an Account?</b> </p>


            <br />
            <asp:Button ID="Button2" runat="server"  Text="Sign up" class="submit1" align="center" PostBackUrl="~/signup.aspx"/>


       
        </form>
        </div>
</body>
</html>
