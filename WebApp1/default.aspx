<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApp1.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">
    Index
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenido" runat="server">
    
    <div class="cuadrado-1">
        <asp:HyperLink NavigateUrl="~/RegistroEquipos.aspx" runat="server" Font-Underline="false">
        <asp:Image ImageUrl="~/images/team.png" runat="server" Width="100px" Height="100px" />
        <br />
        Registrar Equipos
        </asp:HyperLink>
    </div>
    
    <div class="cuadrado-2">
        <asp:HyperLink NavigateUrl="~/registropartidos.aspx" runat="server" Font-Underline="false">
        <asp:Image ImageUrl="~/images/stadium.png" runat="server" Width="100px" Height="100px" />
        <br />
        Registrar Partidos
        </asp:HyperLink>
    </div>    
</asp:Content>