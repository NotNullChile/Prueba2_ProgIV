<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="reportegoles.aspx.cs" Inherits="WebApp1.reportegoles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">
    Total goles del torneo
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenido" runat="server">
    <asp:DropDownList ID="DDLDivision" runat="server" AutoPostBack="True" Height="28px" Width="79px">
        <asp:ListItem>1A</asp:ListItem>
        <asp:ListItem>1B</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="DSGol" PageSize="30">
        <Columns>
            <asp:BoundField DataField="Posición" HeaderText="Posición" SortExpression="Posición" />
            <asp:BoundField DataField="Nombre Jugador" HeaderText="Nombre Jugador" SortExpression="Nombre Jugador" />
            <asp:BoundField DataField="Equipo" HeaderText="Equipo" SortExpression="Equipo" />
            <asp:BoundField DataField="Goles" HeaderText="Goles" SortExpression="Goles" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="DSGol" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="golesTorneo" TypeName="Datos.ClubExceptionTableAdapters.TorneoTableAdapter">
        <SelectParameters>
            <asp:ControlParameter ControlID="DDLDivision" Name="division" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
&nbsp;
</asp:Content>
