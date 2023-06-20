﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DuyuruSil.aspx.cs" Inherits="ASPNETSirketOtomasyonu.AdminPaneli.DuyuruSil" %>

<html lang="en">
<head>
  <title>Elem</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form runat="server">
<div class="container">
  <h2>Modal Uygulama</h2>
 
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Duyuru Silinsin Mi?</h4>
        </div>
        <div class="modal-body">
            <div class="form-group">
                <b>ID</b><asp:TextBox ID="txtID" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <b>Başlık</b><asp:TextBox ID="txtBaslik" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <b>Duyuru</b><asp:TextBox ID="txtDuyuru" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <b>Açıklama</b><asp:TextBox ID="txtAciklama" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
         
        </div>
        <div class="modal-footer">
            <asp:Button ID="btnSil" CssClass="btn btn-Danger" runat="server" Text="Sil" OnClick="btnSil_Click"  />
          <button type="button" class="btn btn-default" data-dismiss="modal">Çıkış</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>
</form>
</body>

    <script>
        $(function () {
            $("#myModal").modal("show");
        });
    </script>
</html>
