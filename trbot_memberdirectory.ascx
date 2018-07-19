<div class="member_directory_card_search">
	
	<a href='https://www.bot.com/Membership/ResourcesServices/MemberDirectory/Details.aspx?Accountid=<%# Eval("accountid").toString()%>&type=<%# Eval("defaultpricelevelid").toString()%>' target="_blank"> <%# IIf(Eval("pa_companylogo").ToString().Length > 0, "<img src='/Portals/0/Images/memdir/" + Eval("pa_companylogo") + "' />", Eval("name"))%> </a>
	
</div>