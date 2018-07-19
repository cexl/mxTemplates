<div class="_wrapper">

    <div class="_row">
    
        <div class="dateColumn _rowPadding">
    
            <%# Monthname(Month(Eval("pa_meetingstartdate"))).toString() %> <%# Day(Eval("pa_meetingstartdate")).toString() %> <%# Year(Eval("pa_meetingstartdate")).toString() %></%#>
    
        </div>
    
        <div class="EventTitleColumn _rowPadding">
    
         <a href='<%# Eval("tbot_websiteurl").toString() %>'><%# Eval("pa_eventid")%></a>
    
        </div>
    
    </div>

</div>