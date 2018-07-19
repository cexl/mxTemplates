<style>

    .trbot--events-detail {
        
        width:100%;
        border-spacing: 0px;
        border: 1px solid #0581CB;
    }
    
    .trbot--events-detail-headers {
        
        color: #fff;
        background-color: #0581CB;
		text-align: center;
    }
    
    .trbot--events-detail-headers td:first-of-type {
        
        text-align:left;
        padding-left: 15px;
    }
    .trbot--events-detail_data_row {
        
        text-align: center;
        font-weight: bold;
        padding: 15px !important;
        margin: 15px;
		border-bottom: 1px dashed gray;
        
    }
    .RadGrid_MXDefault {
        
        display:none;
    }
    
    .trbot--events-detail_data_row td:first-of-type {
        
        text-align: left;
        padding-left: 15px;
    }
	.trbot--events-detail_data_row td {
		
		padding: 10px;
	}
	
	.border-bottom {
		
		border-bottom: 1px dashed gray;
	}
	
	.border-bottom:last-of-type {border-bottom: none;}

</style>

    
<tr class="trbot--events-detail_data_row border-bottom">

    <td>

        <%# Eval("ah-name").ToString() %></%#>

    </td>
    <td>

        <%# Eval("ah-price").ToString() %></%#>

    </td>

    <td>

        <%# iif(Eval("ah-pa_secondaryglaccount").toString().Contains("ABF"), "N/A", iif(Eval("ah-pa_secondaryglaccount").toString().Contains("TRSM"), "N/A", Eval("pa_pricepercent"))) %>
        

    </td>

</tr>
