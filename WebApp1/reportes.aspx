<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="reportes.aspx.cs" Inherits="WebApp1.reportes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titulo" runat="server">
    Reportes de Información
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenido" runat="server">
    <div class="container-3">
        <div style="padding-left:10px">Reportes</div>
        <div class="rectangulo-1" style="background-color:orange">
            <asp:HyperLink NavigateUrl="~/reportegoles.aspx" runat="server" Font-Underline="false" CssClass="linkbutton">
            <asp:Image ImageUrl="~/images/goal_2.png" runat="server" Width="80px" Height="80px"  ImageAlign="Right"/>
            <br />
            Total Goles
            </asp:HyperLink>
        </div>
        <div class="rectangulo-1" style="background-color:maroon">
            <asp:HyperLink NavigateUrl="~/reportepartidos.aspx" runat="server" Font-Underline="false" CssClass="linkbutton">
            <asp:Image ImageUrl="~/images/score.png" runat="server" Width="80px" Height="80px"  ImageAlign="Right"/>
            <br />
            Reporte Partidos
            </asp:HyperLink>
        </div>    
        <div class="rectangulo-1" style="background-color:indigo">
            <asp:HyperLink NavigateUrl="~/listadoequipos.aspx" runat="server" Font-Underline="false" CssClass="linkbutton">
            <asp:Image ImageUrl="~/images/list.png" runat="server" Width="80px" Height="80px"  ImageAlign="Right"/>
            <br />
            Listado Equipos
            </asp:HyperLink>
        </div>
        <br />
        <div class="rectangulo-1" style="background-color:orangered">
            <asp:HyperLink NavigateUrl="~/reporteequipos.aspx" runat="server" Font-Underline="false" CssClass="linkbutton">
            <asp:Image ImageUrl="~/images/list_numbers.png" runat="server" Width="80px" Height="80px"  ImageAlign="Right"/>
            <br />
            Listado Puntajes
            </asp:HyperLink>
        </div>
        <div class="rectangulo-1" style="background-color:brown">
            <asp:HyperLink NavigateUrl="~/reportegoleadores.aspx" runat="server" Font-Underline="false" CssClass="linkbutton">
            <asp:Image ImageUrl="~/images/podium.png" runat="server" Width="80px" Height="80px"  ImageAlign="Right"/>
            <br />
            Top 3 goleadores
            </asp:HyperLink>
        </div>
        <div class="rectangulo-1" style="background-color:blue">
            <asp:HyperLink NavigateUrl="~/reportetecnicos.aspx" runat="server" Font-Underline="false" CssClass="linkbutton">
            <asp:Image ImageUrl="~/images/coach.png" runat="server" Width="80px" Height="80px"  ImageAlign="Right"/>
            <br />
            Búsqueda DT
            </asp:HyperLink>
        </div>
    </div>
</asp:Content>
