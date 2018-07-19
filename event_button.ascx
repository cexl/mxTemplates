<style>

    .trbot-events_details-button {
        
        text-align:right;
    }
    
    .trbot_showrandom {
        
        float:left;
        display: none;
    }

</style>

<div class="trbot-events_details-button">

    <a class="btn btn-primary" href='/SelectRegistrationType.aspx?meetingid=<%# Eval("pa_eventmeetingsetupid").toString()%>'>Purchase Tickets</a>
    
    <div class="trbot_showrandom">
    
        <div style="margin: 0 auto; width: 300px; border: 1px solid #0581cb; margin-top: 20px;">
    
            <h3 class="title-h3" style="text-align:center;">For Non-Member Registration:</h3>

            <ul style="text-align:center;">

                <li style="list-style-type: none; text-align: left;  padding: 5px;">

                    Email - <a href="mailto:events@bot.com">Events@bot.com</a>

                </li>
                <li style="list-style-type: none; text-align: left; padding: 5px;">Or</li>
                <li style="list-style-type: none; text-align: left;  padding: 5px;">Call - 416.862.4500</li>

            </ul>

        </div>
    
    </div>
</div>


