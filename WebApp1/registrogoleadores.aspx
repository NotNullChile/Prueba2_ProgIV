<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="registrogoleadores.aspx.cs" Inherits="WebApp1.registrogoleadores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">
    Registro Goleadores
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenido" runat="server">
    <asp:DetailsView ID="DVGoles" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="rutJugador" DataSourceID="DSJugador" DefaultMode="Edit" ForeColor="#333333" GridLines="None" Height="50px" Width="304px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:TemplateField HeaderText="rutJugador" SortExpression="rutJugador">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="DSJugador" DataTextField="rutJugador" DataValueField="rutJugador" OnTextChanged="DropDownList2_TextChanged" SelectedValue='<%# Bind("rutJugador") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("rutJugador") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="nombreJugador" SortExpression="nombreJugador">
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
            <asp:TemplateField HeaderText="idEquipo" SortExpression="idEquipo">
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
            <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="idPosicion" SortExpression="idPosicion">
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
            <asp:TemplateField HeaderText="golesConvertidos" SortExpression="golesConvertidos">
                <EditItemTemplate>
                    <asp:TextBox ID="txtGoles" runat="server" Text='<%# Bind("golesConvertidos") %>' TextMode="Number" AutoPostBack="True" OnTextChanged="txtGoles_TextChanged"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtGoles" ErrorMessage="Debe ser 0 o mayor" ForeColor="Red" MaximumValue="3000" MinimumValue="0" Type="Integer"></asp:RangeValidator>
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
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
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
    Datos a registrar:
    <br />Rut(validar)
    <br />Equipo perteneciente (dropdownlist)
    <br />Cantida de Goles(número no negativo)
    <br />Ganancia (100000 x gol)


</asp:Content>
