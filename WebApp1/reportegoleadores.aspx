﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="reportegoleadores.aspx.cs" Inherits="WebApp1.reportegoleadores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">
    Reporte Goleadores
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenido" runat="server">
    <asp:DropDownList ID="DDLDivision" runat="server" AutoPostBack="True" Height="28px" Width="79px">
        <asp:ListItem>1A</asp:ListItem>
        <asp:ListItem>1B</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataSourceID="DSMejoresJugadores" GridLines="None" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1" Font-Names="Verdana" Width="98%">
        <Columns>
            <asp:BoundField DataField="Jugador" HeaderText="Jugador" SortExpression="Jugador" />
            <asp:BoundField DataField="Equipo" HeaderText="Equipo" SortExpression="Equipo" />
            <asp:BoundField DataField="Goles" HeaderText="Goles" SortExpression="Goles" />
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
    <asp:ObjectDataSource ID="DSMejoresJugadores" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="TresMejoresJugadores" TypeName="Datos.ClubExceptionTableAdapters.MejoresTresJugadoresTableAdapter">
        <SelectParameters>
            <asp:ControlParameter ControlID="DDLDivision" Name="division" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <br />
    3 mejores jugadores del ranking goleadores  
</asp:Content>
