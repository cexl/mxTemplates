
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
<script type="text/javascript" src="https://www.bot.com/resources/libraries/addeventatc/atc.min.js"></script>
<script type="text/javascript">
window.addeventasync = function(){
    addeventatc.settings({
        appleical  : {show:true, text:"Apple Calendar"},
        google     : {show:true, text:"Google <em>(online)</em>"},
        outlook    : {show:true, text:"Outlook"},
        outlookcom : {show:true, text:"Outlook.com <em>(online)</em>"},
        yahoo      : {show:true, text:"Yahoo <em>(online)</em>"}
    });
};
</script>
<style>

	.tbot-header-text, .tbot-header-wrapper {display: none !important;}
	.events_wrapper {width:100%; max-width:960px;}
	.events_hero {width:100%; max-width:960px; height: 250px; background: url('<%# Eval("tbot_herourl").toString()%>'); box-shadow: inset 0 0 15px #000000; position:relative;}
	.events_body{;}
	.events_title {background: rgba(0,51,141,0.8); color: #fff; padding: 20px 0px; font-size: 24px; margin-top: 40px;text-align: center; width:100%; max-width: 960px;}
	.events_details {margin-top: 20px; padding: 15px;}
	.events_details > ul > li {list-style: none;}
	.events_description {padding: 15px;;}
	.events_footer {background: url(''); text-align: center; width:100%; max-width:960px; height: 100px;}
	.fa, .far, .fas {padding-right:15px; margin-left:10px; padding-bottom: 5px; width: 30px; text-align:center; color: #E98300;}
	.btn-bar {text-align: center; margin: 10px 0px;}
	.btn-primary {background-color: #0581CB !important; color: #fff !important;}
	.btn-secondary {background-color: #E98300 !important; color: #fff !important;}
	.btn-success {background-color: #34B233; color: #fff;}
	.btn {padding: 12px 60px; text-align:center; text-decoration: none; cursor: pointer; font-size: 15px; display:inline-block; border: 1px solid #0581CB; border-radius:12px;}
	.btn:hover {background-color: #fff !important; color: #0581CB !important;}
	.mr-2 {margin-right:2px;}
	.mr-5 {margin-right:5px;}
	.mr-10 {margin-right: 10px;}
	.events-h3 {color: #fff !important; font-size:24px !important;}
	.events_sponsorbar {padding: 20px; text-align:center; margin: 20px 0px;}
	.trbot_spacer {margin: 20px 0px;}
	.showHide, .showHide_btn {display: none;}
	
	
	.addeventatc 							{width:150px;display:inline-block;position:relative;text-align:center;z-index:999998;background:#E98300;cursor:pointer;color:#fff!important;font-size:15px;text-decoration:none;padding:14px 20px 14px 15px; border-radius:12px;}
	.addeventatc:hover 						{color:#E98300 !important;font-size:15px;text-decoration:none;background-color:#fff;}
	.addeventatc:active 					{top:1px;}
	.addeventatc .arrow 					{width:15px;height:10px;position:absolute;top:50%;right:15px;margin-top:-5px;background:url(../gfx/icon-arrow-t1.png) no-repeat;}
	.addeventatc-selected 					{background-color:#E98300;}
	.addeventatc .start, .addeventatc .end, .addeventatc .timezone, .addeventatc .title, .addeventatc .description, .addeventatc .location, .addeventatc .organizer, .addeventatc .organizer_email, .addeventatc .facebook_event, .addeventatc .all_day_event, .addeventatc .date_format, .addeventatc .alarm_reminder, .addeventatc .recurring, .addeventatc .attendees, .addeventatc .calname, .addeventatc .uid, .addeventatc .status, .addeventatc .method, .addeventatc .client {display:none!important;}

	/* The drop down */
	.addeventatc_dropdown 					{width:215px;position:absolute;z-index:99999;padding:6px 0px 0px 0px;background:#fff;text-align:left;display:none;margin-top:2px;margin-left:-1px;border-top:1px solid #c8c8c8;border-right:1px solid #bebebe;border-bottom:1px solid #a8a8a8;border-left:1px solid #bebebe;-webkit-box-shadow:1px 3px 6px rgba(0,0,0,0.15);-moz-box-shadow:1px 3px 6px rgba(0,0,0,0.15);box-shadow:1px 3px 6px rgba(0,0,0,0.15);}
	.addeventatc_dropdown span 				{display:block;line-height:100%;background:#fff;text-decoration:none;font-size:14px;color:#333;padding:9px 10px 9px 40px;}
	.addeventatc_dropdown span:hover 		{background-color:#f4f4f4;color:#000;text-decoration:none;font-size:14px;}
	.addeventatc_dropdown em 				{color:#999!important;font-size:12px!important;}
	.addeventatc_dropdown .frs 				{background:#fff;color:#cacaca!important;cursor:pointer;font-size:9px!important;font-style:normal!important;font-weight:normal!important;line-height:110%!important;padding-left:10px;position:absolute;right:10px;text-align:right;text-decoration:none;top:5px;z-index:101;}
	.addeventatc_dropdown .frs:hover 		{color:#999!important;}
	.addeventatc_dropdown .copyx 			{height:21px;display:none;position:relative;cursor:default;}
	.addeventatc_dropdown .brx 				{height:1px;overflow:hidden;background:#e0e0e0;position:absolute;z-index:100;left:10px;right:10px;top:9px;}
	.addeventatc_icon atc_node {display none !important;}

</style>

<div class="events_wrapper">

	<div class="events_hero">
	
		<div class="events_title">
		
			<h3 class="events-h3"><%# Eval("pa_eventmeetingidname").toString()%></h3>
		
		</div>
	
	</div>
	
	<div class="events_body">
	
		<div class="events_details">
			
			<ul>
                
                <li>
                
                    <i class="far fa-calendar-alt"></i><strong>Event Date:</strong>
                    <script>
                                
                        var monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
                        var dayNames = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
                        var date = new Date("<%# Eval("pa_meetingstartdate")%>");
                        var month = date.getMonth();
                        var day = date.getDate();
                        var dayNum = date.getDay();
                        var year = date.getFullYear();
                        document.write(dayNames[dayNum] + ", " + monthNames[month] + " " + day + ", " + year);
                    
                    </script>
                
                </li>
                
                <li>
                
                    <i class="far fa-clock"></i><strong>Event Time: </strong>
                    <script>
                        
                        var startDate = new Date("<%# Eval("pa_meetingstartdate")%>");
                        var endDate = new Date("<%# Eval("pa_meetingenddate")%>");
                        
                        var sTime = startDate.format("hh:mm tt");
                        var eTime = endDate.format("hh:mm tt");
                    
                        document.write(sTime + " - " + eTime);
                        
                    </script>
                
                </li>
                
                <li>
                
                    <i class="far fa-clock"></i><strong>Registration:</strong>
                    <script>
                    
                        var regTime = new Date("<%# Eval("pa_regapplstartdate")%>");
                        var rTime = regTime.format("hh:mm tt");
                        document.write(rTime);
                    
                    </script>
                
                </li>
                
                <li>
                
                    <i class="fa fa-globe"></i><strong>Location: </strong><a href='https://www.google.ca/maps/place/<%# Eval("a_53d7a6e6e60de0118e0b005056834d9b-pa_addressline1")%>' target='_blank'><%# Eval("pa_locationid").toString() %></a>
                
                </li> 
                
                <li>
                
                    <i class="fas fa-map-marker-alt"></i><strong>Room: </strong><%# Eval("tbot_roominformation").toString() %>
                
                </li>
                
            </ul>
		
		</div>
		
		<div class="events_description">
		
			<p><%# Eval("pa_eventmeetingdescription").toString()%></p>
		
		</div>
		
		<div class="btn-bar">
		
			<span class="showHide_btn"><a class="btn btn-primary mr-10" href='<%# Eval("tbot_flyerurl").toString()%>' target="_blank">View Flyer</a></span>
			<div class="addeventatc">Add to Calendar
				<span class="start"><%# Eval("pa_meetingstartdate")%></span>
				<span class="end"><%# Eval("pa_meetingenddate")%></span>
				<span class="timezone">Canada/Toronto</span>
				<span class="title"><%# Eval("pa_eventmeetingidname").toString() %></span>
				<span class="description"><%# Eval("pa_eventmeetingdescription").toString() %></span>
				<span class="location"><%# Eval("a_53d7a6e6e60de0118e0b005056834d9b-pa_addressline1").toString() + " - " + Eval("pa_locationid").toString() %></span>
			</div>
		
		</div>
		<div class="events_sponsorbar">
		
			<img src='<%# Eval("tbot_sponsorlockupurl").toString()%>'/>
			
		</div>
	</div>
</div>