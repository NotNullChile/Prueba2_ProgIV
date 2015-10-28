<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="registrotecnico.aspx.cs" Inherits="WebApp1.registrotecnico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">
    <div class="cuadrado-2" style="background-color:green">
            <asp:HyperLink NavigateUrl="~/registrotecnico.aspx" runat="server" Font-Underline="false" CssClass="linkbutton">
            <asp:Image ImageUrl="~/images/coach.png" runat="server" Width="80px" Height="80px" />
            </asp:HyperLink>
        </div>
    Registro de Directores Técnicos<br />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="contenido" runat="server">
    <br />
    <br />  
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="rutDT" DataSourceID="DSDTs" DefaultMode="Insert" GridLines="None" Height="50px" OnItemInserted="DetailsView1_ItemInserted" style="margin-right: 0px" Width="194px">
        <EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:TemplateField HeaderText="RUT" SortExpression="rutDT">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("rutDT") %>'></asp:Label>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("rutDT") %>' TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Debe ingresar un RUT" ForeColor="Red"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("rutDT") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Nombre" SortExpression="nombreDT">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("nombreDT") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("nombreDT") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Debe Ingresar un Nombre" ForeColor="Red"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("nombreDT") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
    </asp:DetailsView>
    <asp:ObjectDataSource ID="DSDTs" runat="server" InsertMethod="guardarDT" OldValuesParameterFormatString="original_{0}" SelectMethod="mostrarDTs" TypeName="Negocio.DTsNegocio">
        <InsertParameters>
            <asp:Parameter Name="rutDT" Type="Int32" />
            <asp:Parameter Name="nombreDT" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
</asp:Content>
