<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="reportes.aspx.cs" Inherits="WebApp1.reportes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">
    Reportes de Información
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenido" runat="server">
    <a href="reportegoles.aspx">Total Goles del Torneo</a><br />
    <a href="reportepartidos.aspx">Partidos Jugados y sus Resultados</a><br />
    <a href="listadoequipos.aspx">Listado de Todos los equipos</a><br />
    <a href="reporteequipos.aspx">Listado de Equipos y sus Puntajes</a><br />
    <a href="reportegoleadores.aspx">Los 3 mejores jugadores del Torneo</a><br />
    <a href="reportetecnicos.aspx">Ver el nombre del DT de un equipo</a>
</asp:Content>
