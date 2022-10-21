<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LocationSearch.aspx.cs" Inherits="wad_project.LocationSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <title></title>
    
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places"></script>

</head>
<body style="background-color:white">
    <form id="form1" runat="server">
        <div align="center">
            Enter Details of your trip</div>
    <div>
   <%-- <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15226.29746675145!2d78.45808938465576!3d17.432202350000008!3m2!1i1024!2i768!4f13.1!4m3!3e6!4m0!4m0!5e0!3m2!1sen!2sin!4v1448863196550" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
   --%> 
        <table border="0" cellpadding="0" cellspacing="3" runat="server">
<tr>
    
    <td align="right">
     <asp:LinkButton ID="lnklogout" runat="server" Text="LogOut" OnClick="lnklogout_Click" style="z-index: 1; left: 932px; top: 290px; position: absolute; color: #000000"></asp:LinkButton>
    </td>
    <td style="font-weight: 700">
        Source:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" id="txtSource" value="" style="width: 200px" runat="server"/>
        &nbsp; 
        <br />
        <br />
        Destination:&nbsp;&nbsp;&nbsp; <input type="text" id="txtDestination" value="" style="width: 200px" runat="server"/>
        <br />
        <br />
        Distance:&nbsp;&nbsp;&nbsp; <input type="text" id="txtDistance" value="" style="width: 200px" runat="server"/>
        <br />
        <br />
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
        <asp:Button ID="btnSearch" Text="search Cabs" runat="server" OnClick="btnSearch_Click" />
        <hr />
    </td>
</tr>
</table>
 </div>
</form>
</body>
</html>
