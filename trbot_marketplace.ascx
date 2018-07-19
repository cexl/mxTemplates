<style>
	.tbot-header-wrapper{display: none;}
	.marketplace_card {padding-left: 10px !important; display: inline-block; margin:10px auto; position: relative;}
	/*.marketplace_card_image:hover {opacity: 0.6 !important;}*/
	.marketplace_card:hover .marketplace_card_overlay {opacity: 0.8;}
	.marketplace_card_overlay {position: absolute; top: 0; bottom: 0; left: 0; right: 0; height: 150px; width: 290px; opacity: 0; transition: .5s ease; background-color: #004e94; margin-left:10px;}
	.marketplace_card_overlay_text {color: white; font-size: 20px; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); -ms-transform: translate(-50%, -50%); text-align: center;}
	.marketplace_card_overlay_text > a {color: white !important; font-size: 20px; font-weight: bold;}
	.marketplace_card_overlay:hover {opacity: .8;}

</style>
<div class="marketplace_card">
	
	<script>

		var offerimgURL = "<%# Eval("tbot_offerthumbnail").toString()%>";
		var offerimgText = "<img src='"+offerimgURL+"' class='marketplace_card_image' />";

		if (offerimgURL == ""){

			offerimgText = "<img src='http://placehold.it/290x150' class='marketplace_card_image' />";
		}

		document.write(offerimgText);

	</script>
	<a href="/Membership/Marketplace/OfferDetails.aspx?Offerid=<%# Eval("tbot_marketplaceid").toString()%>" target="_blank"><div class="marketplace_card_overlay"></div></a>
		
		<!--<span class="marketplace_card_overlay_text"><%# Eval("tbot_companynameid").toString()%></%#></span>-->
	
	
	
</div>
