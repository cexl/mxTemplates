<script>

    $(".checkin_btn").click(function(){
        
        $(this).children('.checkin_btn_desc').addClass('checkinguest_confirmed');
        
        if ($(this).children('.checkin_btn_desc').hasClass('checkinguest_confirmed'))
            {
                
                $(this).children('._checkin_btn.desc').removeClass('checkinguest_confirmed');
            }
        
    });


</script>


<tr class="checkinguest_content">

    <td class="checkin_btn">
    
        <div class="checkin_btn_desc">
        
            <i class="fa fa-check-square" aria-hidden="true"></i>
            <strong>Check In</strong>
        
        </div>
    
    </td>
    
    <td>
    
        <%# Eval("tbot_firstname").toString()%></%#>
    
    </td>
    
    <td>
    
        <%# Eval("tbot_lastname").toString()%></%#>
    
    </td>
    
    <td>
    
        <%# Eval("tbot_accountid").toString()%></%#>
    
    </td>
    
    
    <td>
    
        <%# Eval("tbot_seatnumber").toString()%></%#>
    
    </td>

</tr>

