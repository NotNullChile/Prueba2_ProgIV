<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="reportegoleadores.aspx.cs" Inherits="WebApp1.reportegoleadores" %>
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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="DSMejoresJugadores" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Jugador" HeaderText="Jugador" SortExpression="Jugador" />
            <asp:BoundField DataField="Equipo" HeaderText="Equipo" SortExpression="Equipo" />
            <asp:BoundField DataField="Goles" HeaderText="Goles" SortExpression="Goles" />
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
    <asp:ObjectDataSource ID="DSMejoresJugadores" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="TresMejoresJugadores" TypeName="Datos.ClubExceptionTableAdapters.MejoresTresJugadoresTableAdapter">
        <SelectParameters>
            <asp:ControlParameter ControlID="DDLDivision" Name="division" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <br />
    3 mejores jugadores del ranking goleadores  
</asp:Content>
