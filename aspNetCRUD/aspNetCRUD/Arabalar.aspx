<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Arabalar.aspx.cs" Inherits="aspNetCRUD.Arabalar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Arabalar</h1>
        <a href="ArabaEkle.aspx">Add Cars</a>
        <table border="1" class="table table-hover">
            <tr>
                <th>Id:</th>
                <th>Marka:</th>
                <th>Model:</th>
                <th>Kapi Sayisi:</th>
                <th>Islemler:</th>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("Id") %></td>
                        <td><%#Eval("Marka") %></td>
                        <td><%#Eval("Model") %></td>
                        <td><%#Eval("KapiSayisi") %></td>
                        <td>
                            <a href="ArabaEdit.aspx?Id=<%#Eval("Id") %>">Guncelle</a>
                            <a href="Arabalar.aspx?Id=<%#Eval("Id") %>">Delete</a>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>
    </form>
</body>
</html>
