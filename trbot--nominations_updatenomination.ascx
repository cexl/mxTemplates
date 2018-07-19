
<tr>

	<td>

		<a href='MyNominations/UpdateNomination?nominationid=<%#Eval("tbot_nominationid")%>'>Click Here</a>

	</td>

	<td>

		<%# Eval("tbot_nomineecompanyname").toString() %>

	</td>

	<td>

		<%# Eval("tbot_nomineecontactperson").toString() %>

	</td>

	<td>

		<%# Eval("tbot_nomineeemail").toString() %>

	</td>

	<td>

		<a href='<%# IIf(Eval("tbot_nomineewebsiteurl").ToString().ToLower().StartsWith("http"), Eval("tbot_nomineewebsiteurl").ToString(), "http://" + Eval("tbot_nomineewebsiteurl").ToString()) %>'><%# Eval("tbot_nomineewebsiteurl").toString()%></a>

	</td>

</tr>