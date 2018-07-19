<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Controls/Product.cs" Inherits="Protech.MX.Controls.Templates.Controls.Product" %>
<%@ Register TagPrefix="mx" TagName="Prices" Src="Controls/ProductPrices.ascx" %>
<%@ Register TagPrefix="mx" TagName="Variants" Src="Controls/ProductVariants.ascx" %>

    <h3><%# Eval("name").toString() %></h3>
        <div>
        
            <p>
            
                <mx:Prices ID="uscPrices" runat="server"></mx:Prices>
                <mx:Variants ID="uscVariants" runat="server"></mx:Variants>
            
            </p>
        
        </div>

