<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="listadoequipos.aspx.cs" Inherits="WebApp1.listadoequipos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">
    Listado de Todos los Equipos
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenido" runat="server">
    <asp:DropDownList ID="DLLDivision" runat="server" AutoPostBack="True" Height="28px" Width="79px">
        <asp:ListItem>1A</asp:ListItem>
        <asp:ListItem>1B</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IDEquipo" DataSourceID="DSEquipos" ForeColor="#333333" GridLines="None" PageSize="20">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="IDEquipo" HeaderText="IDEquipo" ReadOnly="True" SortExpression="IDEquipo" />
            <asp:BoundField DataField="Equipo" HeaderText="Equipo" SortExpression="Equipo" />
            <asp:BoundField DataField="DT" HeaderText="DT" SortExpression="DT" />
            <asp:CommandField ShowDeleteButton="True" />
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
    <asp:ObjectDataSource ID="DSEquipos" runat="server" DeleteMethod="deleteEquipo" OldValuesParameterFormatString="original_{0}" SelectMethod="listadoEquipos" TypeName="Datos.ClubExceptionTableAdapters.ListadoEquiposTableAdapter">
        <DeleteParameters>
            <asp:Parameter Name="Original_idEquipo" Type="Int32" />
        </DeleteParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DLLDivision" Name="division" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <br />
    <br />
    "Una página web que permite ver un listado con todos los equipos que existen"
</asp:Content>
