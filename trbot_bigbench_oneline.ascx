<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Controls/Product.cs" Inherits="Protech.MX.Controls.Templates.Controls.Product" %>
<%@ Register TagPrefix="mx" TagName="Prices" Src="Controls/ProductPrices.ascx" %>
<%@ Register TagPrefix="mx" TagName="AddToCart" Src="Controls/ProductAddToCart.ascx" %>
<%@ Register TagPrefix="mx" TagName="Variants" Src="Controls/ProductVariants.ascx" %>

	
<style>

	.product_sales_wrapper {
		
		width: 26% !important;
		float:left;
		border: 1px solid gray;
		margin: 20px;
		padding: 10px;
	
	}
	
	
</style>

<div class="product_sales_wrapper">
	
	<div class="product_sales_title">
		
		<h3>		
			
			<a href="https://www.bot.com/Services/DevelopYourBusiness/CompensationSurveys.aspx"><%= this.CurrentItem["name"] %> </%></a>
			
		</h3>
		
	</div>
		
	<div class="product_sales_desc">
		
		<div class="product_sales_price">
		
			<p>
			
				Non-Participants: 
			
			</p>
			
			<p>
			
				<%= this.CurrentItem["price"] %> </%>
			
			</p>
		
		</div>
		
	</div>
		
	<div class="product_sales_footer">

		<mx:AddToCart ID="uscAddToCart" runat="server"></mx:AddToCart>
		
		<p><%= this.CurrentItem["description"]%></%></p>

	</div>

</div>