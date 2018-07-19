<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Controls/Product.cs" Inherits="Protech.MX.Controls.Templates.Controls.Product" %>
<%@ Register TagPrefix="mx" TagName="Prices" Src="Controls/ProductPrices.ascx" %>
<%@ Register TagPrefix="mx" TagName="AddToCart" Src="Controls/ProductAddToCart.ascx" %>
<%@ Register TagPrefix="mx" TagName="Variants" Src="Controls/ProductVariants.ascx" %>

<div class="GlobalFindProductTemplate_MXDefault">
    <div class="photo" style="text-align:center !important; vertical-align: middle;">
        <a href="<%= this.ProductDetailsPageUrl %>?productid=<%= this.CurrentItem["productid"] %>">
            <img src='/Resources/MX/Images/<%= this.CurrentItem["pa_wimage"] %>' style="max-width: 100%; height:auto;"  />
        </a>
    </div>
    <div class="details">
        <h3>
            <a href="<%= this.ProductDetailsPageUrl %>?productid=<%= this.CurrentItem["productid"] %>">
                <%= this.CurrentItem["name"] %>
            </a>
        </h3>
        <ul>
            <% if (this.CurrentItemColumnContais("pa_wauthorname") && (Convert.ToString(this.CurrentItem["pa_wauthorname"]) != String.Empty))
               { %>
                <li><b>Author:</b>
                    <%= this.CurrentItem["pa_wauthorname"] %></li>
            <% } %>
            <% if (this.CurrentItemColumnContais("pa_wcategory") && (Convert.ToString(this.CurrentItem["pa_wcategory"]) != String.Empty))
               { %>
                <li><b>Category:</b>
                    <%= this.CurrentItem["pa_wcategory"] %></li>
            <% } %>
            <% if (this.CurrentItemColumnContais("pa_wisbn") && (Convert.ToString(this.CurrentItem["pa_wisbn"]) != String.Empty))
               { %>
                <li><b>ISBN:</b>
                    <%= this.CurrentItem["pa_wisbn"]%></li>
            <% } %>
            <% if (this.CurrentItemColumnContais("pa_wcover") && (Convert.ToString(this.CurrentItem["pa_wcover"]) != String.Empty))
               { %>
                <li><b>Format:</b>
                    <%= this.CurrentItem["pa_wcover"]%></li>
            <% } %>
            <% if (this.CurrentItemColumnContais("pa_wlanguage") && (Convert.ToString(this.CurrentItem["pa_wlanguage"]) != String.Empty))
               { %>
                <li><b>Language:</b>
                    <%= this.CurrentItem["pa_wlanguage"]%></li>
            <% } %>
            <% if (this.CurrentItemColumnContais("pa_wpublishedon") && (Convert.ToString(this.CurrentItem["pa_wpublishedon"]) != String.Empty))
               { %>
                <li><b>Published:</b>
                    <%= this.CurrentItem["pa_wpublishedon"] %></li>
            <% } %>
            <% if (this.CurrentItemColumnContais("pa_wnumberofpages") && (Convert.ToString(this.CurrentItem["pa_wnumberofpages"]) != String.Empty))
               { %>
                <li><b>Pages:</b>
                    <%= this.CurrentItem["pa_wnumberofpages"] %></li>
            <% } %>
        </ul>
	    <mx:Prices ID="uscPrices" runat="server"></mx:Prices>
        <mx:Variants ID="uscVariants" runat="server"></mx:Variants>
        <mx:AddToCart ID="uscAddToCart" runat="server"></mx:AddToCart>
    </div>
    <p class="trbot_description">
        <%= this.CurrentItem["description"]%>
    </p>
</div>

