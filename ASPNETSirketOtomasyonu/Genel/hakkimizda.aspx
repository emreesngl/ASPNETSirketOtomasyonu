<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="hakkimizda.aspx.cs" Inherits="ASPNETSirketOtomasyonu.Genel.hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <h2>Şirket Hakkında</h2>
    <div>
        <asp:Repeater ID="Repeater1" runat="server">
             <ItemTemplate>
                 <div>
                     <%# Eval("Hakkinda")%>
                 </div>
                 <br />
             </ItemTemplate>
        </asp:Repeater>
     </div>

</asp:Content>
