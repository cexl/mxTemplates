<div class="center">

    <a href='<%# iif(Eval("websiteurl").ToString().ToLower().StartsWith("http"), Eval("websiteurl").ToString(), "http://" + Eval("websiteurl").ToString()) %>' target="_blank">
        <!--<img src='/Resources/MX/Images/<%# Eval("pa_companylogo")%>'/> -->

        <%# IIf(Eval("pa_companylogo").ToString().Length > 0, "<img src='/Portals/0/Images/memdir/Influencer/" + Eval("pa_companylogo") + "' />", Eval("name"))%> 

</div>

