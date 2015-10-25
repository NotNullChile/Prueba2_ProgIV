<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="reporteequipos.aspx.cs" Inherits="WebApp1.reporteequipos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">
    Reporte de equipos y puntaje total.
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenido" runat="server">
    <asp:DropDownList ID="DDLDivision" runat="server" AutoPostBack="True" Height="28px" Width="79px">
        <asp:ListItem>1A</asp:ListItem>
        <asp:ListItem>1B</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="DSPuntaje">
        <Columns>
            <asp:BoundField DataField="Equipo" HeaderText="Equipo" SortExpression="Equipo" />
            <asp:BoundField DataField="Puntaje" HeaderText="Puntaje" SortExpression="Puntaje" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="DSPuntaje" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="puntajeClub" TypeName="Datos.ClubExceptionTableAdapters.equipos1TableAdapter">
        <SelectParameters>
            <asp:ControlParameter ControlID="DDLDivision" Name="division" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <br />
    <br />
    <br />
    Contenidos:
    <br />Nombre de todos los equipos
    <br />Puntos totales obtenidos (no importa el orden)
    <br />Reglas: 
    <br />Empate 1 pto cada equipo
    <br />Triunfo 3 puntos ganador
</asp:Content>
