<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="DuyuruListele.aspx.cs" Inherits="ASPNETSirketOtomasyonu.AdminPaneli.DuyuruListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="section">

        <div class="section-header">
            <h1>
                <div>Duyuru Listesi</div>
            </h1>
        </div>
        <div class="section-body">
            <div>
                <div class="card">
                    <div class="card-header">
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">

                            <asp:Repeater ID="Repeater1" runat="server">
                                <HeaderTemplate>
                                    <table class="table tab-bordered">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Başlık</th>
                                                <th>Duyuru</th>
                                                <th>Açıklama</th>
                                                <th>Tarih</th>
                                                <th>Sil</th>
                                                <th>Güncelle</th>
                                                <th>Detay</th>
                                            </tr>
                                        </thead>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tbody>
                                        <tr>
                                            <th><%# Eval("ID") %></th>
                                            <td><%# Eval("Baslik") %></td>
                                            <td><%# Eval("Duyuru") %></td>
                                            <td><%#Eval("Aciklama") %></td>
                                            <th><%#Eval("Saat") %></th>
                                            <td><a href="/AdminPaneli/DuyuruSil.aspx?gelenid=<%# Eval("ID") %>" class="badge badge-danger">Sil</a></td>
                                            <td><a href="/AdminPaneli/DuyuruGuncelle.aspx?gelenid=<%# Eval("ID") %>" class="badge badge-success">Güncelle</a></td>
                                            <td><a href="/AdminPaneli/DuyuruDetay.aspx?gelenid=<%# Eval("ID") %>" class="badge badge-secondary">Detay</a></td>
                                        </tr>
                                    </tbody>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </table>
                                </FooterTemplate>
                            </asp:Repeater>

                            
                        </div>
                    </div>
                    <div class="card-footer text-right">
                        <nav class="d-inline-block">
                            <ul class="pagination mb-0">
                            </ul>
                        </nav>
                    </div>
                </div>
                <div style="float: left">
                    <a href="/AdminPaneli/YeniDuyuru.aspx" class="btn-sm btn btn-info">Yeni Duyuru</a>
                </div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnExcelExport" runat="server" CssClass="btn btn-sm btn-secondary" OnClick="btnExcelExport_Click" Text="Excel Export" />
            </div>

            <br />
            <br />
        </div>
    </section>

</asp:Content>
