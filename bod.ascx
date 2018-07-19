<table class="bot-bod__table">

    <tr>
    
        <td>
        
            <%# IIf(Eval("tbot_image").ToString().Length > 0, "<img src='/portals/0/Images/Pages/governance/" + Eval("tbot_image") + "' class='bot-bod__thumbnails' />", Eval("tbot_image"))%> 
        
        </td>
        
        <td class='bot-bod__description'>
        
            <p>
            
                <strong><%# Eval("a_28397391e30de0118e0b005056834d9b-firstname").ToString() %> <%# Eval("a_28397391e30de0118e0b005056834d9b-lastname").ToString()%></strong>, <%# Eval("a_28397391e30de0118e0b005056834d9b-jobtitle").ToString()%>, <%# Eval("a_28397391e30de0118e0b005056834d9b-parentcustomerid").ToString()%></%#>
            
            </p>
                    
            <p>
            
                <%# Eval("tbot_webdescription").ToString()%></%#>
                    
            </p>
        
        </td>
    
    </tr>
    
</table>