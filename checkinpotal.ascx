<tr class="Events_calendar_content">

    <td>

        <%# DateTime.parse(Eval("pa_meetingstartdate").toString()).toString("MM/dd/yyy") %>

    </td>

    <td>

        <a href='/Events/Checkinportal/checkinguest?meetingid=<%#Eval("pa_eventmeetingsetupid")%>' target='_blank'><%# Eval("pa_eventmeetingidname").toString() %></a>

    </td>

    <td>

        <%# Eval("pa_wtopic").toString() %>

    </td>

</tr>
