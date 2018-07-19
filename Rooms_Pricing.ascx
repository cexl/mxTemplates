<style>

    .details h3 {
        
        text-align:center;
        font-weight:bold;
        background-color: #0581cb;
        color: #fff !important;
        padding: 8px !important;
        
    }
    
    .GlobalFindProductTemplate_MXDefault {
        
        border: none !important;
    }

</style>

<div class="GlobalFindProductTemplate_MXDefault">
    <div class="details">
        <h3>
            <%# Eval("pa_productid").toString() %></h3>
        <ul class="pricing">
            <li><b>Members:</b> <%# Eval("aw-price", "{0:n2}")%></li>
            <li><b>Non-members:</b> <%# iif(Eval("pa_productid").toString().Contains("Hourly"), "N/A", Eval("pa_pricepercent", "{0:c}") ) %></li>
        </ul>
    </div>

</div>
