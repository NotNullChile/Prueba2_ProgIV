﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="registroequipos.aspx.cs" Inherits="WebApp1.RegistroEquipos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">
    <div class="cuadrado-2 cuadro-blue">
            <asp:HyperLink NavigateUrl="~/RegistroEquipos.aspx" runat="server" Font-Underline="false" CssClass="linkbutton">
            <asp:Image ImageUrl="~/images/team.png" runat="server" Width="80px" Height="80px" />
            </asp:HyperLink>
        </div>
    Registro de Equipos
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenido" runat="server">
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="3" DataKeyNames="idEquipo" DataSourceID="DSEquipo" DefaultMode="Insert" GridLines="None" Height="50px" Width="98%" OnItemInserting="DetailsView1_ItemInserting" OnItemInserted="DetailsView1_ItemInserted" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1" Font-Names="Segoe UI" OnPageIndexChanging="DetailsView1_PageIndexChanging">
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
                    <asp:TextBox ID="txtNombreEquipo" runat="server" Text='<%# Bind("nombreEquipo") %>' ValidationGroup="nombreEquipo"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfNombreEquipo" runat="server" ControlToValidate="txtNombreEquipo" ErrorMessage="Debe ingresar un nombre" Font-Names="Microsoft Sans Serif" ForeColor="Red" ValidationGroup="nombreEquipo"></asp:RequiredFieldValidator>
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
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/registrotecnico.aspx">¿Desea ingresar un nuevo técnico?</asp:HyperLink>
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
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="idEquipo" DataSourceID="DSEquipoView" GridLines="None" PageSize="20">
        <Columns>
            <asp:BoundField DataField="idEquipo" HeaderText="Número" ReadOnly="True" SortExpression="idEquipo" />
            <asp:TemplateField HeaderText="Equipo" SortExpression="nombreEquipo">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("nombreEquipo") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("nombreEquipo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Comuna" SortExpression="idComuna">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="DSComunaView" DataTextField="nombreComuna" DataValueField="idComuna" SelectedValue='<%# Bind("idComuna") %>'>
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="DSComunaView" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="mostrarComunas" TypeName="Negocio.ComunasNegocio"></asp:ObjectDataSource>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("idComuna") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DT" SortExpression="rutDT">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="DSDTView" DataTextField="nombreDT" DataValueField="rutDT" SelectedValue='<%# Bind("rutDT") %>'>
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="DSDTView" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="mostrarDTs" TypeName="Negocio.DTsNegocio"></asp:ObjectDataSource>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("rutDT") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="División" SortExpression="division">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList3" runat="server" SelectedValue='<%# Bind("division") %>'>
                        <asp:ListItem>1A</asp:ListItem>
                        <asp:ListItem>1B</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("division") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
    <asp:ObjectDataSource ID="DSEquipoView" runat="server" DeleteMethod="borrarEquipo" InsertMethod="guardarEquipo" OldValuesParameterFormatString="original_{0}" SelectMethod="mostrarEquipo" TypeName="Negocio.Equipos" UpdateMethod="modificarEquipo">
        <DeleteParameters>
            <asp:Parameter Name="idEquipo" Type="Int32" />
            <asp:Parameter Name="original_idEquipo" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="idEquipo" Type="Int32" />
            <asp:Parameter Name="nombreEquipo" Type="String" />
            <asp:Parameter Name="idComuna" Type="Int32" />
            <asp:Parameter Name="rutDT" Type="Int32" />
            <asp:Parameter Name="division" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombreEquipo" Type="String" />
            <asp:Parameter Name="idComuna" Type="Int32" />
            <asp:Parameter Name="rutDT" Type="Int32" />
            <asp:Parameter Name="division" Type="String" />
            <asp:Parameter Name="Original_idEquipo" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <br />
    <br />
</asp:Content>
