<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css" integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin="anonymous">
<style>

	.management_card {position: relative; max-width: 200px; display:inline-block; margin: 10px; height:250px;}
	.management_card_footer {position: absolute; bottom: 0px; width:200px; left:-10px; background-color: #004e94; opacity: 0.8; height: 30%;}
	.management_card_content {padding: 5px; color: white; text-align: center;}
	.management_card_name {font-weight: bold;}
	.management_card_title {;}
	.management_card_contact {line-height: 20px; vertical-align: middle;}
	.far, .fab {color: white; margin: 0px 2px;}
	.text-centered {text-align:center;}

</style>


<div class="management_card">

	<img src="https://placehold.it/180x250" height="250px" width="180px"/>
	<div class="management_card_footer">
	
		<div class="management_card_content">
		
			<div class="management_card_name">
			
				<%# Eval("a_28397391e30de0118e0b005056834d9b-firstname").toString() + " " + Eval ("a_28397391e30de0118e0b005056834d9b-lastname").toString()%></%#>
			
			</div>
			<div class="management_card_title">
			
				<%# Eval("a_28397391e30de0118e0b005056834d9b-jobtitle").toString()%></%#>
			
			</div>
			<div class="management_card_contact">
			
				<%# Eval("a_28397391e30de0118e0b005056834d9b-telephone1").toString()%></%#> | <a href='mailto:<%# iif(Eval("a_28397391e30de0118e0b005056834d9b-firstname").toString.Contains("Jan"), "contactus@bot.com", Eval("a_28397391e30de0118e0b005056834d9b-emailaddress1").toString())%>'><i class="far fa-envelope"></i></a>
			
			</div>
		
		</div>
	
	</div>

</div>