<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">

<style>

	.body {width: 960px;}
	.bod_card {width:190px; height: 375px;  margin: 10px; display:inline-block; vertical-align: bottom; }
	.bod_card_content {background-color: white; text-align: center; vertical-align: text-bottom; height:30%;}
	.bod_card_image {text-align:center; padding-top:10px;}
	.bod_card_name {padding:5px; font-weight: bold;}
	.bod_card_desc {padding:5px;}
	.bod_card_title {margin-bottom: 10px; font-weight:bold; text-align: center;}
	.text-centered {text-align: center;}

</style>

	<div class="bod_card">
		<div class="bod_card_title"><%# Eval("tbot_title").toString()%></%#></div>
		<div class="bod_card_image">

			<img src='<%# Eval("tbot_image").toString()%>' height="184px" width="168px"/>

			</div>
		<div class="bod_card_content">

			<div class="bod_card_name"><%# Eval("a_28397391e30de0118e0b005056834d9b-firstname").toString() + " " + Eval ("a_28397391e30de0118e0b005056834d9b-lastname").toString()%></%#></div>
			<div class="bod_card_desc"><%# Eval("a_28397391e30de0118e0b005056834d9b-jobtitle").toString()%></%#><br /><%# Eval("a_28397391e30de0118e0b005056834d9b-parentcustomerid").toString()%></%#></div>
			<div class="bod_card_social"><a href='<%# Eval("a_28397391e30de0118e0b005056834d9b-tbot_linkedin").toString()%>' target="_blank"><i class="fab fa-linkedin"></i></a></div>

		</div>
	
	</div>