<style>

	.trbot_events_card {padding: 10px; margin: 20px 0px;}
	.trbot_events_card_thumbnail {padding-right: 40px !important;}
	.trbot_events_card_header, .trbot_events_card_body {vertical-align: bottom !important;}
	.trbot_events_card_title {;}
	.trbot_events_card_footer {vertical-align: bottom; padding-top: 20px;}
	.trbot_events_card_body {padding-bottom: 20px; vertical-align: bottom;}
	.big-button {margin-right: 10px !important;}
	
	.trbot_separator {margin: 30px auto; width: 80%;}

</style>

<div class="trbot_events_card">

	<table class="trbot_events_card_table">
	
		<tbody>
		
			<tr>
			
				<td class="trbot_events_card_thumbnail">
					
					<script>
				
						var imgURL = "<%# Eval("tbot_thumbnailURL").toString()%>";
						var eventURL = "<%# Eval("pa_eventmeetingsetupid").toString()%>";
						var imgContent = "<a href='http://www.bot.com/EventDetails.aspx?meetingid="+eventURL+"' target='_blank'><img src='"+imgURL+"'/></a>";
						var eventType = "<%# Eval("pa_secondaryglaccount").toString()%>";
						var eventPrimaryType = "<%# Eval("pa_primaryglaccount").toString()%>";

						if (imgURL == ""){

							
							if (eventType.includes("ABF")){
								
								imgContent = "<a href='http://www.bot.com/EventDetails.aspx?meetingid="+eventURL+"' target='_blank'><img src='https://www.bot.com/portals/0/images/events/placeholder/Member%20workshop-EventPlaceholder.png'/></a>";
							}
							
							else if (eventType.includes("TRSM")){
								
								imgContent = "<a href='http://www.bot.com/EventDetails.aspx?meetingid="+eventURL+"' target='_blank'><img src='https://www.bot.com/portals/0/images/events/placeholder/TRSM-EventPlaceholder.png'/></a>";
								
							}
							
							else if (eventType.includes("Young")) {
								
								imgContent = "<a href='http://www.bot.com/EventDetails.aspx?meetingid="+eventURL+"' target='_blank'><img src='https://www.bot.com/portals/0/images/events/placeholder/YPN-EventPlaceholder.png'/></a>";
								
							}
							
							else if (eventType.includes("Annual Dinner") || eventType.includes("Chair's Luncheon") || eventType.includes("Golf Revenue") || eventType.includes("POYA") || eventType.includes("BEA")){
								
								imgContent = "<a href='http://www.bot.com/EventDetails.aspx?meetingid="+eventURL+"' target='_blank'><img src='https://www.bot.com/portals/0/images/events/placeholder/Marquee-EventPlaceholder.png'/></a>";
							}
							
							else if (eventType.includes("Distinguished")){
								
								imgContent = "<a href='http://www.bot.com/EventDetails.aspx?meetingid="+eventURL+"' target='_blank'><img src='https://www.bot.com/portals/0/images/events/placeholder/Podium-EventPlaceholder.png'/></a>";
							}
							
							else if (eventType.includes("Power") && eventType.includes("Breakfast")){
								
								imgContent = "<a href='http://www.bot.com/EventDetails.aspx?meetingid="+eventURL+"' target='_blank'><img src='https://www.bot.com/portals/0/images/events/placeholder/Partnered-EventPlaceholder.jpg'/></a>";
							}
							
							else if (eventType.includes("Partnered")){
								
								imgContent = "<a href='http://www.bot.com/EventDetails.aspx?meetingid="+eventURL+"' target='_blank'><img src='https://www.bot.com/portals/0/images/events/placeholder/Partnered-EventPlaceholder.jpg'/></a>";
							}
							
							else if (eventType.includes("After Hours Networking") || eventType.includes("RBC") || eventType.includes("SMB Exchange")){
								
								imgContent = "<a href='http://www.bot.com/EventDetails.aspx?meetingid="+eventURL+"' target='_blank'><img src='https://www.bot.com/portals/0/images/events/placeholder/RBC%20Business%20Advice%20Series-EventPlaceholder.png'/></a>";
							}
							
							else if (eventPrimaryType.includes("Smart Cities") || eventType.includes("Transportation")) {
								
								imgContent = "<a href='http://www.bot.com/EventDetails.aspx?meetingid="+eventURL+"' target='_blank'><img src='https://www.bot.com/portals/0/images/events/placeholder/Summits-EventPlaceholder.png'/></a>";
							}
							
							else if (eventPrimaryType.includes("Market Activation")){
								
								imgContent = "<a href='http://www.bot.com/EventDetails.aspx?meetingid="+eventURL+"' target='_blank'><img src='https://www.bot.com/portals/0/images/events/placeholder/MAP-EventPlaceholder.jpg'/></a>";
							}
							
							else if (eventPrimaryType.includes("TAP")){
								
								imgContent = "<a href='http://www.bot.com/EventDetails.aspx?meetingid="+eventURL+"' target='_blank'><img src='https://www.bot.com/portals/0/images/events/placeholder/TAP-EventPlaceholder.png'/></a>";
							}
							
							else {
								
								imgContent = "<p><%# Eval("pa_primaryglaccount").toString()%></p>";
								
							}
							
						}

						document.write(imgContent);
				
				</script>
				
				</td>
				
				<td style="vertical-align: top !important;">
				
					<div class="trbot_events_card_header">
					
						<h3><%# DateTime.parse(Eval("pa_meetingstartdate").toString()).toString("MMMM dd, yyy") %></h3>
					
					</div>
						
					<div class="trbot_events_card_title">
					
						<h4><%# Eval("pa_eventmeetingidname").toString()%></%#></h4>
						
					</div>
					<div class="trbot_events_card_body">
						
						<script>
						
							var boilerplate = "<%# Eval("tbot_landingpagedescription").toString() %>";
							var boilerplateContent = "<p>"+boilerplate+"</p>";
							
							if (boilerplate == "") {
								
								boilerplateContent = "<p>More Information to Follow</p>";
								
							}
							
							document.write(boilerplateContent);
						
						</script>
					
					<div class="trbot_events_card_footer">
					
						<span class="big-button"><a href='Http://www.bot.com/EventDetails.aspx?meetingid=<%# Eval("pa_eventmeetingsetupid").toString() %>' target="_blank">More Info</a></span>
						
						<script>
						
							var flyerurl = "<%# Eval("tbot_flyerurl").toString() %>";
							var flyercontent = "<span class='big-button'><a href='"+flyerurl+"' target='_blank'>View Flyer</a></span>";
							
							if (flyerurl == ""){
								
								flyercontent = "";
								
							}
							
							document.write(flyercontent);
						
						</script>
						
						<span class="big-button"><a href='Http://www.bot.com/EventDetails.aspx?meetingid=<%# Eval("pa_eventmeetingsetupid").toString() %>' target="_blank">Buy Tickets</a></span>
					
					</div>
				
				</td>
			
			</tr>
		
		</tbody>
	
	</table>

</div>

<div class="trbot_separator">

	<hr />

</div>
