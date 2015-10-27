<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="reportes.aspx.cs" Inherits="WebApp1.reportes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">
    Reportes de Información
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenido" runat="server">
    <div class="reg">
        <asp:Image ImageUrl="~/images/goal_2.png" runat="server" Height="60px" Width="60px" />
        <a href="reportegoles.aspx">Total Goles del Torneo</a><br />
    </div>
    <br />
    <div class="reg">
        <asp:Image ImageUrl="~/images/score.png" runat="server" Height="60px" Width="60px" />
        <a href="reportepartidos.aspx">Partidos Jugados y sus Resultados</a><br />
    </div>
    <br />
    <div class="reg">
        <asp:Image ImageUrl="~/images/list.png" runat="server" Height="60px" Width="60px" />
        <a href="listadoequipos.aspx">Listado de Todos los equipos</a><br />
    </div>
    <br />
    <div class="reg">
        <asp:Image ImageUrl="~/images/list_numbers.png" runat="server" Height="60px" Width="60px" />
        <a href="reporteequipos.aspx">Listado de Equipos y sus Puntajes</a><br />
    </div>
    <br />
    <div class="reg">
        <asp:Image ImageUrl="~/images/podium.png" runat="server" Height="60px" Width="60px" />
        <a href="reportegoleadores.aspx">Los 3 mejores jugadores del Torneo</a><br />
    </div>
    <br />
    <div class="reg">
        <asp:Image ImageUrl="~/images/podium.png" runat="server" Height="60px" Width="60px" />
        <a href="reportetecnicos.aspx">Ver el nombre del DT de un equipo</a>
    </div>

</asp:Content>
