<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YeniKullanıcı.aspx.cs" Inherits="ASPNETSirketOtomasyonu.AdminPaneli.YeniKullanıcı" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Yeni Kullanıcı</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" />
    <link href="/Content/style.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
</head>
<body style="background-color: #eaeaea;">
    <form id="form1" runat="server">
        <div class="container" style="width: 50%; background-color: white; margin-top: 10px; border-radius: 10px;">
            <br />
            <div class="form-group">
                <h2 class="text-center"> Yeni Kullanıcı</h2>
            </div> 
            <div class="form-group">
                <b>Fotoğraf</b>
                <asp:Image ID="Image1" runat="server" class="form-control resim" Height="100px" Width="100px"></asp:Image>
            </div>
            <div class="form-group">
                <asp:FileUpload ID="FileUpload1" CssClass="form-group" runat="server" onchange="$('.resim')[0].src = window.URL.createObjectURL(this.files[0])" />
            </div>
            <div class="form-group">
                <b>Adı</b><br />
                <asp:TextBox ID="txtAdi" CssClass="form-conrtol" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <b>Soyadı</b><br />
                <asp:TextBox ID="txtSoyadi" CssClass="form-conrtol" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <b>Kullanıcı Adı</b><br />
                <asp:TextBox ID="txtKullaniciAdi" CssClass="form-conrtol" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <b>Şifre</b><br />
                <asp:TextBox ID="txtSifre" CssClass="form-conrtol" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <b>Şifre Tekrar</b><br />
                <asp:TextBox ID="txtSifreTekrar" CssClass="form-conrtol" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <b>E-mail</b><br />
                <asp:TextBox ID="txtEmail" CssClass="form-conrtol" runat="server" TextMode="Email"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnOlustur" runat="server" Text="Oluştur" CssClass="btn btn-danger" OnClick="btnOlustur_Click" />
            </div>
        </div>
    </form>
</body>
</html>
