<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="reportetecnicos.aspx.cs" Inherits="WebApp1.reportetecnicos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">
    Reporte Directores Técnicos
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenido" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="DSEquipo" DataTextField="nombreEquipo" DataValueField="nombreEquipo">
    </asp:DropDownList>
    <asp:ObjectDataSource ID="DSEquipo" runat="server" InsertMethod="guardarEquipo" OldValuesParameterFormatString="original_{0}" SelectMethod="mostrarEquipo" TypeName="Negocio.Equipos">
        <InsertParameters>
            <asp:Parameter Name="idEquipo" Type="Int32" />
            <asp:Parameter Name="nombreEquipo" Type="String" />
            <asp:Parameter Name="idComuna" Type="Int32" />
            <asp:Parameter Name="rutDT" Type="Int32" />
            <asp:Parameter Name="division" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="DSTecnico" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Nombre DT" HeaderText="Nombre DT" SortExpression="Nombre DT" />
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
    <asp:ObjectDataSource ID="DSTecnico" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="nombreDT" TypeName="Datos.ClubExceptionTableAdapters.NombreDTSTableAdapter">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="equipo" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <br />
    Permite ver el nombre del DT al ingresar el nombre del equipo
</asp:Content>
