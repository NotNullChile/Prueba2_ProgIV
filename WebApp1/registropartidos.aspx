<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="registropartidos.aspx.cs" Inherits="WebApp1.registropartidos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">
    Registro de Partidos y Resultados
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenido" runat="server">
    <asp:DetailsView ID="DVPartidos" runat="server" AutoGenerateRows="False" DataKeyNames="idPartido" DataSourceID="DSPartido" DefaultMode="Insert" Height="50px" Width="375px">
        <Fields>
            <asp:TemplateField HeaderText="Número Partido" SortExpression="idPartido">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("idPartido") %>'></asp:Label>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtIdPartido" runat="server" OnLoad="txtIdPartido_Load" ReadOnly="True" Text='<%# Bind("idPartido") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("idPartido") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Equipos" SortExpression="equipoLocal">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("equipoLocal") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DDLLocal" runat="server" DataSourceID="DSEquipoLocal" DataTextField="nombreEquipo" DataValueField="idEquipo" SelectedValue='<%# Bind("equipoLocal") %>'>
                    </asp:DropDownList>
                    <br />
                    V/S<br />
                    <asp:DropDownList ID="DDLVisita" runat="server" DataSourceID="DSEquipoVisita" DataTextField="nombreEquipo" DataValueField="idEquipo" SelectedValue='<%# Bind("equipoVisita") %>'>
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="DSEquipoVisita" runat="server" InsertMethod="guardarEquipo" OldValuesParameterFormatString="original_{0}" SelectMethod="mostrarEquipo" TypeName="Negocio.Equipos">
                        <InsertParameters>
                            <asp:Parameter Name="idEquipo" Type="Int32" />
                            <asp:Parameter Name="nombreEquipo" Type="String" />
                            <asp:Parameter Name="idComuna" Type="Int32" />
                            <asp:Parameter Name="rutDT" Type="Int32" />
                            <asp:Parameter Name="division" Type="String" />
                        </InsertParameters>
                    </asp:ObjectDataSource>
                    &nbsp;<asp:ObjectDataSource ID="DSEquipoLocal" runat="server" InsertMethod="guardarEquipo" OldValuesParameterFormatString="original_{0}" SelectMethod="mostrarEquipo" TypeName="Negocio.Equipos">
                        <InsertParameters>
                            <asp:Parameter Name="idEquipo" Type="Int32" />
                            <asp:Parameter Name="nombreEquipo" Type="String" />
                            <asp:Parameter Name="idComuna" Type="Int32" />
                            <asp:Parameter Name="rutDT" Type="Int32" />
                            <asp:Parameter Name="division" Type="String" />
                        </InsertParameters>
                    </asp:ObjectDataSource>
                    <asp:CompareValidator ID="CompareLocalVSVisita" runat="server" ControlToCompare="DDLLocal" ControlToValidate="DDLVisita" ErrorMessage="Deben ser diferentes los equipos" ForeColor="Red" Operator="NotEqual"></asp:CompareValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("equipoLocal") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Goles" SortExpression="golesLocal">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("golesLocal") %>' TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Debe ingresar goles" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Debe ser 0 o mayor" ForeColor="Red" MaximumValue="100" MinimumValue="0"></asp:RangeValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtLocal" runat="server" Text='<%# Bind("golesLocal") %>' TextMode="Number"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RFLocalIngrsar" runat="server" ControlToValidate="txtLocal" ErrorMessage="Debe Ingresar goles" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RVLocal" runat="server" ControlToValidate="txtLocal" ErrorMessage="Debe ser 0 o mayor" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp; V/S<br />
                    <asp:TextBox ID="txtVisita" runat="server" Text='<%# Bind("golesVisita") %>' TextMode="Number" ValidationGroup="goles"></asp:TextBox>
                    <asp:RangeValidator ID="RVVisita" runat="server" ControlToValidate="txtVisita" ErrorMessage="Debe ser 0 o mayor" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RVGolesVisita" runat="server" ControlToValidate="txtVisita" ErrorMessage="Debe Ingresar goles" ForeColor="Red"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("golesLocal") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Estadio" SortExpression="idEstadio">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("idEstadio") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="DSEstadio" DataTextField="nombreEstadio" DataValueField="idEstadio" SelectedValue='<%# Bind("idEstadio") %>'>
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="DSEstadio" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="mostrarEstadios" TypeName="Negocio.Estadios"></asp:ObjectDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("idEstadio") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Fecha Partido" SortExpression="fechaPartido">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("fechaPartido") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("fechaPartido") %>' TextMode="DateTimeLocal"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox7" ErrorMessage="Debe ingresar una fecha" ForeColor="Red"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("fechaPartido") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Fecha Torneo" SortExpression="fechaTorneo">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("fechaTorneo") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList4" runat="server" SelectedValue='<%# Bind("fechaTorneo") %>'>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("fechaTorneo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:ObjectDataSource ID="DSPartido" runat="server" InsertMethod="guardarPartido" OldValuesParameterFormatString="original_{0}" SelectMethod="mostrarPartidos" TypeName="Negocio.Partidos">
        <InsertParameters>
            <asp:Parameter Name="idPartido" Type="Int32" />
            <asp:Parameter Name="equipoLocal" Type="Int32" />
            <asp:Parameter Name="equipoVisita" Type="Int32" />
            <asp:Parameter Name="golesLocal" Type="Int32" />
            <asp:Parameter Name="golesVisita" Type="Int32" />
            <asp:Parameter Name="idEstadio" Type="Int32" />
            <asp:Parameter Name="fechaPartido" Type="DateTime" />
            <asp:Parameter Name="fechaTorneo" Type="Int32" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <br />
    <br />
    Datos a Registrar:
    <br />Equipo Local (dropdownlist) (no puede estar vacío)
    <br />Equipo Visita (dropdownlist)(no puede ser el mismo que local) (no puede estar vacío)
    <br />Goles Local (no puede estar vacío)
    <br />Goles visita (no puede estar vacío)
    <br />Estadio en que jugaron (no puede estar vacío)

</asp:Content>
