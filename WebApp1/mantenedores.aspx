<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="mantenedores.aspx.cs" Inherits="WebApp1.mantenedores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">
    Registros de Información
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenido" runat="server">
    <div class="container-3">
        <div style="padding-left:10px">Mantenedores</div>
        <div class="rectangulo-1">
            <asp:Label ID="lbl_username" Text="Login necesario" runat="server" />
            <asp:Image ImageUrl="~/images/user.png" runat="server" Width="80px" ImageAlign="Right"/>
        </div>
        <div class="rectangulo-1" style="background-color:blue">
            <asp:HyperLink NavigateUrl="~/RegistroEquipos.aspx" runat="server" Font-Underline="false" CssClass="linkbutton">
            <asp:Image ImageUrl="~/images/team.png" runat="server" Width="80px" Height="80px" ImageAlign="Right"/>
            <br />
            Registrar Equipos
            </asp:HyperLink>
        </div>
        <div class="rectangulo-1" style=" background-color:darkmagenta">
            <asp:HyperLink NavigateUrl="~/registropartidos.aspx" runat="server" Font-Underline="false" CssClass="linkbutton">
            <asp:Image ImageUrl="~/images/stadium.png" runat="server" Width="80px" Height="80px" ImageAlign="Right" />
            <br />
            Registrar Partidos
            </asp:HyperLink>
        </div>    
        <p> </p>
        <br />
        <div class="rectangulo-1" style="background-color:darksalmon">
                        <asp:HyperLink NavigateUrl="~/registrogoleadores.aspx" runat="server" Font-Underline="false" CssClass="linkbutton">
            <asp:Image ImageUrl="~/images/goal.png" runat="server" Width="80px" Height="80px" ImageAlign="Right" />
            <br />
            Registrar Goleadores
            </asp:HyperLink>
        </div>
        <div class="rectangulo-1" style="background-color:green">
            <asp:HyperLink NavigateUrl="~/registrotecnico.aspx" runat="server" Font-Underline="false" CssClass="linkbutton">
            <asp:Image ImageUrl="~/images/coach.png" runat="server" Width="80px" Height="80px" ImageAlign="Right" />
            <br />
            Registrar Técnico
            </asp:HyperLink>
        </div>
    </div>
</asp:Content>
