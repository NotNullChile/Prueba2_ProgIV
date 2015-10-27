<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="reportepartidos.aspx.cs" Inherits="WebApp1.reportepartidos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">
    <asp:Image ImageUrl="~/images/score.png" runat="server" Width="25" Height="25"/>
    Listado de Todos los Partidos jugados y sus resultados
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenido" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="3" DataSourceID="DSPartido" GridLines="None" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1" Font-Names="Segoe UI" Width="98%">
        <Columns>
            <asp:BoundField DataField="Fecha Torneo" HeaderText="Fecha Torneo" SortExpression="Fecha Torneo" />
            <asp:BoundField DataField="Partido" HeaderText="Partido" ReadOnly="True" SortExpression="Partido" />
            <asp:BoundField DataField="Estadio" HeaderText="Estadio" SortExpression="Estadio" />
            <asp:BoundField DataField="Fecha Partido" HeaderText="Fecha Partido" SortExpression="Fecha Partido" />
            <asp:BoundField DataField="Total a pagar Equipo Local" HeaderText="Total a pagar Equipo Local" ReadOnly="True" SortExpression="Total a pagar Equipo Local" />
            <asp:BoundField DataField="Total a pagar Equipo Visita" HeaderText="Total a pagar Equipo Visita" ReadOnly="True" SortExpression="Total a pagar Equipo Visita" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>
    <asp:ObjectDataSource ID="DSPartido" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="listadosEquipos" TypeName="Datos.ClubExceptionTableAdapters.resultadosEquiposTableAdapter"></asp:ObjectDataSource>
    <br />
    <br />
    Contenidos:
    <br />Listado Partidos jugados
    <br />Resultaods Partidos
    <br />Suma a pagar por goles convertidos
</asp:Content>
