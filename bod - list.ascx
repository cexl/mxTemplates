<style>

    .tbot_bod_wrapper {
        
        width: 237px;
    }
    
    .tbot_description {
        
        min-height: 100px;
        max-height: 250px;
        height: 100px;
        vertical-align: middle;
        padding-top: 20px;
    }
    
    .tbot_center {
        
        text-align:center;
    }
    
    .tbot_thumbnails_bod {
        
        
        height: 210px;
        padding: 10px 0px;
    }
    
    .tbot_margin_padding {
        
        margin-top: 10px;
    }
    
    .tbot_name {
        
        padding-top: 10px;
        font-weight: bold;
        
    }

</style>
            <td class="tbot_bod_wrapper">
            
                <div class="tbot_center">
                
                   <h4 class="title-h4"><%# Eval("tbot_title").ToString() %></%#> </h4>
                    
                </div>
                
                <div class="tbot_center tbot_thumbnails_bod">
                
                    <%# IIf(Eval("tbot_image").ToString().Length > 0, "<img src='/portals/0/Images/Pages/governance/" + Eval("tbot_image") + "' class='bot-bod__thumbnails' />", Eval("tbot_image"))%> 
                
                </div>
                
                <div class="tbot_center tbot_margin-padding">
                
                    <div class="tbot_name">
                    
                        <%# Eval("a_28397391e30de0118e0b005056834d9b-firstname").ToString() %></%#> 
                        <%# Eval("a_28397391e30de0118e0b005056834d9b-lastname").ToString()%></%#>  
                    
                    </div>
                    
                    <div class="tbot_description">
                    
                        <p>
                        
                            <%# Eval("a_28397391e30de0118e0b005056834d9b-jobtitle").ToString() %>
                            
                            
                        </p>
                        
                        <p>
                            
                            <%# Eval("a_28397391e30de0118e0b005056834d9b-parentcustomerid").ToString %></%#>
                                
                        </p>

                    </div>
                
                </div>

                

            
            