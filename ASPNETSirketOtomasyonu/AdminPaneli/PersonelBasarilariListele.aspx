<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="PersonelBasarilariListele.aspx.cs" Inherits="ASPNETSirketOtomasyonu.AdminPaneli.PersonelBasarilariListele" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="section">
        <div class="section-header">
            
            <h1>
                <div>Personel Başarı Listesi</div>
            </h1>
        </div>
        <div class="section-body">
            <div>
                <div class="card">
                    <div class="card-header">
                    </div>
                    <div class="card-body">
                        <div>
                            <div class="table-responsive">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="876px" AllowPaging="True" AllowSorting="True" PageSize="3">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>
                                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                                        <asp:BoundField DataField="Adi" HeaderText="Personel Adı" SortExpression="Adi" />
                                        <asp:BoundField DataField="Soyadi" HeaderText="Personel Soyadı" SortExpression="Soyadi" />
                                        <asp:BoundField DataField="Basari" HeaderText="Basari" SortExpression="Basari" />
                                        <asp:BoundField DataField="Tarih" HeaderText="Tarih" SortExpression="Tarih" DataFormatString="{0:dd.MM.yyyy}" />
                                        <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="/AdminPaneli/PersonelBasariSil.aspx?gelenid={0}" HeaderText="Sil" Text="Sil">
                                            <ControlStyle CssClass="badge badge-danger" />
                                        </asp:HyperLinkField>
                                        <asp:HyperLinkField HeaderText="Güncelle" Text="Güncelle" DataNavigateUrlFields="ID" DataNavigateUrlFormatString="/AdminPaneli/PersonelBasariGuncelle.aspx?gelenid={0}">
                                            <ControlStyle CssClass="badge badge-warning" />
                                        </asp:HyperLinkField>
                                    </Columns>
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-EGGT3L9;Initial Catalog=ASPNETSirket;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="select pb.ID, p.Adi,p.Soyadi, pb.Basari,pb.Tarih from PersonelBasarilari pb inner join Personeller p on pb.PersonelID=p.ID"></asp:SqlDataSource>
                                <br />
                                <div class="from-group" style="float: left">
                                    <a href="/AdminPaneli/YeniPersonelBasari.aspx" class="btn btn-sm btn-info">Yeni Başarı</a>
                                </div>
                                <div class="from-group" style="float: right">
                                    <a href="/AdminPaneli/PersonelBasariDetay.aspx" class="btn btn-sm btn-secondary">Detay</a>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer text-right">
                            <nav class="d-inline-block">
                                <ul class="pagination mb-0">
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
