<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inventorydetail.aspx.cs" Inherits="WebApplication9.inventorydetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>Inventory details</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>

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
 .grid1{
     margin-left:250px;
     padding:25px;
      text-align:center;
     
     
    
 }
 .grid2{
     margin-left:200px;
     padding:25px;
     text-align:center;
      
 }
 
       
       
    </style>
 
</head>
<body>
     <form class="form1" runat="server">
        

    
   
            <table>
                
                <tr>
                    
                    <td><asp:Menu ID="Menu1" runat="server" CssClass="Menu">
               <Items>
                    <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/home.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Category" Value="Category" NavigateUrl="~/category_list.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Product" Value="Product" NavigateUrl="~/product_list.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Inventory Details" Value="Inventory Details"></asp:MenuItem>
                </Items>
                </asp:Menu>
            </td>
                    
                    <td><h1 class="sign">Image Online</h1></td>
                    <td><asp:Button ID="Button1" runat="server" Text="Logout" CssClass="button1" OnClick="Button1_Click"/>
                        
                    </td>
                </tr>
                
                
         </table>
         
         <table id="table1">
             
             <tr>
                 <td>
         <asp:Button ID="addcat" runat="server" CssClass="button2" Text="Add Category" PostBackUrl="~/add_category.aspx" />
                     </td>
                 <td>
                        <asp:Button ID="addpro" runat="server" cssClass="button2" Text="Add Product" PostBackUrl="~/add_product.aspx" />
                </td>
                 </tr>
          
             <tr>
            <td class="auto-style1">
                <div>
                    
         <asp:GridView  class="grid1" ID="GridView2" runat="server" BackColor="#CCCCCC" BorderColor="#000000" BorderStyle="Solid" BorderWidth="5px" CellPadding="4" CellSpacing="2" ForeColor="Black">
             <FooterStyle BackColor="#CCCCCC" />
             <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
             <RowStyle BackColor="White" />
             <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F1F1F1" />
             <SortedAscendingHeaderStyle BackColor="#808080" />
             <SortedDescendingCellStyle BackColor="#CAC9C9" />
             <SortedDescendingHeaderStyle BackColor="#383838" />
            <EmptyDataTemplate>
                To view category table with No. of products - please add product 
            </EmptyDataTemplate>
            </asp:GridView>
                </div>
                    
            </td>
                 <td class="auto-style1">

    <div>
         <asp:GridView class="grid2"  ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#000000" BorderStyle="solid" BorderWidth="5px" CellPadding="4" CellSpacing="2" ForeColor="Black">
             <FooterStyle BackColor="#CCCCCC" />
             <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
             <RowStyle BackColor="White" />
             <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F1F1F1" />
             <SortedAscendingHeaderStyle BackColor="#808080" />
             <SortedDescendingCellStyle BackColor="#CAC9C9" />
             <SortedDescendingHeaderStyle BackColor="#383838" />
              <EmptyDataTemplate>
                The product table has no data - Please add products
            </EmptyDataTemplate>
            </asp:GridView>
         </div>
             </td>
                 </tr>

           </table>  
       
          
    </form> 
</body>
</html>
