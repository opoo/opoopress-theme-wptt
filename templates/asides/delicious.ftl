<#if site.delicious_user?? >
<#assign showDeliciousLinks = true>
<aside id="aside-delicious" class="widget widget_delicious">
    <h3 class="widget-title">On Delicious</h3>	
    <div id="delicious"></div>
    <p><a href="http://delicious.com/${ site.delicious_user }">My Delicious Bookmarks &raquo;</a></p>
</aside>
</#if>
