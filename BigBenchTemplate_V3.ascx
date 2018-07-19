<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Controls/Product.cs" Inherits="Protech.MX.Controls.Templates.Controls.Product" %>
<%@ Register TagPrefix="mx" TagName="Prices" Src="Controls/ProductPrices.ascx" %>
<%@ Register TagPrefix="mx" TagName="AddToCart" Src="Controls/ProductAddToCart.ascx" %>
<%@ Register TagPrefix="mx" TagName="Variants" Src="Controls/ProductVariants.ascx" %>

<div class="GlobalFindProductTemplate_MXDefault">
    <div class="details">
        <h3>
            <a href="https://www.bot.com/Services/DevelopYourBusiness/CompensationSurveys.aspx">
				<%= this.CurrentItem["name"] %> </%>
            </a>
        </h3>

		<table style=" margin-top:10px; width:100%; padding-left:20px;">
		
			<tbody>
			
				<tr>
				
					<td style="text-align:left;">
					
						<h4>Non Participants:</h4>
					
					</td>
					
					<td style="text-align:right;"><%= this.CurrentItem["price"] %></td>
				
				</tr>
			
			</tbody>
		
		</table>
		
        <mx:AddToCart ID="uscAddToCart" runat="server"></mx:AddToCart>
    </div>
    <p>
		<%= this.CurrentItem["description"]%></%>
    </p>
</div>