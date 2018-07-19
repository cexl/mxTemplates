<style>

    .exec_card {
        
        padding: 10px 0px !important;
    }

</style>

<div class="exec_card">
    
    <div class="exec_card__header">
    
        <strong><%# Eval("a_28397391e30de0118e0b005056834d9b-firstname").toString() + " " + Eval("a_28397391e30de0118e0b005056834d9b-lastname").toString() %></%#></strong>
    
    </div>
    
    <div class="exec_card__description">
    
        <%# Eval("a_28397391e30de0118e0b005056834d9b-jobtitle").toString()%>
    
    </div>
        
    <div class="exec_card__contact">
        
        <%# Eval("a_28397391e30de0118e0b005056834d9b-telephone1").toString() + " | " %> <a href='mailto:<%# iif(Eval("a_28397391e30de0118e0b005056834d9b-firstname").toString.Contains("Jan"), "contactus@bot.com", Eval("a_28397391e30de0118e0b005056834d9b-emailaddress1").toString())%>'>Email</a>
        
    </div>
        
    <div class="exec_card__biography">
    
        <a href='<%# iif(Eval("a_28397391e30de0118e0b005056834d9b-tbot_linkedin").toString() = "", "", Eval("a_28397391e30de0118e0b005056834d9b-tbot_linkedin").toString()) %>' target="_blank">Linkedin</a>
        
    </div>
    
</div>