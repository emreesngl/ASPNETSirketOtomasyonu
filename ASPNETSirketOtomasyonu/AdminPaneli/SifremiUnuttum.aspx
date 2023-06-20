<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SifremiUnuttum.aspx.cs" Inherits="ASPNETSirketOtomasyonu.AdminPaneli.SifremiUnuttum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" />
    <link href="/Content/style.css" rel="stylesheet" />
</head>
<body style="background-color: #eaeaea;">
    <form id="form1" runat="server">
        <div class="container" style="width: 50%; background-color: white; margin-top:90px; border-radius:10px;">
            <div class="form-group">
                <h2 class="text-center">Şifremi Unuttum Sayfası</h2>
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Email Adresiniz" runat="server"></asp:TextBox>
            </div>
            <br />
            
            <div class="form-group">
                <asp:Button ID="btnResetle" CssClass="btn btn-success " runat="server" Text="Resetle" OnClick="btnResetle_Click" />
            </div> 
             </div>
        </form>
</body>
</html>
