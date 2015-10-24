<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="registropartidos.aspx.cs" Inherits="WebApp1.registropartidos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">
    Registro de Partidos y Resultados
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenido" runat="server">
    Datos a Registrar:
    <br />Equipo Local (dropdownlist) (no puede estar vacío)
    <br />Equipo Visita (dropdownlist)(no puede ser el mismo que local) (no puede estar vacío)
    <br />Goles Local (no puede estar vacío)
    <br />Goles visita (no puede estar vacío)
    <br />Estadio en que jugaron (no puede estar vacío)

</asp:Content>
