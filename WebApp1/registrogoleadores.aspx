<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="registrogoleadores.aspx.cs" Inherits="WebApp1.registrogoleadores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">
    <div class="cuadrado-2" style="background-color:darksalmon">
            <asp:HyperLink NavigateUrl="~/registrogoleadores.aspx" runat="server" Font-Underline="false" CssClass="linkbutton">
            <asp:Image ImageUrl="~/images/goal.png" runat="server" Width="80px" Height="80px" />
            </asp:HyperLink>
        </div>
    Registro de Goleadores
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenido" runat="server">
    <br />
    <asp:DetailsView ID="DVGoles" runat="server" AutoGenerateRows="False" CellPadding="3" DataKeyNames="rutJugador" DataSourceID="DSJugador" DefaultMode="Edit" GridLines="None" Height="50px" Width="98%" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1" Font-Names="Segoe UI" OnPageIndexChanging="DVGoles_PageIndexChanging">
        <EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:TemplateField HeaderText="RUT" SortExpression="rutJugador">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="DSJugador" DataTextField="rutJugador" DataValueField="rutJugador" OnTextChanged="DropDownList2_TextChanged" SelectedValue='<%# Bind("rutJugador") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("rutJugador") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Nombre" SortExpression="nombreJugador">
                <EditItemTemplate>
                    <asp:TextBox ID="txtNombreJugador" runat="server" ReadOnly="True"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("nombreJugador") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("nombreJugador") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Equipo" SortExpression="idEquipo">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEquipo" runat="server" ReadOnly="True"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("idEquipo") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("idEquipo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="Posición" SortExpression="idPosicion">
                <EditItemTemplate>
                    <asp:TextBox ID="txtPosicion" runat="server" ReadOnly="True"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DynamicControl ID="DynamicControl1" runat="server" DataField="idPosicion" Mode="Insert" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:DynamicControl ID="DynamicControl1" runat="server" DataField="idPosicion" Mode="ReadOnly" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Goles Convertidos" SortExpression="golesConvertidos">
                <EditItemTemplate>
                    <asp:TextBox ID="txtGoles" runat="server" Text='<%# Bind("golesConvertidos") %>' TextMode="Number" AutoPostBack="True" OnTextChanged="txtGoles_TextChanged" ValidationGroup="golesDetails"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtGoles" ErrorMessage="Debe ser 0 o mayor" ForeColor="Red" MaximumValue="3000" MinimumValue="0" Type="Integer" ValidationGroup="golesDetails"></asp:RangeValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("golesConvertidos") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("golesConvertidos") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ganancias">
                <EditItemTemplate>
                    <asp:TextBox ID="txtGanancia" runat="server" ReadOnly="True"></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
    </asp:DetailsView>
    <asp:ObjectDataSource ID="DSJugador" runat="server" DeleteMethod="borrarJugador" InsertMethod="guardarJugador" OldValuesParameterFormatString="original_{0}" SelectMethod="mostrarJugadores" TypeName="Negocio.Jugadores" UpdateMethod="agregarGoles">
        <DeleteParameters>
            <asp:Parameter Name="Original_rutJugador" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="rutJugador" Type="Int32" />
            <asp:Parameter Name="nombreJugador" Type="String" />
            <asp:Parameter Name="edad" Type="Int32" />
            <asp:Parameter Name="idEquipo" Type="Int32" />
            <asp:Parameter Name="idPosicion" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="goles" Type="Int32" />
            <asp:Parameter Name="rutJugador" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="rutJugador" DataSourceID="DSJugadorView" GridLines="None" style="margin-right: 0px" AllowPaging="True" PageSize="20">
        <Columns>
            <asp:TemplateField HeaderText="RUT" SortExpression="rutJugador">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("rutJugador") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("rutJugador") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Nombre" SortExpression="nombreJugador">
                <EditItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("nombreJugador") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("nombreJugador") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Goles Convertidos" SortExpression="golesConvertidos">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("golesConvertidos") %>' TextMode="Number" ValidationGroup="view"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Debe ser 0 o mayor" ForeColor="Red" MaximumValue="3000" MinimumValue="0" Type="Integer" ValidationGroup="view"></asp:RangeValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("golesConvertidos") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
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
    <asp:ObjectDataSource ID="DSJugadorView" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="mostrarJugadores" TypeName="Negocio.Jugadores" DeleteMethod="borrarJugador" InsertMethod="guardarJugador" UpdateMethod="modificarGoles">
        <DeleteParameters>
            <asp:Parameter Name="Original_rutJugador" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="rutJugador" Type="Int32" />
            <asp:Parameter Name="nombreJugador" Type="String" />
            <asp:Parameter Name="edad" Type="Int32" />
            <asp:Parameter Name="idEquipo" Type="Int32" />
            <asp:Parameter Name="idPosicion" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="goles" Type="Int32" />
            <asp:Parameter Name="golesConvertidos" Type="Int32" />
            <asp:Parameter Name="original_rutJugador" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <br />
    <br />


</asp:Content>
