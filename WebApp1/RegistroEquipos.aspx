<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="registroequipos.aspx.cs" Inherits="WebApp1.RegistroEquipos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">
    <asp:Image ImageUrl="~/images/team.png" runat="server" Width="25" Height="25"/>
    Registro de Equipos
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenido" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="3" DataKeyNames="idEquipo" DataSourceID="DSEquipo" DefaultMode="Insert" GridLines="None" Height="50px" Width="98%" OnItemInserting="DetailsView1_ItemInserting" OnItemInserted="DetailsView1_ItemInserted" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1" Font-Names="Segoe UI">
        <EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:TemplateField HeaderText="Número Equipo" SortExpression="idEquipo">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("idEquipo") %>'></asp:Label>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtIdEquipo" runat="server" OnLoad="txtIdEquipo_Load" ReadOnly="True" Text='<%# Bind("idEquipo") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("idEquipo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Equipo" SortExpression="nombreEquipo">
                <EditItemTemplate>
                    <asp:TextBox ID="text" runat="server" Text='<%# Bind("nombreEquipo") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtNombreEquipo" runat="server" Text='<%# Bind("nombreEquipo") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfNombreEquipo" runat="server" ControlToValidate="txtNombreEquipo" ErrorMessage="Debe ingresar un nombre" Font-Names="Microsoft Sans Serif" ForeColor="Red"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("nombreEquipo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Comuna" SortExpression="idComuna">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("idComuna") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DDLComuna" runat="server" DataSourceID="DSComuna" DataTextField="nombreComuna" DataValueField="idComuna" SelectedValue='<%# Bind("idComuna") %>'>
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="DSComuna" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="mostrarComunas" TypeName="Negocio.ComunasNegocio"></asp:ObjectDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("idComuna") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DT" SortExpression="rutDT">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("rutDT") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DDLDT" runat="server" DataSourceID="DSDT" DataTextField="nombreDT" DataValueField="rutDT" SelectedValue='<%# Bind("rutDT") %>'>
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="DSDT" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="mostrarDTs" TypeName="Negocio.DTsNegocio"></asp:ObjectDataSource>
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("rutDT") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="División" SortExpression="division">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("division") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DLLDivision" runat="server" SelectedValue='<%# Bind("division") %>'>
                        <asp:ListItem>1A</asp:ListItem>
                        <asp:ListItem>1B</asp:ListItem>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("division") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
    </asp:DetailsView>
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
    Datos a registrar son:
    <br />Nombre Equipo (no se puede repetir) (no puede quedar vacío)
    <br />Comuna que representa (no puede quedar vacío)
    <br />Nombre del DT /(no se puede repetir) (no puede quedar vacío)
    <br />
</asp:Content>
