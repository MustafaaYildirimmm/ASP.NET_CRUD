<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ArabaEdit.aspx.cs" Inherits="aspNetCRUD.ArabaEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Add Arabalar</h1>
        <table border="1" class="table table-condensed table-hover">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Araba Marka"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMarka" runat="server" Class="form-control"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Araba Model"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtModel" runat="server" Class="form-control"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Kapi Sayisi"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtKapi" runat="server" Class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="6">
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" Class="btn btn-success" OnClick="btnUpdate_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
