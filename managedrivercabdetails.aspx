<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="managedrivercabdetails.aspx.cs" Inherits="wad_project.managedrivercabdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="DriverId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="DriverId" HeaderText="DriverId" InsertVisible="False" ReadOnly="True" SortExpression="DriverId" />
                    <asp:BoundField DataField="DriverName" HeaderText="DriverName" SortExpression="DriverName" />
                    <asp:BoundField DataField="DriverPhno" HeaderText="DriverPhno" SortExpression="DriverPhno" />
                    <asp:BoundField DataField="DriverEmail" HeaderText="DriverEmail" SortExpression="DriverEmail" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                DeleteCommand="DELETE FROM [DriversDetails] WHERE [DriverId] = @DriverId" InsertCommand="INSERT INTO [DriversDetails] ([DriverName], [DriverPhno], [DriverEmail]) VALUES (@DriverName, @DriverPhno, @DriverEmail)" 
                SelectCommand="SELECT * FROM [DriversDetails]"
                UpdateCommand="UPDATE [DriversDetails] SET [DriverName] = @DriverName, [DriverPhno] = @DriverPhno, [DriverEmail] = @DriverEmail WHERE [DriverId] = @DriverId">
                <DeleteParameters>
                    <asp:Parameter Name="DriverId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="DriverName" Type="String" />
                    <asp:Parameter Name="DriverPhno" Type="String" />
                    <asp:Parameter Name="DriverEmail" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="DriverName" Type="String" />
                    <asp:Parameter Name="DriverPhno" Type="String" />
                    <asp:Parameter Name="DriverEmail" Type="String" />
                    <asp:Parameter Name="DriverId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="CabID" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="CabID" HeaderText="CabID" InsertVisible="False" ReadOnly="True" SortExpression="CabID" />
                    <asp:BoundField DataField="CabModel" HeaderText="CabModel" SortExpression="CabModel" />
                    <asp:BoundField DataField="Fare" HeaderText="Fare" SortExpression="Fare" />
                    <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [CabDetails] WHERE [CabID] = @CabID" 
                InsertCommand="INSERT INTO [CabDetails] ([CabModel], [Fare], [Location]) VALUES (@CabModel, @Fare, @Location)" 
                SelectCommand="SELECT * FROM [CabDetails]" 
                UpdateCommand="UPDATE [CabDetails] SET [CabModel] = @CabModel, [Fare] = @Fare, [Location] = @Location WHERE [CabID] = @CabID">
                <DeleteParameters>
                    <asp:Parameter Name="CabID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CabModel" Type="String" />
                    <asp:Parameter Name="Fare" Type="String" />
                    <asp:Parameter Name="Location" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CabModel" Type="String" />
                    <asp:Parameter Name="Fare" Type="String" />
                    <asp:Parameter Name="Location" Type="String" />
                    <asp:Parameter Name="CabID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <asp:LinkButton ID="lnklogout" runat="server" Text="LogOut" OnClick="lnklogout_Click" style="z-index: 1; left: 843px; top: 232px; position: " Font-Size="X-Large" ForeColor="Black"></asp:LinkButton>
    </form>
</body>
</html>
