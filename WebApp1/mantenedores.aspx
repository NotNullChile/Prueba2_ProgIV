<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="mantenedores.aspx.cs" Inherits="WebApp1.mantenedores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">
    Registros de Información
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenido" runat="server">
    <br />
    <div class="reg-eq">
        <asp:Image ImageUrl="~/images/team.png" runat="server" Height="80px" Width="80px" />
        <a href="RegistroEquipos.aspx">Mantenedor de Equipos</a><br />
    </div>
    <br />
    <div class="reg-eq">
        <asp:Image ImageUrl="~/images/stadium.png" runat="server" Height="80px" Width="80px" />
    <a href="registropartidos.aspx">Mantenedor de Partidos</a><br />
    </div>
    <br />
    <div class="reg-eq">
        <asp:Image ImageUrl="~/images/goal.png" runat="server" Height="80px" Width="80px" />
    <a href="registrogoleadores.aspx">Mantenedor de Goleadores</a><br />
        </div>
</asp:Content>
