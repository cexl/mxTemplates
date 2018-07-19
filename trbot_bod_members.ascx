	<div class="bod_card">
	
		<div class="bod_card_image">

			<img src='<%# Eval("tbot_image").toString()%>' height="184px" width="168px"/>

			</div>
		<div class="bod_card_content">

			<div class="bod_card_name"><%# Eval("a_28397391e30de0118e0b005056834d9b-firstname").toString() + " " + Eval ("a_28397391e30de0118e0b005056834d9b-lastname").toString()%></%#></div>
			<div class="bod_card_desc"><%# Eval("a_28397391e30de0118e0b005056834d9b-jobtitle").toString()%></%#><br /><%# Eval("a_28397391e30de0118e0b005056834d9b-parentcustomerid").toString()%></%#></div>
			<div class="bod_card_social"><a href='<%# Eval("a_28397391e30de0118e0b005056834d9b-tbot_linkedin").toString()%>' target="_blank"><i class="fab fa-linkedin"></i></a></div>

		</div>
	
	</div>