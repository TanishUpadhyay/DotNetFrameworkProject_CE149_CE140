<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adddrivercabdetails.aspx.cs" Inherits="wad_project.adddrivercabdetails" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body style="background-color:white">
    <form id="form1" runat="server">
        
        
    <div align="center">
    <table>
        <tr>
            <td colspan="2">
                <h1>
                    Add
                    DRIVER DETAILS
                </h1>
            </td>
        </tr>
        
          <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Driver Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDname" runat="server"></asp:TextBox>
            </td>
        </tr>         
          <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="DriverPhno"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDpno" runat="server"></asp:TextBox>
            </td>
        </tr>
          <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="DriverEmail"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDemail" runat="server"></asp:TextBox>
            </td>
        </tr>
        
            
           
             <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="CabModel"></asp:Label>
                </td><td>
                    <asp:TextBox ID="txtCabmodel" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                   <td> <asp:Label ID="Label8" runat="server" Text="Fare"></asp:Label>
                </td>
                
                    <td><asp:TextBox ID="txtFare" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
              <td>
                    <asp:Label ID="Label9" runat="server" Text="Location"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLocation" runat="server"></asp:TextBox>
                </td>
            </tr><br>
            <tr><td><asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" Height="30px" Width="78px" /></td>
                <td>
                    <asp:LinkButton ID="lnklogout" runat="server" Text="LogOut" OnClick="lnklogout_Click" style="z-index: 1; left: 843px; top: 232px; position: " Font-Size="X-Large" ForeColor="Black"></asp:LinkButton>
                </td>
            </tr>
        </table>
    </div><br /><br /><br />
    </form>
</body>
</html>

