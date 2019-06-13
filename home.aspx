<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplication9.home" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>Home</title>
    <style>
  
 .Menu ul
{   
  
  padding:10px;
  width: 15%;
   height: 100%;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
  font-family: 'Comic Sans MS';
  font-weight: bold;
  font-size: 20px;
  color:#ffffff;
  padding: 15px 25px;
  display: block;
   border-radius: 6px;
   
}

.Menu ul li
{
    background-color:#f1f1f1 ;
  color: white;
  
  
}

.Menu ul li a
{
    display: block;
  color: #000;
  padding: 15px 25px;
  text-decoration: none;
}
.Menu ul li a:hover
{
   background-color: #4CAF50;
  color: white;
  
}
body {
  
    background-image : url('Images/0Bd3hGk.jpg');
           font-family: 'Comic Sans MS';
           
}

.sign {
        padding-top: 20px;
        color:#ffffff;
        margin-left:300px;
        margin-bottom:70px;
        font-family:'Comic Sans MS';
        font-weight: bold;
        font-size: 35px;
    }
 

.button1 {
    font-family: 'Comic Sans MS';
  background-color: #008CBA;
  border: none;
  color: white;
  margin-left:600px;
  padding: 15px 32px;
  text-align: center;
 margin-bottom:100px;
  display: inline-block;
  font-size: 18px;
   border-radius: 6px;
  cursor: pointer;
}

.button2 {
    font-family: 'Comic Sans MS';
  background-color: #4CAF50;
  border: none;
  color: white;
  margin-left:300px;
  padding: 15px 32px;
  text-align: center;
 margin-bottom:100px;
  display: inline-block;
  font-size: 18px;
   border-radius: 6px;
  cursor: pointer;
}
 #table1 {
  padding: 10px;
  align: center;
   
}
  
 }
 
 .td{
      width:50px;
      
  }      
       
    </style>
 
</head>
<body>
     <form class="form1" runat="server">
        

    
   
            <table>
                
                <tr>
                    
                    <td><asp:Menu ID="Menu1" runat="server" CssClass="Menu">
               <Items>
                    <asp:MenuItem Text="Home" Value="Home"></asp:MenuItem>
                    <asp:MenuItem Text="Category" Value="Category" NavigateUrl="~/category_list.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Product" Value="Product" NavigateUrl="~/product_list.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Inventory Details" Value="Inventory Details" NavigateUrl="~/inventorydetail.aspx"></asp:MenuItem>
                </Items>
                </asp:Menu>
            </td>
                    
                    <td colspan="2"><h1 class="sign">Image Online</h1>
                     <h3 class="sign">Home</h3>
                        </td>
                    <td><asp:Button ID="Button1" runat="server" Text="Logout" CssClass="button1" PostBackUrl="~/login.aspx" />
                        
                    </td>
                </tr>
                
                
         </table>
         
         <table id="table1">
             
             <tr>
                 <td>
         <asp:Button ID="addcat" runat="server" CssClass="button2" Text="Add Category" PostBackUrl="~/add_category.aspx" />
                     </td>
                 <td>
                        <asp:Button ID="addpro" runat="server" cssClass="button2" Text="Add Product"  />
                </td>
                 </tr>
          
             <tr>
                <td class="td"></td>
                 <td><h2 style="color:#ffffff; font-size:25px;">Inventory has no data - Please add Category or Product</h2></td>
                
             </tr>

           </table>  
       
          
    </form> 
</body>
</html>

