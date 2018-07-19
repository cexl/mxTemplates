<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProductPrices.ascx.cs" Inherits="Protech.MX.Controls.Templates.Controls.ProductPrices" %>
<%@ Register TagPrefix="telerik" Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" %>

<asp:Repeater ID="rptPrices" runat="server">
    <HeaderTemplate>
        <ul class="pricing">
    </HeaderTemplate>
    <ItemTemplate>
            <li><b><%# Eval("Key") %>:</b> <%# Eval("Value") %></li>
    </ItemTemplate>
    <FooterTemplate>
        </ul>
    </FooterTemplate>
</asp:Repeater>

<asp:Panel ID="pnlYourPrice" runat="server">
    <ul class="yourPrice">
        <li><b>Your Price:</b> <asp:Literal runat="server" ID="litYourPrice"></asp:Literal></li>
    </ul>
</asp:Panel>

<asp:Panel runat="server" ID="pnlQuantityDiscount">
    <div id="<%=this.SalesProductEntity.Id.ToString()%>">
        <telerik:RadGrid ID="rgGrid" runat="server" GridLines="None" AllowFilteringByColumn="False" ShowGroupPanel="False" ShowStatusBar="False" AutoGenerateColumns="True" Width="90%">
        </telerik:RadGrid>
    </div>
    <br />
</asp:Panel>