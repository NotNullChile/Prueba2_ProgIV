<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="reporteequipos.aspx.cs" Inherits="WebApp1.reporteequipos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">
    <div class="cuadrado-2" style="background-color:orangered">
            <asp:HyperLink NavigateUrl="~/reporteequipos.aspx" runat="server" Font-Underline="false" CssClass="linkbutton">
            <asp:Image ImageUrl="~/images/list_numbers.png" runat="server" Width="80px" Height="80px" />
            </asp:HyperLink>
    </div>
    Reporte de equipos y puntaje total.
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenido" runat="server">
    <br />
    <br />
    <div style="font-family:'Segoe UI'; font-size:medium; color:white">Seleccione División: </div>
    <asp:DropDownList ID="DDLDivision" runat="server" AutoPostBack="True" Height="28px" Width="79px">
        <asp:ListItem>1A</asp:ListItem>
        <asp:ListItem>1B</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="DSPuntaje" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" Font-Names="Segoe UI" GridLines="None" Width="98%">
        <Columns>
            <asp:BoundField DataField="Equipo" HeaderText="Equipo" SortExpression="Equipo" />
            <asp:BoundField DataField="Puntaje" HeaderText="Puntaje" SortExpression="Puntaje" />
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
