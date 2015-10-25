<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="reportepartidos.aspx.cs" Inherits="WebApp1.reportepartidos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">
    Listado de Todos los Partidos jugados y sus resultados
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenido" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="DSPartido" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Fecha Torneo" HeaderText="Fecha Torneo" SortExpression="Fecha Torneo" />
            <asp:BoundField DataField="Partido" HeaderText="Partido" ReadOnly="True" SortExpression="Partido" />
            <asp:BoundField DataField="Estadio" HeaderText="Estadio" SortExpression="Estadio" />
            <asp:BoundField DataField="Fecha Partido" HeaderText="Fecha Partido" SortExpression="Fecha Partido" />
            <asp:BoundField DataField="Total a pagar Equipo Local" HeaderText="Total a pagar Equipo Local" ReadOnly="True" SortExpression="Total a pagar Equipo Local" />
            <asp:BoundField DataField="Total a pagar Equipo Visita" HeaderText="Total a pagar Equipo Visita" ReadOnly="True" SortExpression="Total a pagar Equipo Visita" />
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
    <asp:ObjectDataSource ID="DSPartido" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="listadosEquipos" TypeName="Datos.ClubExceptionTableAdapters.resultadosEquiposTableAdapter"></asp:ObjectDataSource>
    <br />
    <br />
    Contenidos:
    <br />Listado Partidos jugados
    <br />Resultaods Partidos
    <br />Suma a pagar por goles convertidos
</asp:Content>
