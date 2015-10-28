<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="reportetecnicos.aspx.cs" Inherits="WebApp1.reportetecnicos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">
    <div class="cuadrado-2" style="background-color:blue">
            <asp:HyperLink NavigateUrl="~/reportetecnicos.aspx" runat="server" Font-Underline="false" CssClass="linkbutton">
            <asp:Image ImageUrl="~/images/coach.png" runat="server" Width="80px" Height="80px" />
            </asp:HyperLink>
    </div>
    Reporte Directores Técnicos
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenido" runat="server">
    <br />
    <br />
    <div style="font-family:'Segoe UI'; font-size:medium; color:white">Seleccione Club: </div>
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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataSourceID="DSTecnico" GridLines="None" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1" Font-Names="Segoe UI" Width="98%">
        <Columns>
            <asp:BoundField DataField="Nombre DT" HeaderText="Nombre DT" SortExpression="Nombre DT" />
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
    <asp:ObjectDataSource ID="DSTecnico" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="nombreDT" TypeName="Datos.ClubExceptionTableAdapters.NombreDTSTableAdapter">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="equipo" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <br />
    Permite ver el nombre del DT al ingresar el nombre del equipo
</asp:Content>
