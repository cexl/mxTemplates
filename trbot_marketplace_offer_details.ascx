<style>

	.marketplace_card {;}
	
	/** Logo **/
	.marketplace_card_logo {text-align:center; margin-bottom: 20px;}
	.marketplace_card_logo > img {max-height: 250px; max-width: 400px;}
	
	/** Content Title **/
	.marketplace_card_content_title {margin-right: 10px; margin-bottom: 20px; }
	.marketplace_card_content_title > h3 {font-size: 23px !important; text-align:center;}
	
	/** Content Description **/
	.marketplace_card_content_description {margin: 20px; padding: 0px 25px;}
	
	.marketplace_card_content_expiration {background-color: aliceblue; text-align:center; margin: 20px auto; width: 90% !important; padding:10px; font-weight: bold;}
	
	.marketplace_card_contactinformation {background-color: aliceblue; text-align:center; margin: 40px auto; width: 90% !important;}
	
	.marketplace_card_content_footer {margin-left: 25px; font-size: 75%; font-weight:bold;}
	
	.card_icon {display: inline-block; padding: 10px;}
	
	.tbot-header-text, .tbot-header-wrapper {display:none;}
	
	.marketplace_header {background: #01A1DF; height: 90px !important; margin-bottom: 20px; width: 960px !important;}
	.marketplace_header_text {color: white; padding-left: 40px; height: 70px; line-height: 70px; font-size: 36px !important; text-transform: uppercase;}
	.marketplace_header_tags {color: white; padding-left: 40px; font-size: 10px !important; text-transform: uppercase;}

</style>
<link href="https://use.fontawesome.com/releases/v5.0.8/css/all.css" rel="stylesheet">

<div class="marketplace_header">

	<div class="marketplace_header_text">
	
		<%# Eval("tbot_offercompanyname").toString()%></%#>
		
	</div>
	<div class="marketplace_header_tags">
	
		Category Tags: <%# Eval("tbot_categories").toString()%></%#>
		
	</div>

</div>

<div class="marketplace_card">
	
	<div class="marketplace_card_logo">
	
		<script>

			var offerimgURL = "<%# Eval("tbot_offerimage").toString()%>";
			var offerimgText = "<img src='"+offerimgURL+"' />";

			if (offerimgURL == ""){

				offerimgText = "<img src='http://placehold.it/450x200' />";
			}

			document.write(offerimgText);

		</script>
	
	</div>
	
	<div class="marketplace_card_content">

		<div class="marketplace_card_content_title">

			<h3><%# Eval("tbot_name").toString() %></h3>

		</div>
			
		<div class="marketplace_card_content_expiration">
		
			Offer Valid: <%# DateTime.parse(Eval("tbot_offerstartdate").toString()).toString("MMMM dd, yyy") %> - <%# DateTime.parse(Eval("tbot_offerexpirationdate").toString()).toString("MMMM dd, yyy") %></%#>
			
		</div>

		<div class="marketplace_card_content_description">

			<p><%# Eval("tbot_offerdescription").toString()%></%#></p>

		</div>

	</div>
	
	<div class="marketplace_card_contactinformation">
	
		<span class="card_icon"><i class="fa fa-phone"> </i> <%# Eval("tbot_publictelephone").toString()%></%#></span>
		<span class="card_icon"><i class="fa fa-envelope"> </i><a href='mailto:<%# Eval("tbot_publicemail").toString()%>'> <%# Eval("tbot_publicemail").toString()%></%#></a></span>
		<span class="card_icon"><i class="fa fa-globe"> </i><a href='<%# iif(Eval("tbot_website").ToString().ToLower().StartsWith("http"), Eval("tbot_website").ToString(), "http://" + Eval("tbot_website").ToString()) %>' target="_blank"> <%# Eval("tbot_website").toString()%></%#></a></span>
		<span class="card_icon"><i class="fas fa-map-marker-alt"></i><a href='https://www.google.ca/maps/place/<%# Eval("tbot_offeraddress").toString()%>' target='_blank'> View Map</a></span>
	
	</div>

</div>