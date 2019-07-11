<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product_list.aspx.cs" Inherits="WebApplication9.product_list" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Product list</title>
    <style>
  .main {
        background-color: #FFFFFF;
        margin-top:auto;
        width: 450px;
        height: 250px;
        margin: 7em auto;
        border-radius: 1.5em;
        box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
    } 
  .td{
      width:200px;
      
  }
  #scroll  
{
border: 1px solid #C0C0C0;
background-color: #F0F0F0;

height: 150px; 
overflow: scroll; 

}
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
       // padding-top: 20px;
        color:#ffffff;
        margin-left:300px;
        margin-bottom:70px;
      
        font-family:'Comic Sans MS';
        font-weight: bold;
        font-size: 30px;
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
  .un:focus
  {
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
       #table1
       {
           align:center;
       }
    </style>
 
</head>
<body>
    <form id="form1" runat="server">
          <table>
                
                <tr>
                    
                    <td><asp:Menu ID="Menu1" runat="server" CssClass="Menu">
               <Items>
                    <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/home.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Category" Value="Category" NavigateUrl="~/category_list.aspx" ></asp:MenuItem>
                    <asp:MenuItem Text="Product" Value="Product" NavigateUrl="~/product_list.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Inventory Details" Value="Inventory Details" NavigateUrl="~/inventorydetail.aspx"></asp:MenuItem>
                </Items>
                </asp:Menu>
            </td>
                    
                    <td colspan="2" rowspan="4"><h1 class="sign">Image Online</h1>
                        <h3 class="sign">Product List</h3>
                    </td>
                    <td colspan="2"><asp:Button ID="Button1" runat="server" Text="Logout" CssClass="button1" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="Add Product" CssClass="button1"  OnClick="Button2_Click"  />
                    </td>
                    
                        
                    
                </tr>
                
                
         </table>
        <table id="table1">
            <tr>
                <td class="td"></td>
                <td>
        
        </td>
                <td class="td"></td>
                <td>
<div id="scroll">
                    <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" AutoGenerateColumns="False" DataKeyNames="Product_Id" DataSourceID="SqlDataSource1" OnRowEditing="GridView1_RowEditing">
                        <Columns>
                            <asp:BoundField DataField="Product_Id" HeaderText="Product_Id" ReadOnly="True" SortExpression="Product_Id" />
                            <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
                            <asp:BoundField DataField="Category_Name" HeaderText="Category_Name" SortExpression="Category_Name" />
                            <asp:BoundField DataField="Sales_Price" HeaderText="Sales_Price" SortExpression="Sales_Price" />
                            <asp:BoundField DataField="Available_quantity" HeaderText="Available_quantity" SortExpression="Available_quantity" />
                                                          <asp:CommandField EditImageUrl="~/Images/edit.jpg" ShowEditButton="True" HeaderText="edit" ButtonType="Image" ControlStyle-Width="20px" />
                            <asp:CommandField DeleteImageUrl="~/Images/delete.jpg"  ShowDeleteButton="True" HeaderText="delete" ButtonType="Image" ControlStyle-Width="20px" />

                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ImageOnlineConnectionString %>" DeleteCommand="DELETE FROM [product] WHERE [Product_Id] = @original_Product_Id AND [Product_Name] = @original_Product_Name AND [Category_Name] = @original_Category_Name AND [Sales_Price] = @original_Sales_Price AND [Available_quantity] = @original_Available_quantity" InsertCommand="INSERT INTO [product] ([Product_Id], [Product_Name], [Category_Name], [Sales_Price], [Available_quantity]) VALUES (@Product_Id, @Product_Name, @Category_Name, @Sales_Price, @Available_quantity)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [product]" UpdateCommand="UPDATE [product] SET [Product_Name] = @Product_Name, [Category_Name] = @Category_Name, [Sales_Price] = @Sales_Price, [Available_quantity] = @Available_quantity WHERE [Product_Id] = @original_Product_Id AND [Product_Name] = @original_Product_Name AND [Category_Name] = @original_Category_Name AND [Sales_Price] = @original_Sales_Price AND [Available_quantity] = @original_Available_quantity">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Product_Id" Type="String" />
                            <asp:Parameter Name="original_Product_Name" Type="String" />
                            <asp:Parameter Name="original_Category_Name" Type="String" />
                            <asp:Parameter Name="original_Sales_Price" Type="String" />
                            <asp:Parameter Name="original_Available_quantity" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Product_Id" Type="String" />
                            <asp:Parameter Name="Product_Name" Type="String" />
                            <asp:Parameter Name="Category_Name" Type="String" />
                            <asp:Parameter Name="Sales_Price" Type="String" />
                            <asp:Parameter Name="Available_quantity" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Product_Name" Type="String" />
                            <asp:Parameter Name="Category_Name" Type="String" />
                            <asp:Parameter Name="Sales_Price" Type="String" />
                            <asp:Parameter Name="Available_quantity" Type="String" />
                            <asp:Parameter Name="original_Product_Id" Type="String" />
                            <asp:Parameter Name="original_Product_Name" Type="String" />
                            <asp:Parameter Name="original_Category_Name" Type="String" />
                            <asp:Parameter Name="original_Sales_Price" Type="String" />
                            <asp:Parameter Name="original_Available_quantity" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
    </div>
                </td>
            </tr>
           
    </table>
            </form>
</body>
</html>

