<style>

	.trbot_namebadge_card {text-align: center; margin: 0% auto; padding: 50px!important; width: 30%; border: 1px dashed gray;}
	.trbot_namebadge_card--image {margin-bottom: 30px; margin-left: -10px;}
	.trbot-name_badge_card--separator{margin-top:10px; margin-bottom: 20px; border-bottom:1px solid gray;}
	
	.trbot_namebadge_card--name >  h1 {font-weight: bold !important; font-size: 24px !important;}
	.trbot_namebadge_card--company > h2 {font-weight: 500 !important; font-size: 20px !important;}

</style>

<div class="trbot_namebadge_card">

	<div class="trbot_namebadge_card--image">
	
		<img src="https://www.bot.com/portals/0/Images/TRBOT_LOGO_rgb.png"/>
	
	</div>
	
	<div class="trbot_namebadge_card--name">

		<h1><%# Eval("firstname").toString() + " " + Eval("lastname").toString()%></%#></h1>
	
	</div>
	<div class="trbot-name_badge_card--separator"></div>
	<div class="trbot_namebadge_card--company">
	
		<h2><%# Eval("parentcustomerid").toString()%></%#></h2>
	
	</div>
	
</div>