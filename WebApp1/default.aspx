<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApp1.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">
    Index
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenido" runat="server">
    <a href="RegistroEquipos.aspx">
    <div class="cuadrado">
        <asp:Image ImageUrl="~/images/team.png" runat="server" Width="100px" Height="100px" />
        <br />
        Registrar Equipos
    </div>
        </a>
</asp:Content>