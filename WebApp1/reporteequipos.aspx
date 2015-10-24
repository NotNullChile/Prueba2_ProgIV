<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="reporteequipos.aspx.cs" Inherits="WebApp1.reporteequipos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">
    Reporte de equipos y puntaje total.
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenido" runat="server">
    Contenidos:
    <br />Nombre de todos los equipos
    <br />Puntos totales obtenidos (no importa el orden)
    <br />Reglas: 
    <br />Empate 1 pto cada equipo
    <br />Triunfo 3 puntos ganador
</asp:Content>
