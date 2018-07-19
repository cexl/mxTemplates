<style>

	.membership_details_title_background {background-color: #01A1DF; padding: 10px 0px; width: 960px !important;}
	.membership_details_title {margin-left: 40px !important; color: white !important; font-size: 32px !important; text-transform: uppercase; line-height: 70px;}
	.tbot-header-text, .tbot-header-wrapper {display: none;}
	.membership_details_desc {margin-left: 15px; padding: 10px;}
	.membership_details_desc_logo {float:left;}
	.membership_details_desc_information {display:inline-block; margin-left: 10px; width: 75%; height:200px;}
	.membership_details_desc_information > table {width: 100%; padding: 10px;}
	.MXDefault h3 {margin-top: 10px !important; display: inline-block;}
	.membership_details_desc_footer {display:inline-block; padding: 10px; width:100%; vertical-align: baseline;}
	.membership_details_boilerplate {padding: 15px; margin-left:10px;}
	.fa {padding-right: 10px;}
	.membership_details_industrytags {margin-left: 10px; padding-left: 15px; color: gray; font-size: 12px;}
	.membership_details_motw {text-align:center;}
	.membership_details_smart {display: inline-block; height: 500px; float:right;}
	.membership_details_expert{display: inline-block; height: 500px;}
	.membership_details_bottom_section {width: 100%; margin-top: 20px;}
	.membership_details_wrapper {width: 960px !important;}
	.membership_details_industrycodes {padding: 10px;}


</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">

<% IF Request("type").contains("Influencer") Then%>

	<div class="membership_details_wrapper">
	
		<div class="membership_details_title_background">
		
			<h1 class="membership_details_title"><%# Eval("name").toString() %></%#></h1>
		
		</div>
		
		<div class="membership_details_desc">
		
			<div class="membership_details_desc_logo">
				
				<script>
				
					var imgURL = "<%# Eval("pa_companylogo").toString()%>";
					var imgContent = "<img src='/Portals/0/Images/memdir/Influencer/"+imgURL+"'/>";
					
					if (imgURL == ""){
						
						imgContent = "";
					}
					
					document.write(imgContent);
				
				</script>
			
			</div>
			
			<div class="membership_details_desc_information">
			
				<table>
				
					<tbody>
					
						<tr>
						
							<td>
							
								<ul>
								
									<li><h3>Website: </h3><a href='<%# iif(Eval("websiteurl").ToString().ToLower().StartsWith("http"), Eval("websiteurl").ToString(), "http://" + Eval("websiteurl").ToString()) %>' target="_blank"><%# Eval("websiteurl").toString()%></%#></a></li>
									<li><h3>Email: </h3><%# Eval("emailaddress1").toString() %></%#> </li>
									<li><h3>Phone: </h3><%# Eval("telephone1").toString() %></%#> </li>
									
								
								</ul>
							
							</td>
							
							<td>
							
								<ul>
								
									<li><h3>Contact Name: </h3><%# Eval("a_410707b195544cd984376608b1802904-firstname").toString() %> <%# Eval("a_410707b195544cd984376608b1802904-lastname").toString() %></%#> </li>
									<li><h3>Title: </h3><%# Eval("a_410707b195544cd984376608b1802904-jobtitle").toString() %></%#> </li>
									<li><h3>Email: </h3><a href='mailto:<%#Eval("a_410707b195544cd984376608b1802904-emailaddress1").toString()%>'><%# Eval("a_410707b195544cd984376608b1802904-emailaddress1").toString() %></%#></a> </li>
								
								</ul>
							
							</td>
							
						</tr>
					
					</tbody>
				
				</table>
				
				<div class="membership_details_industrycodes">
				
					<ul>
					
						<li><h3>Industry:</h3><%# iif(Eval("tbot_naicstierone").toString().length > 0, iif(Eval("tbot_naicstiertwo").toString().length > 0, iif(Eval("tbot_naicstierthree").toString().length > 0, Eval("tbot_naicstierone").toString() + " - " + Eval("tbot_naicstiertwo").toString() + " - " + Eval("tbot_naicstierthree").toString(), Eval("tbot_naicstierone").toString() + " - " + Eval("tbot_naicstiertwo").toString()), Eval("tbot_naicstierone").toString()), "")%></li>
					
					</ul>
				
				</div>
				
				<div class="membership_details_desc_footer">
			
					<div class="membership_details_desc_footer-social">
					
						<!--<a href='<%# Eval("tbot_twitter").toString() %>' target="_blank"><i class="fa fa-twitter-square fa-2x" aria-hidden="true"></i></a>
						<a href='<%# Eval("tbot_linkedin").toString() %>' target="_blank"><i class="fa fa-linkedin-square fa-2x" aria-hidden="true"></i></a> -->
						
						<script>
						
							var twitURL = "<%# Eval("tbot_twitter").toString() %>";
							var linkURL = "<%# Eval("tbot_linkedin").toString() %>";
							
							var twitContent = "<a href='"+twitURL+"' target='_blank'><i class='fa fa-twitter-square fa-2x' aria-hidden='true'></i></a>";
							var linkContent = "<a href='"+linkURL+"' target='_blank'><i class='fa fa-linkedin-square fa-2x' aria-hidden='true'></i></a>";
							
							if (twitURL == "") {
								
								twitContent = "";
							}
							
							if (linkURL == ""){
								
								linkContent = "";
							}
							
							document.write(twitContent);
							document.write(linkContent);
							
						</script>
						
						<script>
						
							var annualreportURL = "<%# Eval("tbot_latestannualreport").toString()%>";
							var annualreportContent = "<a href='"+annualreportURL+"' target='_blank'><img src='https://www.bot.com/Portals/0/Images/Pages/membership/Member%20Directory_ARicon_v4.jpg' style='vertical-align:sub !important;'/></a>";

								if (annualreportURL == ""){
									
									annualreportContent = "";
									
								}
							
							document.write(annualreportContent);
						
						</script>
					
					</div>
			
			</div>
			
			</div>
		
		</div>
		
		<div class="membership_details_boilerplate">
		
			<script>
			
				var boilerplate = "<p><%# Eval("tbot_boilerplate").toString()%></p>";
				var boilerplateContent = "<p>"+boilerplate+"</p>";
				
				if (boilerplate == ""){
					
					
					boilerplateContent = "<p>Corporate members of the Toronto Region Board of Trade chose us as a trusted business partner to build the resources they need, enhance their profile and expand their influence.</p><p>The Toronto Region Board of Trade is one of the largest and most influential chambers of commerce in North America. Our constant flow of ideas, people and introductions to city-builders and government officials firmly roots us as connectors for─ and with─the business community. We act as catalysts for the region’s growth agenda, at home and on a global scale with our World Trade Centre Toronto franchise. Backed by more than 12,000 members, we advocate on their behalf for policy change that drives the growth and competitiveness of the Toronto region. We want Toronto to be recognized as one of the most competitive and sought after business regions in the world, and we believe this reputation starts with our members and their business.</p>"
					
				}
				document.write(boilerplateContent);
			
			</script>
		
		</div>
	
		
		<div class="membership_details_motw">
		
			<script>
			
				var motwURL = "<%#Eval("tbot_memberoftheweek").toString()%>";
				var motwURLContent = "<img src='"+motwURL+"'/>";
				
				if (motwURL == ""){
					
					motwURLContent = "<img src='https://www.bot.com/Portals/0/Images/Pages/memberDirectory/Member%20Directory_motw.jpg'/>";
				}
				
				document.write(motwURLContent);
			
			</script>
		
		</div>
			
		
		<div class="membership_details_bottom_section">
		
			<div class="membership_details_expert">

				<div class="membership_details_expert_title">

					<a href='https://www.bot.com/Membership/ResourcesServices/MemberDirectory/AsktheExpert.aspx?accountid=<%#Eval("accountid").toString()%>' target='_blank'>

						<img src="https://www.bot.com/Portals/0/Images/Pages/memberDirectory/Member%20Directory_asktheexpert.jpg"/>

					</a>

				</div>
		
			</div>

			<div class="membership_details_smart">

				<div class="membership_details_smart_title">

					<a href='https://www.bot.com/Membership/ResourcesServices/MemberDirectory/SmartCompany.aspx?accountid=<%#Eval("accountid").toString()%>' target='_blank'>

						<img src="https://www.bot.com/Portals/0/Images/Pages/memberDirectory/Member%20Directory_smartco.jpg"/>

					</a>

				</div>

			</div>
		
		</div>
	
	</div>
	

<%ElseIF Request("type").contains("Influence") Then%>

	<div class="membership_details_wrapper">
	
		<div class="membership_details_title_background">
		
			<h1 class="membership_details_title"><%# Eval("name").toString() %></%#></h1>
		
		</div>
		
		<div class="membership_details_desc">
		
			<div class="membership_details_desc_logo">
			
				<script>
				
					var imgURL = "<%# Eval("pa_companylogo").toString()%>";
					var imgContent = "<img src='/Portals/0/Images/memdir/Influence/"+imgURL+"'/>";
					
					if (imgURL == ""){
						
						imgContent = "";
					}
					
					document.write(imgContent);
				
				</script>
			
			</div>
			
			<div class="membership_details_desc_information">
			
				<table>
				
					<tbody>
					
						<tr>
						
							<td>
							
								<ul>
								
									<li><h3>Website: </h3><a href='<%# iif(Eval("websiteurl").ToString().ToLower().StartsWith("http"), Eval("websiteurl").ToString(), "http://" + Eval("websiteurl").ToString()) %>' target="_blank"><%# Eval("websiteurl").toString()%></%#></a></li>
									<li><h3>Email: </h3><%# Eval("emailaddress1").toString() %></%#> </li>
									<li><h3>Phone: </h3><%# Eval("telephone1").toString() %></%#> </li>
								
								</ul>
							
							</td>
							
							<td>
							
								
								<ul>
								
									<li><h3>Contact Name: </h3><%# Eval("a_410707b195544cd984376608b1802904-firstname").toString() %> <%# Eval("a_410707b195544cd984376608b1802904-lastname").toString() %></%#> </li>
									<li><h3>Title: </h3><%# Eval("a_410707b195544cd984376608b1802904-jobtitle").toString() %></%#> </li>
									<li><h3>Email: </h3><a href='mailto:<%#Eval("a_410707b195544cd984376608b1802904-emailaddress1").toString()%>'><%# Eval("a_410707b195544cd984376608b1802904-emailaddress1").toString() %></%#></a> </li>
								
								</ul>
							
							</td>
							
						</tr>
					
					</tbody>
				
				</table>
				
				<div class="membership_details_industrycodes">
				
					<ul>
					
						<li><h3>Industry:</h3><%# iif(Eval("tbot_naicstierone").toString().length > 0, iif(Eval("tbot_naicstiertwo").toString().length > 0, iif(Eval("tbot_naicstierthree").toString().length > 0, Eval("tbot_naicstierone").toString() + " - " + Eval("tbot_naicstiertwo").toString() + " - " + Eval("tbot_naicstierthree").toString(), Eval("tbot_naicstierone").toString() + " - " + Eval("tbot_naicstiertwo").toString()), Eval("tbot_naicstierone").toString()), "")%></li>
					
					</ul>
				
				</div>
				
				<div class="membership_details_desc_footer">
			
					<div class="membership_details_desc_footer-social">
					
						<script>
						
							var twitURL = "<%# Eval("tbot_twitter").toString() %>";
							var linkURL = "<%# Eval("tbot_linkedin").toString() %>";
							
							var twitContent = "<a href='"+twitURL+"' target='_blank'><i class='fa fa-twitter-square fa-2x' aria-hidden='true'></i></a>";
							var linkContent = "<a href='"+linkURL+"' target='_blank'><i class='fa fa-linkedin-square fa-2x' aria-hidden='true'></i></a>";
							
							if (twitURL == "") {
								
								twitContent = "";
							}
							
							if (linkURL == ""){
								
								linkContent = "";
							}
							
							document.write(twitContent);
							document.write(linkContent);
							
						</script>
					
					</div>
			
			</div>
			
			</div>
		
		</div>
		
		<div class="membership_details_boilerplate">
		
			<script>
			
				var boilerplate = "<%# Eval("tbot_boilerplate").toString()%>";
				var boilerplateContent = "<p>"+boilerplate+"</p>";
				
				if (boilerplate == ""){
					
					
					boilerplateContent = "<p>Corporate members of the Toronto Region Board of Trade chose us as a trusted business partner to build the resources they need, enhance their profile and expand their influence.</p><p>The Toronto Region Board of Trade is one of the largest and most influential chambers of commerce in North America. Our constant flow of ideas, people and introductions to city-builders and government officials firmly roots us as connectors for─ and with─the business community. We act as catalysts for the region’s growth agenda, at home and on a global scale with our World Trade Centre Toronto franchise. Backed by more than 12,000 members, we advocate on their behalf for policy change that drives the growth and competitiveness of the Toronto region. We want Toronto to be recognized as one of the most competitive and sought after business regions in the world, and we believe this reputation starts with our members and their business.</p>"
					
				}
				document.write(boilerplateContent);
			
			</script>
		
		</div>
		
		<div class="membership_details_motw">
		
			<script>
			
				var motwURL = "<%#Eval("tbot_memberoftheweek").toString()%>";
				var motwURLContent = "<img src='"+motwURL+"'/>";
				
				if (motwURL == ""){
					
					motwURLContent = "<img src='https://www.bot.com/Portals/0/Images/Pages/memberDirectory/Member%20Directory_motw.jpg'/>";
				}
				
				document.write(motwURLContent);
			
			</script>
		
		</div>
		
		<div class="membership_details_bottom_section">
		
			<div class="membership_details_expert">

				<div class="membership_details_expert_title">

					<a href='https://www.bot.com/Membership/ResourcesServices/MemberDirectory/AsktheExpert.aspx?accountid=<%#Eval("accountid").toString()%>' target='_blank'>

						<img src="https://www.bot.com/Portals/0/Images/Pages/memberDirectory/Member%20Directory_asktheexpert.jpg"/>

					</a>

				</div>
		
			</div>
		
		</div>
		
	</div>
	
<%ElseIF Request("type").contains("ProfilePlus") Then%>

	<div class="membership_details_wrapper">
	
		<div class="membership_details_title_background">
		
			<h1 class="membership_details_title"><%# Eval("name").toString() %></%#></h1>
		
		</div>
		
		<div class="membership_details_desc">
		
			<div class="membership_details_desc_logo">
			
				<script>
				
					var imgURL = "<%# Eval("pa_companylogo").toString()%>";
					var imgContent = "<img src='/Portals/0/Images/memdir/profileplus/"+imgURL+"'/>";
					
					if (imgURL == ""){
						
						imgContent = "";
					}
					
					document.write(imgContent);
				
				</script>
			
			</div>
			
			<div class="membership_details_desc_information">
			
				<table>
				
					<tbody>
					
						<tr>
						
							<td>
							
								<ul>
								
									<li><h3>Website: </h3><a href='<%# iif(Eval("websiteurl").ToString().ToLower().StartsWith("http"), Eval("websiteurl").ToString(), "http://" + Eval("websiteurl").ToString()) %>' target="_blank"><%# Eval("websiteurl").toString()%></%#></a></li>
									<li><h3>Email: </h3><%# Eval("emailaddress1").toString() %></%#> </li>
									<li><h3>Phone: </h3><%# Eval("telephone1").toString() %></%#> </li>
								
								</ul>
							
							</td>
							
							<td>
							
								
								<ul>
								
									<li><h3>Contact Name: </h3><%# Eval("a_410707b195544cd984376608b1802904-firstname").toString() %> <%# Eval("a_410707b195544cd984376608b1802904-lastname").toString() %></%#> </li>
									<li><h3>Title: </h3><%# Eval("a_410707b195544cd984376608b1802904-jobtitle").toString() %></%#> </li>
									<li><h3>Email: </h3><a href='mailto:<%#Eval("a_410707b195544cd984376608b1802904-emailaddress1").toString()%>'><%# Eval("a_410707b195544cd984376608b1802904-emailaddress1").toString() %></%#></a> </li>
								
								</ul>
							
							</td>
							
						</tr>
					
					</tbody>
				
				</table>
				
				<div class="membership_details_industrycodes">
				
					<ul>
					
						<li><h3>Industry:</h3><%# iif(Eval("tbot_naicstierone").toString().length > 0, iif(Eval("tbot_naicstiertwo").toString().length > 0, iif(Eval("tbot_naicstierthree").toString().length > 0, Eval("tbot_naicstierone").toString() + " - " + Eval("tbot_naicstiertwo").toString() + " - " + Eval("tbot_naicstierthree").toString(), Eval("tbot_naicstierone").toString() + " - " + Eval("tbot_naicstiertwo").toString()), Eval("tbot_naicstierone").toString()), "")%></li>
					
					</ul>
				
				</div>
				
				<div class="membership_details_desc_footer">
			
					<div class="membership_details_desc_footer-social">
					
						<script>
						
							var twitURL = "<%# Eval("tbot_twitter").toString() %>";
							var linkURL = "<%# Eval("tbot_linkedin").toString() %>";
							
							var twitContent = "<a href='"+twitURL+"' target='_blank'><i class='fa fa-twitter-square fa-2x' aria-hidden='true'></i></a>";
							var linkContent = "<a href='"+linkURL+"' target='_blank'><i class='fa fa-linkedin-square fa-2x' aria-hidden='true'></i></a>";
							
							if (twitURL == "") {
								
								twitContent = "";
							}
							
							if (linkURL == ""){
								
								linkContent = "";
							}
							
							document.write(twitContent);
							document.write(linkContent);
							
						</script>
						
					</div>
			
			</div>
			
			</div>
		
		</div>
		
		<div class="membership_details_boilerplate">
		
			<!--<script>
			
				var boilerplate = "<%# Eval("tbot_boilerplate").toString()%>";
				var boilerplateContent = "<p>"+boilerplate+"</p>";
				
				if (boilerplate == ""){
					
					
					boilerplateContent = "<p>Corporate members of the Toronto Region Board of Trade chose us as a trusted business partner to build the resources they need, enhance their profile and expand their influence.</p><p>The Toronto Region Board of Trade is one of the largest and most influential chambers of commerce in North America. Our constant flow of ideas, people and introductions to city-builders and government officials firmly roots us as connectors for─ and with─the business community. We act as catalysts for the region’s growth agenda, at home and on a global scale with our World Trade Centre Toronto franchise. Backed by more than 12,000 members, we advocate on their behalf for policy change that drives the growth and competitiveness of the Toronto region. We want Toronto to be recognized as one of the most competitive and sought after business regions in the world, and we believe this reputation starts with our members and their business.</p>"
					
				}
				document.write(boilerplateContent);
			
			</script>-->
			
			<script>
			
				var boilerplate = "<p><%# Eval("tbot_boilerplate").toString()%></p>";
				
				if (boilerplate == ""){
					
					
					boilerplate = "<p>Corporate members of the Toronto Region Board of Trade chose us as a trusted business partner to build the resources they need, enhance their profile and expand their influence.</p><p>The Toronto Region Board of Trade is one of the largest and most influential chambers of commerce in North America. Our constant flow of ideas, people and introductions to city-builders and government officials firmly roots us as connectors for─ and with─the business community. We act as catalysts for the region’s growth agenda, at home and on a global scale with our World Trade Centre Toronto franchise. Backed by more than 12,000 members, we advocate on their behalf for policy change that drives the growth and competitiveness of the Toronto region. We want Toronto to be recognized as one of the most competitive and sought after business regions in the world, and we believe this reputation starts with our members and their business.</p>";
				}
				
				document.write(boilerplate);
			
			</script>
		
		</div>
		
		<div class="membership_details_motw">
		
			<script>
			
				var motwURL = "<%#Eval("tbot_memberoftheweek").toString()%>";
				var motwURLContent = "<img src='"+motwURL+"'/>";
				
				if (motwURL == ""){
					
					motwURLContent = "<img src='https://www.bot.com/Portals/0/Images/Pages/memberDirectory/Member%20Directory_motw.jpg'/>";
				}
				
				document.write(motwURLContent);
			
			</script>
		
		</div>
		
	</div>
	
<%ElseIF Request("type").contains("Profile") Then%>

	<div class="membership_details_wrapper">
	
		<div class="membership_details_title_background">
		
			<h1 class="membership_details_title"><%# Eval("name").toString() %></%#></h1>
		
		</div>
		
		<div class="membership_details_desc">
		
			<div class="membership_details_desc_logo">
			
				<script>
				
					var imgURL = "<%# Eval("pa_companylogo").toString()%>";
					var imgContent = "<img src='/Portals/0/Images/memdir/profile/"+imgURL+"'/>";
					
					if (imgURL == ""){
						
						imgContent = "";
					}
					
					document.write(imgContent);
				
				</script>
			
			</div>
			
			<div class="membership_details_desc_information">
			
				<table>
				
					<tbody>
					
						<tr>
						
							<td>
							
								<ul>
								
									<li><h3>Website: </h3><a href='<%# iif(Eval("websiteurl").ToString().ToLower().StartsWith("http"), Eval("websiteurl").ToString(), "http://" + Eval("websiteurl").ToString()) %>' target="_blank"><%# Eval("websiteurl").toString()%></%#></a></li>
									<li><h3>Email: </h3><%# Eval("emailaddress1").toString() %></%#> </li>
									<li><h3>Phone: </h3><%# Eval("telephone1").toString() %></%#> </li>
								
								</ul>
							
							</td>
							
							<td>
							
								
								<ul>
								
									<li><h3>Contact Name: </h3><%# Eval("a_410707b195544cd984376608b1802904-firstname").toString() %> <%# Eval("a_410707b195544cd984376608b1802904-lastname").toString() %></%#> </li>
									<li><h3>Title: </h3><%# Eval("a_410707b195544cd984376608b1802904-jobtitle").toString() %></%#> </li>
									<li><h3>Email: </h3><a href='mailto:<%#Eval("a_410707b195544cd984376608b1802904-emailaddress1").toString()%>'><%# Eval("a_410707b195544cd984376608b1802904-emailaddress1").toString() %></%#></a> </li>
								
								</ul>
							
							</td>
							
						</tr>
					
					</tbody>
				
				</table>
				
				<div class="membership_details_industrycodes">
				
					<ul>
					
						<li><h3>Industry:</h3><%# iif(Eval("tbot_naicstierone").toString().length > 0, iif(Eval("tbot_naicstiertwo").toString().length > 0, iif(Eval("tbot_naicstierthree").toString().length > 0, Eval("tbot_naicstierone").toString() + " - " + Eval("tbot_naicstiertwo").toString() + " - " + Eval("tbot_naicstierthree").toString(), Eval("tbot_naicstierone").toString() + " - " + Eval("tbot_naicstiertwo").toString()), Eval("tbot_naicstierone").toString()), "")%></li>
					
					</ul>
				
				</div>
				
				<div class="membership_details_desc_footer">
			
					<div class="membership_details_desc_footer-social">
					
						<script>
						
							var twitURL = "<%# Eval("tbot_twitter").toString() %>";
							var linkURL = "<%# Eval("tbot_linkedin").toString() %>";
							
							var twitContent = "<a href='"+twitURL+"' target='_blank'><i class='fa fa-twitter-square fa-2x' aria-hidden='true'></i></a>";
							var linkContent = "<a href='"+linkURL+"' target='_blank'><i class='fa fa-linkedin-square fa-2x' aria-hidden='true'></i></a>";
							
							if (twitURL == "") {
								
								twitContent = "";
							}
							
							if (linkURL == ""){
								
								linkContent = "";
							}
							
							document.write(twitContent);
							document.write(linkContent);
							
						</script>
					
					</div>
			
			</div>
			
			</div>
		
		</div>
		
		<div class="membership_details_boilerplate">
		
			<script>
			
				var boilerplate = "<%# Eval("tbot_boilerplate").toString()%>";
				var boilerplateContent = "<p>"+boilerplate+"</p>";
				
				if (boilerplate == ""){
					
					
					boilerplateContent = "<p>Corporate members of the Toronto Region Board of Trade chose us as a trusted business partner to build the resources they need, enhance their profile and expand their influence.</p><p>The Toronto Region Board of Trade is one of the largest and most influential chambers of commerce in North America. Our constant flow of ideas, people and introductions to city-builders and government officials firmly roots us as connectors for─ and with─the business community. We act as catalysts for the region’s growth agenda, at home and on a global scale with our World Trade Centre Toronto franchise. Backed by more than 12,000 members, we advocate on their behalf for policy change that drives the growth and competitiveness of the Toronto region. We want Toronto to be recognized as one of the most competitive and sought after business regions in the world, and we believe this reputation starts with our members and their business.</p>"
					
				}
				document.write(boilerplateContent);
			
			</script>
		
		</div>
		
	</div>


<%End IF%>