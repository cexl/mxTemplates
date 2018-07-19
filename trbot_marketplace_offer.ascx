<style>

	.marketplace_logo {padding: 0px 15px;}
	.marketplace_desc {max-width: 550px !important; padding-top: 20px; padding-right: 10px;}
	.marketplace_title > h3 {font-size: 23px !important;}
	.marketplace_offer {margin-bottom: 20px;;}
	.marketplace_contactInfo {padding: 0px 10px; margin-left: 10px; border-left: 1px solid black;}
	.marketplace_contactInfo_title {;}
	.marketplace_contactInfo_desc {padding-top: 20px;}
	.marketplace_contactInfo_desc_list {padding:0; list-style-type: none;}
	.marketplace_offer_tags {padding-left: 15px; padding-top: 10px;}

</style>

<div class="marketplace_offer">

	<table>
	
		<tbody>
		
			<tr>
			
				<td>
				
					<div class="marketplace_logo">
						
						<script>
						
							var offerimgURL = "<%# Eval("tbot_offerimage").toString()%>";
							var offerimgText = "<img src='"+offerimgURL+"' height='140px' width='140px' />";
							
							if (offerimgURL == ""){
								
								offerimgText = "<img src='http://placehold.it/140x140' />";
							}
							
							document.write(offerimgText);
						
						</script>
					
					</div>
					
				</td>
				<td style="vertical-align: top !important;">
					
					<div class="marketplace_title">
					
						<h3><%# Eval("tbot_name").toString() %></h3>
					
					</div>
					<div class="marketplace_desc">
					
						
						<p><%# Eval("tbot_offerdescription").toString()%></p>
					
					</div>
					
					<div class="marketplace_footer">
					
						<p>Offer Valid: <%# Eval("tbot_offerstartdate").toString() %> - <%# Eval("tbot_offerexpirationdate").toString() %></%#></p>
					
					</div>
				
				</td>
				<td style="vertical-align: top !important;">
				
					<div class="marketplace_contactInfo">
					
						<div class="marketplace_contactInfo_title">
						
							<h3>Contact Information</h3>
							
						
						</div>
						
						<div class="marketplace_contactInfo_desc">
						
							<ul class="marketplace_contactInfo_desc_list">
							
								<li><%# Eval("a_04fd885fa186e71180ea000d3a01109b-telephone1").toString()%></%#></li>
								<li><a href='mailto:<%# Eval("tbot_publicemail").toString()%>'><%# Eval("tbot_publicemail").toString()%></%#></a></li>
								<li><a href='<%# iif(Eval("tbot_website").ToString().ToLower().StartsWith("http"), Eval("tbot_website").ToString(), "http://" + Eval("tbot_website").ToString()) %>' target="_blank"><%# Eval("tbot_website").toString()%></%#></a></li>
								<li><a href='https://www.google.ca/maps/place/<%# Eval("tbot_offeraddress").toString()%>' target='_blank'>View Map</a></li>
							
							</ul>
						
						</div>
						
					</div>
				
				</td>
			
			</tr>
		
		</tbody>
	
	</table>
	
	<div class="marketplace_offer_tags">
					
		<h3><%# Eval("tbot_companynameid").toString()%></%#></h3>
		<sub>Category Tags: <%# Eval("tbot_categories").toString()%></%#></sub>

	</div>

</div>