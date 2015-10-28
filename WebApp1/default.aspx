<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApp1.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">
    Inicio
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenido" runat="server">
    <div class="container-1">
        <div style="padding-left:10px">Mantenedores</div>
        <div class="rectangulo-1">
            <asp:Label ID="lbl_username" Text="Login necesario" runat="server" />
            <asp:Image ImageUrl="~/images/user.png" runat="server" Width="80px" ImageAlign="Right"/>
        </div>
        <br />
        <div class="cuadrado-1" style="background-color:blue">
            <asp:HyperLink NavigateUrl="~/RegistroEquipos.aspx" runat="server" Font-Underline="false" CssClass="linkbutton">
            <asp:Image ImageUrl="~/images/team.png" runat="server" Width="80px" Height="80px" />
            <br />
            Registrar Equipos
            </asp:HyperLink>
        </div>
        <div class="cuadrado-1" style=" background-color:darkmagenta">
            <asp:HyperLink NavigateUrl="~/registropartidos.aspx" runat="server" Font-Underline="false" CssClass="linkbutton">
            <asp:Image ImageUrl="~/images/stadium.png" runat="server" Width="80px" Height="80px" />
            <br />
            Registrar Partidos
            </asp:HyperLink>
        </div>    
        <p> </p>
        <br />
        <div class="cuadrado-1" style="background-color:darksalmon">
                        <asp:HyperLink NavigateUrl="~/registrogoleadores.aspx" runat="server" Font-Underline="false" CssClass="linkbutton">
            <asp:Image ImageUrl="~/images/goal.png" runat="server" Width="80px" Height="60px" />
            <br />
            Registrar Goleadores
            </asp:HyperLink>
        </div>
        <div class="cuadrado-1" style="background-color:green">
            <asp:HyperLink NavigateUrl="~/registrotecnico.aspx" runat="server" Font-Underline="false" CssClass="linkbutton">
            <asp:Image ImageUrl="~/images/coach.png" runat="server" Width="80px" Height="80px" />
            <br />
            Registrar Técnico
            </asp:HyperLink>
        </div>
    </div>
    <div class="container-2">
        <div style="padding-left:10px">Reportes</div>
        <div class="cuadrado-1" style="background-color:orange">
            <asp:HyperLink NavigateUrl="~/reportegoles.aspx" runat="server" Font-Underline="false" CssClass="linkbutton">
            <asp:Image ImageUrl="~/images/goal_2.png" runat="server" Width="80px" Height="80px" />
            <br />
            Total Goles
            </asp:HyperLink>
        </div>
        <div class="cuadrado-1" style="background-color:maroon">
            <asp:HyperLink NavigateUrl="~/reportepartidos.aspx" runat="server" Font-Underline="false" CssClass="linkbutton">
            <asp:Image ImageUrl="~/images/score.png" runat="server" Width="80px" Height="80px" />
            <br />
            Reporte Partidos
            </asp:HyperLink>
        </div>    
        <div class="cuadrado-1" style="background-color:indigo">
            <asp:HyperLink NavigateUrl="~/listadoequipos.aspx" runat="server" Font-Underline="false" CssClass="linkbutton">
            <asp:Image ImageUrl="~/images/list.png" runat="server" Width="80px" Height="80px" />
            <br />
            Listado Equipos
            </asp:HyperLink>
        </div>
        <br />
        <div class="cuadrado-1" style="background-color:orangered">
            <asp:HyperLink NavigateUrl="~/reporteequipos.aspx" runat="server" Font-Underline="false" CssClass="linkbutton">
            <asp:Image ImageUrl="~/images/list_numbers.png" runat="server" Width="80px" Height="80px" />
            <br />
            Listado Puntajes
            </asp:HyperLink>
        </div>
        <div class="cuadrado-1" style="background-color:brown">
            <asp:HyperLink NavigateUrl="~/reportegoleadores.aspx" runat="server" Font-Underline="false" CssClass="linkbutton">
            <asp:Image ImageUrl="~/images/podium.png" runat="server" Width="80px" Height="80px" />
            <br />
            Top 3 goleadores
            </asp:HyperLink>
        </div>
        <div class="cuadrado-1" style="background-color:blue">
            <asp:HyperLink NavigateUrl="~/reportetecnicos.aspx" runat="server" Font-Underline="false" CssClass="linkbutton">
            <asp:Image ImageUrl="~/images/coach.png" runat="server" Width="80px" Height="80px" />
            <br />
            Búsqueda DT
            </asp:HyperLink>
        </div>
    </div>
    <div class="container-1">
        <div style="padding-left:10px; font-family:'Segoe UI'">Acerca de</div>
        <div class="rectangulo-1" style="background-color:black"> 
            <asp:HyperLink NavigateUrl="https://github.com/NotNullChile" runat="server" Font-Underline="false" CssClass="linkbutton">
            <asp:Image ImageUrl="https://avatars2.githubusercontent.com/u/12536788?v=3&s=200" runat="server" Width="80px" ImageAlign="Right"/>
            <br />Not Null Chile
            </asp:HyperLink>
        </div>
    </div>
</asp:Content>